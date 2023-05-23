from util.mappings import *
from assembly_to_bytecode import *

REG_DATA = {}
MEMORY_MAPPING = {}

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

def process_r_instr(operation):
    # TODO: Deal with unsigned & Complete all functions
    global REG_DATA, MEMORY_MAPPING
    rs = (REG_DATA["IR"] & 0x03E00000) >> 21
    rt = (REG_DATA["IR"] & 0x001F0000) >> 16
    rd = (REG_DATA["IR"] & 0x0000F800) >> 11
    shamt = (REG_DATA["IR"] & 0x000007C0) >> 6
    print(f'R-type instr: op : {operation}, rs : {rs}, rt : {rt}, rd : {rd}, shamt : {shamt}')
    REG_DATA["PC"] += 4
    if operation == "add":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = REG_DATA[REVERSE_REGISTER_MAPPING[rs]] + REG_DATA[REVERSE_REGISTER_MAPPING[rt]]
    elif operation == "addu":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = REG_DATA[REVERSE_REGISTER_MAPPING[rs]] + REG_DATA[REVERSE_REGISTER_MAPPING[rt]]
    elif operation == "sub":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = REG_DATA[REVERSE_REGISTER_MAPPING[rs]] - REG_DATA[REVERSE_REGISTER_MAPPING[rt]]
    elif operation == "subu":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = REG_DATA[REVERSE_REGISTER_MAPPING[rs]] - REG_DATA[REVERSE_REGISTER_MAPPING[rt]]
    elif operation == "slt":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = 1 if REG_DATA[REVERSE_REGISTER_MAPPING[rs]] < REG_DATA[REVERSE_REGISTER_MAPPING[rt]] else 0
    elif operation == "sltu":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = 1 if REG_DATA[REVERSE_REGISTER_MAPPING[rs]] < REG_DATA[REVERSE_REGISTER_MAPPING[rt]] else 0
    elif operation == "and":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = REG_DATA[REVERSE_REGISTER_MAPPING[rs]] & REG_DATA[REVERSE_REGISTER_MAPPING[rt]]
    elif operation == "or":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = REG_DATA[REVERSE_REGISTER_MAPPING[rs]] | REG_DATA[REVERSE_REGISTER_MAPPING[rt]]
    elif operation == "xor":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = REG_DATA[REVERSE_REGISTER_MAPPING[rs]] ^ REG_DATA[REVERSE_REGISTER_MAPPING[rt]]
    elif operation == "nor":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = ~(REG_DATA[REVERSE_REGISTER_MAPPING[rs]] | REG_DATA[REVERSE_REGISTER_MAPPING[rt]])
    elif operation == "movn":
        if REG_DATA[REVERSE_REGISTER_MAPPING[rt]] != 0:
            REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = REG_DATA[REVERSE_REGISTER_MAPPING[rs]]
    elif operation == "sll":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = REG_DATA[REVERSE_REGISTER_MAPPING[rs]] << shamt
    elif operation == "srl":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = REG_DATA[REVERSE_REGISTER_MAPPING[rs]] >> shamt
    elif operation == "sra":
        pass
    elif operation == "sllv":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = REG_DATA[REVERSE_REGISTER_MAPPING[rs]] << REG_DATA[REVERSE_REGISTER_MAPPING[rt]]
    elif operation == "srlv":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = REG_DATA[REVERSE_REGISTER_MAPPING[rs]] >> REG_DATA[REVERSE_REGISTER_MAPPING[rt]]
    elif operation == "srav":
        pass
    elif operation == "jr":
        REG_DATA["PC"] = REG_DATA[REVERSE_REGISTER_MAPPING[rs]]
    elif operation == "jalr":
        REG_DATA["$ra"] = REG_DATA["PC"]
        REG_DATA["PC"] = REG_DATA[REVERSE_REGISTER_MAPPING[rs]]
    else:
        print(f"Invalid / Unimplemented operation - {operation}")
    REG_DATA["$zero"] = 0

def process_i_instr(operation):
    # TODO: Re-check all functions and Deal with negative and unsigned and data cases
    global REG_DATA, MEMORY_MAPPING
    rs = (REG_DATA["IR"] & 0x03E00000) >> 21
    rd = (REG_DATA["IR"] & 0x001F0000) >> 16
    im = (REG_DATA["IR"] & 0x0000FFFF)
    print(f'I-type instr: op : {operation}, rs : {rs}, rd : {rd}, im : {im}')
    REG_DATA["PC"] += 4
    if operation == "addi":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = REG_DATA[REVERSE_REGISTER_MAPPING[rs]] + parse_immediate_val(im)
    elif operation == "addiu":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = REG_DATA[REVERSE_REGISTER_MAPPING[rs]] + parse_immediate_val(im)
    elif operation == "slti":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = 1 if (REG_DATA[REVERSE_REGISTER_MAPPING[rs]] < parse_immediate_val(im)) else 0
    elif operation == "sltiu":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = 1 if (REG_DATA[REVERSE_REGISTER_MAPPING[rs]] < parse_immediate_val(im)) else 0
    elif operation == "andi":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = REG_DATA[REVERSE_REGISTER_MAPPING[rs]] & im
    elif operation == "ori":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = REG_DATA[REVERSE_REGISTER_MAPPING[rs]] | im
    elif operation == "xori":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = REG_DATA[REVERSE_REGISTER_MAPPING[rs]] ^ im
    elif operation == "lui":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = im << 16
    elif operation == "lw":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = MEMORY_MAPPING[REG_DATA[REVERSE_REGISTER_MAPPING[rs]] + parse_immediate_val(im)]
    elif operation == "sw":
        MEMORY_MAPPING[REG_DATA[REVERSE_REGISTER_MAPPING[rs]] + parse_immediate_val(im)] = REG_DATA[REVERSE_REGISTER_MAPPING[rd]]
    elif operation == "lb":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = MEMORY_MAPPING[REG_DATA[REVERSE_REGISTER_MAPPING[rs]] + parse_immediate_val(im)]
    elif operation == "lbu":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = MEMORY_MAPPING[REG_DATA[REVERSE_REGISTER_MAPPING[rs]] + parse_immediate_val(im)]
    elif operation == "sb":
        MEMORY_MAPPING[REG_DATA[REVERSE_REGISTER_MAPPING[rs]] + parse_immediate_val(im)] = REG_DATA[REVERSE_REGISTER_MAPPING[rd]]
    elif operation == "beq" and REG_DATA[REVERSE_REGISTER_MAPPING[rd]] == REG_DATA[REVERSE_REGISTER_MAPPING[rs]]:
        REG_DATA["PC"] = REG_DATA["PC"] + parse_immediate_val(im)
    elif operation == "bne" and REG_DATA[REVERSE_REGISTER_MAPPING[rd]] != REG_DATA[REVERSE_REGISTER_MAPPING[rs]]:
        REG_DATA["PC"] = REG_DATA["PC"] + parse_immediate_val(im)
    elif operation == "bgez" and REG_DATA[REVERSE_REGISTER_MAPPING[rs]] >= 0:
        REG_DATA["PC"] = REG_DATA["PC"] + parse_immediate_val(im)
    elif operation == "bgtz" and REG_DATA[REVERSE_REGISTER_MAPPING[rs]] > 0:
        REG_DATA["PC"] = REG_DATA["PC"] + parse_immediate_val(im)
    elif operation == "blez" and REG_DATA[REVERSE_REGISTER_MAPPING[rs]] <= 0:
        REG_DATA["PC"] = REG_DATA["PC"] + parse_immediate_val(im)
    elif operation == "bltz" and REG_DATA[REVERSE_REGISTER_MAPPING[rs]] < 0:
        REG_DATA["PC"] = REG_DATA["PC"] + parse_immediate_val(im)
    else:
        print(f"Invalid / Unimplemented operation - {operation}")
    REG_DATA["$zero"] = 0

def process_j_instr(operation):
    # TODO: Complete this
    global REG_DATA, MEMORY_MAPPING
    addr = REG_DATA["IR"] & 0x03FFFFFF
    print(f'J-type instr: op : {operation}, addr : {addr}')
    REG_DATA["PC"] += 4
    if operation == "j":
        REG_DATA["PC"] = addr
    elif operation == "jal":
        REG_DATA["$ra"] = REG_DATA["PC"]
        REG_DATA["PC"] = addr
    else:
        print(f"Invalid / Unimplemented operation - {operation}")
    REG_DATA["$zero"] = 0

def print_data():
    global REG_DATA, MEMORY_MAPPING
    print("Registers' data")
    print(REG_DATA)
    print("Memory Info")
    print(MEMORY_MAPPING)

def execute_code(memory_mapping, main_program_counter, program_instructions, encoded_instructions):
    global REG_DATA, MEMORY_MAPPING
    MEMORY_MAPPING  = memory_mapping
    REG_DATA["PC"] = main_program_counter
    # Assuming the threshold of instructions is 4096
    while REG_DATA["PC"] in program_instructions:
        curr_instr = REG_DATA["PC"]
        REG_DATA["IR"] = program_instructions[curr_instr]
        print(f"Instruction - {encoded_instructions[curr_instr]}")
        print(f"Bytecode - {REG_DATA['IR']:08x}")
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
            process_j_instr(operation)
        print_data()

def init_reg_data():
    global REG_DATA
    REG_DATA = {x: 0 for x in REGISTER_MAPPING}
    REG_DATA['$sp'] = STACK_POINTER_END
    REG_DATA['$fp'] = REG_DATA['$sp']

def run_vm(file):
    program_instructions, encoded_instructions, label_mapping, memory_mapping = assemble_file(file)
    init_reg_data()
    execute_code(memory_mapping, label_mapping['main'], program_instructions, encoded_instructions)

if __name__ == "__main__":
    test_dirs = sys.argv[1:]
    for test_dir in test_dirs:
        if os.path.isdir(test_dir):
            test_files = [os.path.join(test_dir, path) for path in os.listdir(test_dir)]
        else:
            test_files = [test_dir]
        for test_file in test_files:
            print(test_file)
            run_vm(test_file)
