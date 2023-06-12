from util.mappings import *
from util.common import *
from assembly_to_bytecode import *
from highlevel_to_assembly import *
import argparse
import sys

REG_DATA = {}
MEMORY_MAPPING = {}
STDOUT_VALUES = []
LABEL_MAPPING = {}


def get_operation_type():
    """
    params: None
    
    The function fetches the instruction by referring to the InstructionRegister(IR) and fetches the opcode.
    Based on the opcodes and other bit values, it returns the operation by reverse referencing the INSTRUCTION_MAPPING.
    
    returns: operation(str) - Eg: 'add', 'addi'
    """
    global REG_DATA
    rev_instr_mapping = {y: x for x, y in INSTRUCTION_MAPPING.items()}
    op = (REG_DATA["IR"] & 0xFC000000) >> 26
    # checking if they are R - instructions
    if op == 0:
        return rev_instr_mapping[(op, (REG_DATA["IR"] & 0x0000003F))]
    # This works because all the other instructions have different op codes
    if op == 1:
        # checking for bgez / bltz
        if (REG_DATA["IR"] & 0x01010000) == 0x01010000:
            return rev_instr_mapping[(op, 1)]
        else:
            return rev_instr_mapping[(op, 0)]
    return rev_instr_mapping[(op, None)]


def process_r_instr(operation):
    """
    param: operation(str) - string representing the operation to be performed.  Eg: add.
    
    The function fetches the operand and destination registers, performs the operation on the data held by the operand registers and 
    updates the value of the destination register. The register data is represented by REG_DATA.
    
    helper_functions:
    - convert_to_signed() - Converts the values stored in the registers to a signed value.
    
    returns: None
    """
    global REG_DATA, MEMORY_MAPPING
    rs = (REG_DATA["IR"] & 0x03E00000) >> 21
    rt = (REG_DATA["IR"] & 0x001F0000) >> 16
    rd = (REG_DATA["IR"] & 0x0000F800) >> 11
    shamt = (REG_DATA["IR"] & 0x000007C0) >> 6
    # print(f'R-type instr: op : {operation}, rs : {rs}, rt : {rt}, rd : {rd}, shamt : {shamt}')
    REG_DATA["PC"] += 4
    rs_data = convert_to_signed(REG_DATA[REVERSE_REGISTER_MAPPING[rs]])
    rt_data = convert_to_signed(REG_DATA[REVERSE_REGISTER_MAPPING[rt]])
    match operation:
        case "add":
            REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = rs_data + rt_data
        case "addu":
            REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = rs_data + rt_data
        case "sub":
            REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = rs_data - rt_data
        case "subu":
            REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = rs_data - rt_data
        case "mul":
            REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = rs_data * rt_data
        case "div":
            REG_DATA["LO"] = rs_data // rt_data
            REG_DATA["HI"] = rs_data % rt_data
        case "slt":
            REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = 1 if (rs_data < rt_data) else 0
        case "sltu":
            REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = 1 if (rs_data < rt_data) else 0
        case "and":
            # TODO: Deal with unsigned
            REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = rs_data & rt_data
        case "or":
            REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = rs_data | rt_data
        case "xor":
            REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = rs_data ^ rt_data
        case "nor":
            REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = ~(rs_data | rt_data)
        case "movn":
            if rt_data != 0:
                REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = rs_data
        case "sll":
            REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = rt_data << shamt
        case "srl":
            REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = rt_data >> shamt
        case "sra":
            # TODO: Sign should be preserved
            REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = rt_data >> shamt
        case "sllv":
            REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = rt_data << rs_data
        case "srlv":
            REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = rt_data >> rs_data
        case "srav":
            # TODO: Sign should be preserved
            REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = rt_data >> rs_data
        case "jr":
            REG_DATA["PC"] = rs_data
        case "jalr":
            REG_DATA["$ra"] = REG_DATA["PC"]
            REG_DATA["PC"] = rs_data
        case "mflo":
            REG_DATA[REVERSE_REGISTER_MAPPING[rs]] = REG_DATA["LO"]
        case "mfhi":
            REG_DATA[REVERSE_REGISTER_MAPPING[rs]] = REG_DATA["HI"]
        case default:
            print(f"Invalid / Unimplemented - J operation - {operation}")
    REG_DATA["$zero"] = 0


def process_i_instr(operation):
    """
    param: operation(str) - string representing the operation to be performed.  Eg: addi, lwl.
    
    The function fetches the register operands and immediate value from the bytecode and performs the operation on the data held by the operand register and immediate value and 
    updates the value of the destination register. The register data is represented by REG_DATA.
    
    For the memory operations such as lwl, lwr etc, the operand register and immediate value is used to calculate the memory_location and 
    the dest register value is updated based on the data fetched from these memory locations.
    
    helper_functions:
    - convert_to_signed() - Converts the values stored in the registers to a signed value.
    - parse_immediate_val() - to get the signed value
    - replace_nth_byte() - To replace specific bytes of a register with the data stored in memory_location
    - get_int() - to get the integer data stored in memory
    
    returns: None
    """
    global REG_DATA, MEMORY_MAPPING
    rs = (REG_DATA["IR"] & 0x03E00000) >> 21
    rd = (REG_DATA["IR"] & 0x001F0000) >> 16
    im = REG_DATA["IR"] & 0x0000FFFF
    # print(f'I-type instr: op : {operation}, rs : {rs}, rd : {rd}, im : {im}')
    REG_DATA["PC"] += 4
    rs_data = convert_to_signed(REG_DATA[REVERSE_REGISTER_MAPPING[rs]])
    rd_data = convert_to_signed(REG_DATA[REVERSE_REGISTER_MAPPING[rd]])
    match operation:
        case "addi":
            REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = rs_data + parse_immediate_val(im)
        case "addiu":
            REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = rs_data + parse_immediate_val(im)
        case "slti":
            REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = (
                1 if (rs_data < parse_immediate_val(im)) else 0
            )
        case "sltiu":
            REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = (
                1 if (rs_data < parse_immediate_val(im)) else 0
            )
        case "andi":
            REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = rs_data & im
        case "ori":
            REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = rs_data | im
        case "xori":
            REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = rs_data ^ im
        case "lui":
            REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = im << 16
        case "lwr":
            offset = parse_immediate_val(im)
            memory_loc = rs_data + offset
            pos_in_4byte = offset % 4
            for pos in range(pos_in_4byte, -1, -1):
                REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = replace_nth_byte(
                    REG_DATA[REVERSE_REGISTER_MAPPING[rd]],
                    MEMORY_MAPPING[memory_loc - pos_in_4byte + pos],
                    pos_in_4byte - pos,
                )
        case "lwl":
            offset = parse_immediate_val(im)
            memory_loc = rs_data + offset
            pos_in_4byte = offset % 4
            for pos in range(pos_in_4byte, 4):
                REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = replace_nth_byte(
                    REG_DATA[REVERSE_REGISTER_MAPPING[rd]],
                    MEMORY_MAPPING[memory_loc - pos_in_4byte + pos],
                    3 - (pos - pos_in_4byte),
                )
        case "lh":
            memory_loc = rs_data + parse_immediate_val(im)
            REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = 1 << 32
            for pos in range(2):
                REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = replace_nth_byte(
                    REG_DATA[REVERSE_REGISTER_MAPPING[rd]],
                    MEMORY_MAPPING[memory_loc + pos],
                    1 - pos,
                )
        case "lhu":
            memory_loc = rs_data + parse_immediate_val(im)
            REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = 0
            for pos in range(2):
                REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = replace_nth_byte(
                    REG_DATA[REVERSE_REGISTER_MAPPING[rd]],
                    MEMORY_MAPPING[memory_loc + pos],
                    1 - pos,
                )
        case "lw":
            memory_loc = rs_data + parse_immediate_val(im)
            REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = get_int(MEMORY_MAPPING, memory_loc)
        case "lb":
            # this converts unset bits to 1
            memory_loc = rs_data + parse_immediate_val(im)
            REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = 1 << 32
            REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = replace_nth_byte(
                REG_DATA[REVERSE_REGISTER_MAPPING[rd]], MEMORY_MAPPING[memory_loc], 0
            )
        case "lbu":
            # this converts unset bits to 0
            memory_loc = rs_data + parse_immediate_val(im)
            REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = 0
            REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = replace_nth_byte(
                REG_DATA[REVERSE_REGISTER_MAPPING[rd]], MEMORY_MAPPING[memory_loc], 0
            )
        case "swr":
            offset = parse_immediate_val(im)
            memory_loc = rs_data + offset
            pos_in_4byte = offset % 4
            for pos in range(pos_in_4byte, -1, -1):
                MEMORY_MAPPING[memory_loc - pos_in_4byte + pos] = get_nth_byte(
                    rd_data, pos_in_4byte - pos
                )
        case "swl":
            offset = parse_immediate_val(im)
            memory_loc = rs_data + offset
            pos_in_4byte = offset % 4
            for pos in range(pos_in_4byte, 4):
                MEMORY_MAPPING[memory_loc - pos_in_4byte + pos] = get_nth_byte(
                    rd_data, 3 - (pos - pos_in_4byte)
                )
        case "sw":
            memory_loc = rs_data + parse_immediate_val(im)
            save_int(MEMORY_MAPPING, memory_loc, rd_data)
        case "sh":
            memory_loc = rs_data + parse_immediate_val(im)
            for pos in range(2):
                MEMORY_MAPPING[memory_loc + pos] = get_nth_byte(rd_data, 1 - pos)
        case "sb":
            memory_loc = rs_data + parse_immediate_val(im)
            MEMORY_MAPPING[memory_loc] = rd_data
        case "beq":
            if rd_data == rs_data:
                REG_DATA["PC"] = REG_DATA["PC"] + (parse_immediate_val(im) << 2)
        case "teq":
            if rd_data == rs_data:
                REG_DATA["PC"] = REG_DATA["PC"] + (parse_immediate_val(im) << 2)
        case "bne":
            if rd_data != rs_data:
                REG_DATA["PC"] = REG_DATA["PC"] + (parse_immediate_val(im) << 2)
        case "bgez":
            if rs_data >= 0:
                REG_DATA["PC"] = REG_DATA["PC"] + (parse_immediate_val(im) << 2)
        case "bgtz":
            if rs_data > 0:
                REG_DATA["PC"] = REG_DATA["PC"] + (parse_immediate_val(im) << 2)
        case "blez":
            if rs_data <= 0:
                REG_DATA["PC"] = REG_DATA["PC"] + (parse_immediate_val(im) << 2)
        case "bltz":
            if rs_data < 0:
                REG_DATA["PC"] = REG_DATA["PC"] + (parse_immediate_val(im) << 2)
        case default:
            print(f"Invalid / Unimplemented - I operation - {operation}")
    REG_DATA["$zero"] = 0


def process_j_instr(
    operation,
    file_inputs,
    print_int_func_addr,
    input_int_func_addr,
    print_int_array_func_addr,
    print_string_func_addr,
    print_char_func_addr,
    input_char_func_addr,
    get_string_func_addr,
    input_int_array_func_addr,
):
    """
    params: operation(str) - string representing the operation to be performed.  Eg: addi, lwl.
            file_inputs(List) - List of inputs to the program (command line). If no command line inputs are provided, this list would be empty.
            print_int_func_addr(int) - address of the function print_int()
            input_int_func_addr(int) - address of the function input_int()
            print_int_array_func_addr(int) - address of the function print_int_array()
            print_string_func_addr(int) - address of the function print_string()
            print_char_func_addr(int) - address of the function print_char()
            input_char_func_addr(int) - address of the function input_char()
            get_string_func_addr(int) - address of the function get_string()
            input_int_array_func_addr(int) - address of the function input_int_array()
    
    For 'j' instruction, the function updates the Program Counter to the jump address present in bytecode
    For 'jal' instruction, the function checks the address in the bycode with that of I/O function addresses.
    
    If there is a match:
        For Input functions:
            it either reads from the file_input if its not empty or takes input from the user at the runtime.
            Saves the value in the memory.
        For output functions:
            fetches the value from memory, then prints and appends the value to STD_OUT. 
    
    returns: None 
    """
    
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
            val = convert_to_signed(get_int(MEMORY_MAPPING, REG_DATA["$a0"]))
            print(val)
            STDOUT_VALUES.append(val)
        if addr == print_char_func_addr:
            ascii_val = MEMORY_MAPPING[REG_DATA["$a0"]]
            val = chr(ascii_val)
            print(val)
            STDOUT_VALUES.append(val)
        elif addr == print_int_array_func_addr:
            int_array_start_addr = REG_DATA["$a0"]
            array_length = REG_DATA["$a1"]
            for idx in range(array_length):
                val = convert_to_signed(
                    get_int(MEMORY_MAPPING, int_array_start_addr + (idx * 4))
                )
                print(val, end=" ")
                STDOUT_VALUES.append(val)
            print()
        elif addr == print_string_func_addr:
            string_start_addr = REG_DATA["$a0"]
            idx = 0
            reqd_str = ""
            while MEMORY_MAPPING[string_start_addr + idx] != 0:
                reqd_str += chr(MEMORY_MAPPING[string_start_addr + idx])
                idx += 1
            reqd_str = reqd_str.replace("\\n", "\n")
            reqd_str = reqd_str.replace("\\t", "\t")
            print(reqd_str, end="")
            STDOUT_VALUES.append(reqd_str)
        elif addr == input_int_func_addr:
            if len(file_inputs) == 0:
                input_val = int(input())
                file_inputs.append(input_val)
            value = int(file_inputs[0])
            save_int(MEMORY_MAPPING, REG_DATA["$a0"], value)
            file_inputs.pop(0)
        elif addr == input_char_func_addr:
            if len(file_inputs) == 0:
                input_val = input()
                file_inputs.append(input_val)
            value = ord(file_inputs[0])
            MEMORY_MAPPING[REG_DATA["$a0"]] = value
            file_inputs.pop(0)
        elif addr == get_string_func_addr:
            if len(file_inputs) == 0:
                input_str = input()
                new_inputs = [len(input_str) + 1] + [x for x in input_str + "\0"]
                file_inputs += new_inputs
        elif addr == input_int_array_func_addr:
            if len(file_inputs) == 0:
                input_str = input()
                new_inputs = [int(x) for x in input_str.split()]
                if len(new_inputs) != REG_DATA["$a1"]:
                    sys.exit(
                        f"Expected {REG_DATA['$a1']} integers but received {len(new_inputs)} instead"
                    )
                file_inputs += new_inputs
    elif operation not in INSTRUCTION_TYPES["J-type"]:
        print(f"Invalid / Unimplemented - J operation - {operation}")
    REG_DATA["$zero"] = 0


def print_data():
    # prints the register values and the memory data
    global REG_DATA, MEMORY_MAPPING
    print("Registers' data")
    print(REG_DATA)
    print("Memory Info")
    print(dict(sorted(MEMORY_MAPPING.items())))


def get_label_addr(func_name):
    #returns the address corresponding to the func_name label in LABEL_MAPPING 
    global LABEL_MAPPING
    labels = [key for key in LABEL_MAPPING if func_name in key]
    if len(labels):
        return LABEL_MAPPING[labels[0]]
    return None


def execute_code(
    memory_mapping,
    label_mapping,
    program_instructions,
    encoded_instructions,
    file_inputs,
):
    """
    params: 
        memory_mapping(Dict) - Dictionary that maps var address to their values.
        label_mapping(Dict) - Dictionary that maps label names to their instruction address
        program_instructions(Dict) - Dictionary that maps instruction address to bytecode and can be access through PC
        encoded_instructions(Dict) - Dictionary that maps instruction address to asm instruction
        file_inputs (List) - List of inputs to the program (command line). If no command line inputs are provided, this list would be empty.
    
    The executes every instruction represented in bytecode with the help of the following helper functions to fetch and process the operations. 
    It uses the function get_label_addr() to fetch the label address for I/O functions and these addresses are passed as arguments for process_j_instr() where the I/O handling takes place.
    
    helper_functions:
    - get_label_addr() - to get the function label address for I/O functions such as _input_int()etc 
    - get_operation_type() - to get the operation to be performed from the bytecode 
    - process_r_instr() - to process R-type instruction
    - process_i_instr() - to process I-type instruction
    - process_j_instr() - to process J-type instruction
    
      
    returns: 
    
    """
    global REG_DATA, MEMORY_MAPPING, LABEL_MAPPING, STDOUT_VALUES
    MEMORY_MAPPING = memory_mapping
    LABEL_MAPPING = label_mapping
    REG_DATA["PC"] = label_mapping["main"]
    print_int_func_addr = get_label_addr("_print_int")
    print_char_func_addr = get_label_addr("_print_char")
    input_int_func_addr = get_label_addr("_input_int")
    input_char_func_addr = get_label_addr("_input_char")
    get_string_func_addr = get_label_addr("_get_string")
    input_int_array_func_addr = get_label_addr("_input_int_array")
    print_int_array_func_addr = get_label_addr("_print_int_array")
    print_string_func_addr = get_label_addr("_print_string")
    while REG_DATA["PC"] in program_instructions:
        # print("Program Counter - ", REG_DATA["PC"])
        curr_instr = REG_DATA["PC"]
        REG_DATA["IR"] = program_instructions[curr_instr]
        # print(f"Instruction - {encoded_instructions[curr_instr]}")
        # print(f"Bytecode - {REG_DATA['IR']:08x}")
        # dealing with nop
        if REG_DATA["IR"] == 0:
            REG_DATA["PC"] += 4
            continue
        operation = get_operation_type()
        if operation in INSTRUCTION_TYPES["R-type"]:
            process_r_instr(operation)
        elif operation in INSTRUCTION_TYPES["I-type"]:
            process_i_instr(operation)
        else:
            process_j_instr(
                operation,
                file_inputs,
                print_int_func_addr,
                input_int_func_addr,
                print_int_array_func_addr,
                print_string_func_addr,
                print_char_func_addr,
                input_char_func_addr,
                get_string_func_addr,
                input_int_array_func_addr,
            )
        # print_data()
    return STDOUT_VALUES


def init_info_data():
    #initializes the Registers, memory_mapping and stdout_values
    global REG_DATA, MEMORY_MAPPING, STDOUT_VALUES
    REG_DATA = {}
    MEMORY_MAPPING = {}
    STDOUT_VALUES = []
    REG_DATA = {x: 0 for x in REGISTER_MAPPING}
    REG_DATA["$sp"] = STACK_POINTER_END
    REG_DATA["$fp"] = REG_DATA["$sp"]


def run_vm(file, file_inputs):
    """
    param: file(str) - The ASM file to be assembled and has to be executed. 
           file_inputs(List) - List of inputs to the program (command line). If no command line inputs are provided, this list would be empty.
    
    This function assembles the file and executes the bytecode by using the following helper functions. 
    
    helper_functions:
    assemble_file() - converts asm files to bytecodes and generates label_mapping, memory_mapping
    init_info_data() - initializes REG_DATA, Stack pointer REG_DATA["$sp"] and Frame pointer REG_DATA["$fp"]
    execute_code() - executes the bytecode generated by assemble_files. 
    
    return: stdout_vals(List) - that contains the values that VM wants to return to users.
    """
    (
        program_instructions,
        encoded_instructions,
        label_mapping,
        memory_mapping,
    ) = assemble_file(file)
    init_info_data()
    stdout_vals = execute_code(
        memory_mapping,
        label_mapping,
        program_instructions,
        encoded_instructions,
        file_inputs,
    )
    # print(f"Output - {stdout_vals}")
    return stdout_vals


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--source", help="source C++ file")
    parser.add_argument("--asm", help="ASM file")
    args = parser.parse_args()
    asm_file = ""
    if args.source is not None:
        asm_file = "/tmp/test_asm_file.asm"
        generate_asm_file(args.source, asm_file)
    if args.asm is not None:
        asm_file = args.asm
    if asm_file == "":
        print("ASM/Source file not given")
    else:
        run_vm(asm_file, [])
