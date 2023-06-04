from util.mappings import *
from assembly_to_bytecode import *

REG_DATA = {}
MEMORY_MAPPING = {}
STDOUT_VALUES = []

def get_operation_type():
    global REG_DATA
    rev_instr_mapping = {y:x for x, y in INSTRUCTION_MAPPING.items()}
    op = (REG_DATA["IR"] & 0xFC000000) >> 26
    # checking if they are R - instructions
    if op == 0:
        return rev_instr_mapping[(op,(REG_DATA["IR"] & 0x0000003F))]
    # This works because all the other instructions have different op codes
    if op == 1:
        # checking for bgez / bltz
        if (REG_DATA["IR"] & 0x01010000) == 0x01010000:
            return rev_instr_mapping[(op, 1)]
        else:
            return rev_instr_mapping[(op, 0)]
    return rev_instr_mapping[(op, None)]

def parse_immediate_val(im):
    # checking 16th bit of signed im value and converting to negative
    # if the least significant bit is set
    if (im & 0x8000) > 0:
        im = im - (1 << 16)
    return im

def convert_unsigned(val):
    # converts to an unsigned value - 32 bit
    if val < 0:
        val += (1 << 32)
    return val

def process_r_instr(operation):
    global REG_DATA, MEMORY_MAPPING
    rs = (REG_DATA["IR"] & 0x03E00000) >> 21
    rt = (REG_DATA["IR"] & 0x001F0000) >> 16
    rd = (REG_DATA["IR"] & 0x0000F800) >> 11
    shamt = (REG_DATA["IR"] & 0x000007C0) >> 6
    # print(f'R-type instr: op : {operation}, rs : {rs}, rt : {rt}, rd : {rd}, shamt : {shamt}')
    REG_DATA["PC"] += 4
    rs_data = REG_DATA[REVERSE_REGISTER_MAPPING[rs]]
    rt_data = REG_DATA[REVERSE_REGISTER_MAPPING[rt]]
    if operation == "add":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = rs_data + rt_data
    elif operation == "addu":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = rs_data + rt_data
    elif operation == "sub":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = rs_data - rt_data
    elif operation == "subu":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = rs_data - rt_data
    if operation == "mul":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = rs_data * rt_data
    if operation == "div":
        REG_DATA["LO"] = rs_data // rt_data
        REG_DATA["HI"] = rs_data % rt_data
    elif operation == "slt":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = 1 if (rs_data < rt_data) else 0
    elif operation == "sltu":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = 1 if (rs_data < rt_data) else 0
    elif operation == "and":
        # TODO: Deal with unsigned
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = rs_data & rt_data
    elif operation == "or":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = rs_data | rt_data
    elif operation == "xor":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = rs_data ^ rt_data
    elif operation == "nor":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = ~(rs_data | rt_data)
    elif operation == "movn":
        if rt_data != 0:
            REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = rs_data
    elif operation == "sll":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = rt_data << shamt
    elif operation == "srl":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = rt_data >> shamt
    elif operation == "sra":
        # TODO: Sign should be preserved
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = rt_data >> shamt
    elif operation == "sllv":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = rt_data << rs_data
    elif operation == "srlv":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = rt_data >> rs_data
    elif operation == "srav":
        # TODO: Sign should be preserved
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = rt_data >> rs_data
    elif operation == "jr":
        REG_DATA["PC"] = rs_data
    elif operation == "jalr":
        REG_DATA["$ra"] = REG_DATA["PC"]
        REG_DATA["PC"] = rs_data
    elif operation == "mflo":
        REG_DATA[REVERSE_REGISTER_MAPPING[rs]] = REG_DATA["LO"]
    elif operation == "mfhi":
        REG_DATA[REVERSE_REGISTER_MAPPING[rs]] = REG_DATA["HI"]
    elif operation not in INSTRUCTION_TYPES["R-type"]:
        print(f"Invalid / Unimplemented operation - {operation}")
    REG_DATA["$zero"] = 0

def process_i_instr(operation):
    # TODO: Re-check all functions and Deal with negative and unsigned and data cases
    global REG_DATA, MEMORY_MAPPING
    rs = (REG_DATA["IR"] & 0x03E00000) >> 21
    rd = (REG_DATA["IR"] & 0x001F0000) >> 16
    im = (REG_DATA["IR"] & 0x0000FFFF)
    # print(f'I-type instr: op : {operation}, rs : {rs}, rd : {rd}, im : {im}')
    REG_DATA["PC"] += 4
    rs_data = REG_DATA[REVERSE_REGISTER_MAPPING[rs]]
    rd_data = REG_DATA[REVERSE_REGISTER_MAPPING[rd]]
    if operation == "addi":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = rs_data + parse_immediate_val(im)
    elif operation == "addiu":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = rs_data + parse_immediate_val(im)
    elif operation == "slti":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = 1 if (rs_data < parse_immediate_val(im)) else 0
    elif operation == "sltiu":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = 1 if (rs_data < parse_immediate_val(im)) else 0
    elif operation == "andi":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = rs_data & im
    elif operation == "ori":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = rs_data | im
    elif operation == "xori":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = rs_data ^ im
    elif operation == "lui":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = im << 16
    elif operation == "lw":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = MEMORY_MAPPING[rs_data + parse_immediate_val(im)]
    elif operation == "sw":
        MEMORY_MAPPING[rs_data + parse_immediate_val(im)] = REG_DATA[REVERSE_REGISTER_MAPPING[rd]]
    elif operation == "lb":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = MEMORY_MAPPING[rs_data + parse_immediate_val(im)]
    elif operation == "lbu":
        # TODO: Handle this
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = MEMORY_MAPPING[rs_data + parse_immediate_val(im)]
    elif operation == "sb":
        MEMORY_MAPPING[rs_data + parse_immediate_val(im)] = rd_data
    elif (operation == "beq") and (rd_data == rs_data):
        REG_DATA["PC"] = REG_DATA["PC"] + (parse_immediate_val(im)<<2)
    elif (operation == "teq") and (rd_data == rs_data):
        REG_DATA["PC"] = REG_DATA["PC"] + (parse_immediate_val(im)<<2)
    elif (operation == "bne") and (rd_data != rs_data):
        REG_DATA["PC"] = REG_DATA["PC"] + (parse_immediate_val(im)<<2)
    elif (operation == "bgez") and (rs_data >= 0):
        REG_DATA["PC"] = REG_DATA["PC"] + (parse_immediate_val(im)<<2)
    elif (operation == "bgtz") and (rs_data > 0):
        REG_DATA["PC"] = REG_DATA["PC"] + (parse_immediate_val(im)<<2)
    elif (operation == "blez") and (rs_data <= 0):
        REG_DATA["PC"] = REG_DATA["PC"] + (parse_immediate_val(im)<<2)
    elif (operation == "bltz") and (rs_data < 0):
        REG_DATA["PC"] = REG_DATA["PC"] + (parse_immediate_val(im)<<2)
    elif operation not in INSTRUCTION_TYPES["I-type"]:
        print(f"Invalid / Unimplemented operation - {operation}")
    REG_DATA["$zero"] = 0

def process_j_instr(operation, print_int_func_addr, input_int_func_addr, file_inputs):
    # TODO: Complete this
    global REG_DATA, MEMORY_MAPPING, STDOUT_VALUES, LABEL_MAPPING
    addr = REG_DATA["IR"] & 0x03FFFFFF
    # print(f'J-type instr: op : {operation}, addr : {addr}')
    REG_DATA["PC"] += 4
    if operation == "j":
        REG_DATA["PC"] = addr
    elif operation == "jal":
        REG_DATA["$ra"] = REG_DATA["PC"]
        REG_DATA["PC"] = addr
        if addr == print_int_func_addr:
            STDOUT_VALUES.append(MEMORY_MAPPING[REG_DATA["$a0"]])
        elif addr == input_int_func_addr:
            MEMORY_MAPPING[REG_DATA["$a0"]] = int(file_inputs[0])
            file_inputs.pop(0)
    elif operation not in INSTRUCTION_TYPES["J-type"]:
        print(f"Invalid / Unimplemented operation - {operation}")
    REG_DATA["$zero"] = 0

def print_data():
    global REG_DATA, MEMORY_MAPPING
    print("Registers' data")
    print(REG_DATA)
    print("Memory Info")
    print(dict(sorted(MEMORY_MAPPING.items())))

def execute_code(memory_mapping, label_mapping, program_instructions, encoded_instructions, file_inputs):
    global REG_DATA, MEMORY_MAPPING, LABEL_MAPPING, STDOUT_VALUES
    MEMORY_MAPPING  = memory_mapping
    LABEL_MAPPING = label_mapping
    REG_DATA["PC"] = label_mapping['main']
    print_int_func_label = [key for key in LABEL_MAPPING if "_print_int" in key][0]
    print_int_func_addr = LABEL_MAPPING[print_int_func_label]
    input_int_func_label = [key for key in LABEL_MAPPING if "_input_int" in key][0]
    input_int_func_addr = LABEL_MAPPING[input_int_func_label]
    # Assuming the threshold of instructions is 4096
    while REG_DATA["PC"] in program_instructions:
        # print("Program Counter - ", REG_DATA["PC"])
        curr_instr = REG_DATA["PC"]
        REG_DATA["IR"] = program_instructions[curr_instr]
        # print(f"Instruction - {encoded_instructions[curr_instr]}")
        # print(f"Bytecode - {REG_DATA['IR']:08x}")
        # dealing with nop
        if REG_DATA['IR'] == 0:
            REG_DATA["PC"] += 4
            continue
        operation = get_operation_type()
        if operation in INSTRUCTION_TYPES["R-type"]:
            process_r_instr(operation)
        elif operation in INSTRUCTION_TYPES["I-type"]:
            process_i_instr(operation)
        else:
            process_j_instr(operation, print_int_func_addr, input_int_func_addr, file_inputs)
    # print_data()
    return STDOUT_VALUES

def init_info_data():
    global REG_DATA, MEMORY_MAPPING, STDOUT_VALUES
    REG_DATA = {}
    MEMORY_MAPPING = {}
    STDOUT_VALUES = []
    REG_DATA = {x: 0 for x in REGISTER_MAPPING}
    REG_DATA['$sp'] = STACK_POINTER_END
    REG_DATA['$fp'] = REG_DATA['$sp']

def run_vm(file, file_inputs):
    program_instructions, encoded_instructions, label_mapping, memory_mapping = assemble_file(file)
    init_info_data()
    stdout_vals = execute_code(memory_mapping, label_mapping, program_instructions, encoded_instructions, file_inputs)
    print(f"Output - {stdout_vals}")
    return stdout_vals

if __name__ == "__main__":
    # test_dirs = sys.argv[1:]
    # for test_dir in test_dirs:
    #     if os.path.isdir(test_dir):
    #         test_files = [os.path.join(test_dir, path) for path in os.listdir(test_dir)]
    #     else:
    #         test_files = [test_dir]
    #     for test_file in test_files:
    #         print(test_file)
    test_file = sys.argv[2]
    print("test file: ", test_file)
    file_inputs = sys.argv[4:]
    print("file inputs: ",file_inputs)
    run_vm(test_file, file_inputs)
