from util.mappings import *
from assembly_encoder import *

REG_DATA = {x: 0 for x in REGISTER_MAPPING}

def get_operation():
    rev_instr_mapping = {y:x for x, y in INSTRUCTION_MAPPING.items()}
    op = (REG_DATA["IR"] & 0xFC000000) >> 26
    # checking if they are R - instructions
    if op == 0:
        return rev_instr_mapping[(op,( REG_DATA["IR"] & 0x0000003F))]
    # This works because all the other instructions have different op codes
    if op == 1:
        # checking for bgez / bltz
        if (REG_DATA["IR"] & 0x01010000) == 0x01010000:
            return rev_instr_mapping[(op, 1)]
        else:
            return rev_instr_mapping[(op, 0)]
    return rev_instr_mapping[(op, None)]

def extend_sign(imm16):
    if imm16 & 0x00008000:
        imm16 |= 0xffff0000
    else:
        imm16 &= 0x0000ffff
    return imm16

def process_r_instr(operation):
    # TODO: Deal with unsigned & Complete all functions
    rs = (REG_DATA["IR"] & 0x03E00000) >> 21
    rt = (REG_DATA["IR"] & 0x001F0000) >> 16
    rd = (REG_DATA["IR"] & 0x0000F800) >> 11
    shamt = (REG_DATA["IR"] & 0x000007C0) >> 6
    print(f'R-type instr: op : {operation}, rs : {rs}, rt : {rt}, rd : {rd}, shamt : {shamt}')
    REG_DATA["PC"] += 1
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
    rs = (REG_DATA["IR"] & 0x03E00000) >> 21
    rd = (REG_DATA["IR"] & 0x001F0000) >> 16
    im = (REG_DATA["IR"] & 0x0000FFFF)
    print(f'I-type instr: op : {operation}, rs : {rs}, rd : {rd}, im : {im}')
    REG_DATA["PC"] += 1
    if operation == "addi":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = REG_DATA[REVERSE_REGISTER_MAPPING[rs]] + extend_sign(im)
    elif operation == "addiu":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = REG_DATA[REVERSE_REGISTER_MAPPING[rs]] + extend_sign(im)
    elif operation == "slti":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = 1 if (REG_DATA[REVERSE_REGISTER_MAPPING[rs]] < extend_sign(im)) else 0
    elif operation == "sltiu":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = 1 if (REG_DATA[REVERSE_REGISTER_MAPPING[rs]] < extend_sign(im)) else 0
    elif operation == "andi":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = REG_DATA[REVERSE_REGISTER_MAPPING[rs]] & im
    elif operation == "ori":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = REG_DATA[REVERSE_REGISTER_MAPPING[rs]] | im
    elif operation == "xori":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = REG_DATA[REVERSE_REGISTER_MAPPING[rs]] ^ im
    elif operation == "lui":
        REG_DATA[REVERSE_REGISTER_MAPPING[rd]] = im << 16
    elif operation == "lw":
        pass
    elif operation == "sw":
        pass
    elif operation == "lb":
        pass
    elif operation == "lbu":
        pass
    elif operation == "sb":
        pass
    elif operation == "beq" and REG_DATA[REVERSE_REGISTER_MAPPING[rd]] == REG_DATA[REVERSE_REGISTER_MAPPING[rs]]:
        REG_DATA["PC"] = REG_DATA["PC"] + extend_sign(im)
    elif operation == "bne" and REG_DATA[REVERSE_REGISTER_MAPPING[rd]] != REG_DATA[REVERSE_REGISTER_MAPPING[rs]]:
        REG_DATA["PC"] = REG_DATA["PC"] + extend_sign(im)
    elif operation == "bgez" and REG_DATA[REVERSE_REGISTER_MAPPING[rs]] >= 0:
        REG_DATA["PC"] = REG_DATA["PC"] + extend_sign(im)
    elif operation == "bgtz" and REG_DATA[REVERSE_REGISTER_MAPPING[rs]] > 0:
        REG_DATA["PC"] = REG_DATA["PC"] + extend_sign(im)
    elif operation == "blez" and REG_DATA[REVERSE_REGISTER_MAPPING[rs]] <= 0:
        REG_DATA["PC"] = REG_DATA["PC"] + extend_sign(im)
    elif operation == "bltz" and REG_DATA[REVERSE_REGISTER_MAPPING[rs]] < 0:
        REG_DATA["PC"] = REG_DATA["PC"] + extend_sign(im)
    else:
        print(f"Invalid / Unimplemented operation - {operation}")
    REG_DATA["$zero"] = 0

def process_j_instr(operation):
    # TODO: Complete this
    addr = REG_DATA["IR"] & 0x03FFFFFF
    print(f'J-type instr: op : {operation}, addr : {addr}')
    REG_DATA["PC"] += 1
    if operation == "j":
        REG_DATA["PC"] = addr
    elif operation == "jal":
        REG_DATA["$ra"] = REG_DATA["PC"]
        REG_DATA["PC"] = addr
    else:
        print(f"Invalid / Unimplemented operation - {operation}")
    REG_DATA["$zero"] = 0

def print_reg_data():
    print(REG_DATA)

def process(instructions):
    REG_DATA["PC"] = 0
    # Assuming the threshold of instructions is 4096
    while REG_DATA["PC"] < 4096 and REG_DATA["PC"] < len(instructions):
        REG_DATA["IR"] = instructions[REG_DATA["PC"]]
        print(f"Processing - {REG_DATA['IR']:08x}")
        operation = get_operation()
        if operation in INSTRUCTION_TYPES["R-type"]:
            process_r_instr(operation)
        elif operation in INSTRUCTION_TYPES["I-type"]:
            process_i_instr(operation)
        else:
            process_j_instr(operation)
        print_reg_data()

if __name__ == "__main__":
    test_file = "test/medium/loop.asm"
    instructions = assemble_file(test_file)
    process(instructions)
