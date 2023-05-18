from util.mappings import REGISTER_MAPPING, INSTRUCTION_CLASSIFICATION, INSTRUCTION_MAPPING

MEMORY = {}
LABEL_MAPPING = {}

def encode_r_type(op, rs, rt, rd, shamt, funct):
    instruction = op << 26 | rs << 21 | rt << 16 | rd << 11 | shamt << 6 | funct
    return instruction

def encode_i_type(op, rs, rd, im):
    # converting negative value to signed 16 bit integer
    if im < 0:
        im = (1 << 16) + im
    instruction = op << 26 | rs << 21 | rd << 16 | im
    return instruction

def encode_j_type(op, address):
    instruction = op << 26 | address
    return instruction

def get_register(reg_str):
    return REGISTER_MAPPING[reg_str]

def get_immediate_val(imm_str):
    return int(imm_str) if "x" not in imm_str else int(imm_str, 16)

def get_mem(addr_str):
    return MEMORY[addr_str]

def set_mem(addr_str, val):
    MEMORY[addr_str] = val

def label_to_offset(label, program_counter):
    # Implement your logic to calculate the offset here
    return label_to_program_counter(label) - program_counter - 1

def label_to_program_counter(label):
    # Implement your logic to retrieve the address for the label here
    return LABEL_MAPPING[label]

def assemble_instruction(instr_segments, program_counter):
    operation = instr_segments[0]
    # print(f"Parsing {operation} instruction")
    opcode, funct = INSTRUCTION_MAPPING[operation]
    # Parsing
    # R - type
    # Basic
    if operation in INSTRUCTION_CLASSIFICATION["R-type"]["basic"]:
        rd = get_register(instr_segments[1])
        rs = get_register(instr_segments[2])
        rt = get_register(instr_segments[3])
        shamt = 0
        return encode_r_type(opcode, rs, rt, rd, shamt, funct)
    # Zero rs
    if operation in INSTRUCTION_CLASSIFICATION["R-type"]["zero_rs"]:
        rd = get_register(instr_segments[1])
        rt = get_register(instr_segments[2])
        shamt = get_register(instr_segments[3])
        return encode_r_type(opcode, 0, rt, rd, shamt, funct)
    # Jump
    if operation in INSTRUCTION_CLASSIFICATION["R-type"]["jump"]:
        rs = get_register(instr_segments[1])
        if operation == "jr":
            return encode_r_type(opcode, rs, 0, 0, 0, funct)
        else: # Note this is jalr
            return encode_r_type(opcode, 0, 0, 31, 0, funct)
    # I - type
    # Basic
    if operation in INSTRUCTION_CLASSIFICATION["I-type"]["basic"]:
        rd = get_register(instr_segments[1])
        rs = get_register(instr_segments[2])
        im = get_immediate_val(instr_segments[3])
        return encode_i_type(opcode, rs, rd, im)
    # Memory
    if operation in INSTRUCTION_CLASSIFICATION["I-type"]["memory"]:
        rd = get_register(instr_segments[1])
        if operation == "lui":
            im = get_immediate_val(instr_segments[3])
            return encode_i_type(opcode, 0, rd, im)
        else:
            offset = int(instr_segments[2].split("(")[0])
            rs = get_register(instr_segments[2].split("(")[1].strip(")"))
            return encode_i_type(opcode, rs, rd, offset)
    # Branch
    if operation in INSTRUCTION_CLASSIFICATION["I-type"]["branch"]:
        rs = get_register(instr_segments[1])
        if operation in ["beq", "bne"]:
            rd = rs
            rs = get_register(instr_segments[2])
        elif operation in ["bgez"]:
            rd = 1
        else:
            rd = 0
        label = instr_segments[-1]
        offset = label_to_offset(label, program_counter)
        return encode_i_type(opcode, rs, rd, offset)
    # J - type
    # Basic
    if operation in INSTRUCTION_CLASSIFICATION["J-type"]["basic"]:
        address = label_to_program_counter(instr_segments[1])
        return encode_j_type(opcode, address)

def compute_label_loc(file_path):
    program_counter = -1
    with open(file_path, "r") as lines:
        for line in lines:
            # Remove leading/trailing whitespaces/comments/commas
            line = line.split("#")[0].strip()
            line = line.replace(",", " ")
            if ":" in line:
                LABEL_MAPPING[line.split(":")[0]] = program_counter + 1
                line = line.split(":")[1]
            if not len(line):
                continue
            program_counter += 1
    return program_counter

def assemble_file(file_path):
    compute_label_loc(file_path)
    # print(LABEL_MAPPING)
    ans = []
    program_counter = 0
    with open(file_path, "r") as lines:
        for line in lines:
            # Remove leading/trailing whitespaces/comments/commas
            line = line.split("#")[0].strip()
            line = line.replace(",", " ").replace("$0", "$zero")
            if ":" in line:
                line = line.split(":")[1]
            if not len(line):
                continue
            instruction_segments = line.split()
            instruction_bytecode = assemble_instruction(instruction_segments, program_counter)
            # print(f"{instruction_bytecode:08x}")
            ans.append(instruction_bytecode)
            program_counter += 1
    return ans


# print(f'{assemble_instruction(["addi", "$t2", "$s1", "40"]):08x}')
# print(f'{assemble_instruction(["addi", "$t1", "$zero", "0xaa"]):08x}')

test_file = "tests/easy/manual_sum.asm"
bytecode = assemble_file(test_file)
for instruction in bytecode:
    print(f"{instruction:08x}")