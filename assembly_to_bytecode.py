from util.mappings import *
from util.common import *
import sys
import os
import re

"""
The directives in the IGNORE_COMMANDS are ignored and are not processed as part of assembler.
"""
IGNORE_COMMANDS = [
    ".text",
    ".abicalls",
    ".option",
    ".nan",
    ".file",
    ".globl",
    ".p2align",
    ".type",
    ".set",
    ".ent",
    ".end",
    ".size",
    ".ident",
    ".addrsig",
    ".addrsig_sym",
    ".frame",
    ".mask",
    ".fmask",
    ".cfi_def_cfa_register",
    ".cfi_startproc",
    ".cfi_def_cfa_offset",
    ".cfi_offset",
    ".cfi_endproc",
]
"""
The following directives are parsed to handle data.
"""
TODO_COMMANDS = [".section", ".data", ".4byte", ".asciz"]

"""
Returns byte-code for R-type instruction
"""
def encode_r_type(op, rs, rt, rd, shamt, funct):
    # print(
    #     f"opcode: {op:0x}, rs: {rs:0x}, rt: {rt:0x}, rd: {rd:0x}, shamt: {shamt:0x}, funct: {funct:0x}"
    # )
    instruction = op << 26 | rs << 21 | rt << 16 | rd << 11 | shamt << 6 | funct
    return instruction

"""
Returns byte-code for I-type instruction
"""
def encode_i_type(op, rs, rd, im):
    # print(f"opcode: {op:0x}, rs: {rs:0x}, rd: {rd:0x}, immediate_val: {im:0x}")
    # converting negative value to signed 16 bit integer
    if im < 0:
        im = (1 << 16) + im
    instruction = op << 26 | rs << 21 | rd << 16 | im
    return instruction

"""
Returns byte-code for J-type instruction
"""
def encode_j_type(op, address):
    # print(f"opcode: {op:0x}, address: {address:0x}")
    instruction = op << 26 | address
    return instruction


def get_register(reg_str):
    if reg_str in REGISTER_MAPPING:
        return REGISTER_MAPPING[reg_str]
    return REGISTER_MAPPING[REVERSE_REGISTER_MAPPING[int(reg_str.strip("$"))]]


def get_immediate_val(imm_str):
    return int(imm_str) if "x" not in imm_str else int(imm_str, 16)


def label_to_offset(label, program_counter, label_mapping):
    # Implement your logic to calculate the offset here
    return (
        (label_to_program_counter(label, label_mapping) >> 2)
        - (program_counter >> 2)
        - 1
    )


def label_to_program_counter(label, label_mapping):
    # Implement your logic to retrieve the address for the label here
    return label_mapping.get(label, -1)


def assemble_instruction(instr_segments, program_counter, label_mapping):
    operation = instr_segments[0]
    # handling nop instruction
    if operation == "nop":
        return 0
    # converting move to addu instruction
    # for e.g. move $rd, $rs -> addu $rd, $rs, $zero
    if operation == "move":
        operation = "addu"
        instr_segments.append("$zero")
    # converting bnez to bne instruction
    # for e.g. bnez $t0, label -> bne $t0, $zero, label
    if operation == "bnez":
        operation = "bne"
        instr_segments.insert(2, "$zero")
    # converting beqz to bne instruction
    # for e.g. beqz $t0, label -> beq $t0, $zero, label
    if operation == "beqz":
        operation = "beq"
        instr_segments.insert(2, "$zero")
    # print(f"Parsing {operation} instruction")
    opcode, funct = INSTRUCTION_MAPPING.get(operation, (None, None))
    # Parsing
    if opcode is None:
        sys.exit("invalid operation - {}".format(operation))
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
        if operation == "jalr":
            return encode_r_type(opcode, 0, 0, 31, 0, funct)
        else:
            return encode_r_type(opcode, rs, 0, 0, 0, funct)
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
            im = get_immediate_val(instr_segments[2])
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
        offset = label_to_offset(label, program_counter, label_mapping)
        return encode_i_type(opcode, rs, rd, offset)
    # J - type
    # Basic
    if operation in INSTRUCTION_CLASSIFICATION["J-type"]["basic"]:
        address = label_to_program_counter(instr_segments[1], label_mapping)
        if address == -1:
            return None
        return encode_j_type(opcode, address)


def preprocess_line(line):
    # Remove leading/trailing whitespaces/comments/commas
    line = line.split("#")[0].strip()
    for command in IGNORE_COMMANDS:
        if line.startswith(command):
            return ""
    return line


def preprocess_instructions(lines):
    label_mapping = {}
    memory_mapping = {}
    free_memory_pointer = MEMORY_POINTER_START
    next_program_counter = PROGRAM_COUNTER_START
    memory_read = False
    for line in lines:
        line = preprocess_line(line)
        if line.startswith(".section"):
            if line.split()[1].startswith(".rodata"):
                memory_read = True
            else:
                memory_read = False
            continue
        if line.startswith(".data"):
            memory_read = True
        if line.startswith(".4byte"):
            val = line.split()[1].strip()
            if val.isdigit():
                val = int(val)
            else:
                val = label_mapping[val.lstrip("(").rstrip(")")]
            if (val & 0x80000000) > 0:
                val = val - (1 << 32)
            save_int(memory_mapping, free_memory_pointer, val)
            free_memory_pointer += 4
            continue
        if line.startswith(".asciz"):
            val = line.split("	")[1].strip().replace('"', "")
            for char in val + "\0":
                memory_mapping[free_memory_pointer] = ord(char)
                free_memory_pointer += 1
            if free_memory_pointer % 4 != 0:
                free_memory_pointer = ((free_memory_pointer // 4) + 1) * 4
            continue
        if ":" in line:
            label = line.split(":")[0]
            if memory_read:
                label_mapping[label] = free_memory_pointer
            else:
                label_mapping[label] = next_program_counter
            line = line.split(":")[1].strip()
        if not len(line):
            continue
        if not memory_read:
            next_program_counter += 4
    return label_mapping, memory_mapping


def process_functions(line, label_mapping):
    label_matches = re.findall(r"%hi\((.*?)\)", line)
    for label in label_matches:
        val = (label_mapping[label] >> 16) & 0xFFFF
        line = line.replace("%hi({})".format(label), str(val))
    label_matches = re.findall(r"%lo\((.*?)\)", line)
    for label in label_matches:
        val = label_mapping[label] & 0xFFFF
        line = line.replace("%lo({})".format(label), str(val))
    return line


def assemble_instructions(lines):
    """
    params: line - List of asm instructions of a program.
    returns: 
            program_instructions - Dictionary that maps instruction address to bytecode ,
            encoded_instructions - Dictionary that maps instruction address to asm instruction
            label_mapping - Dictionary that maps label names to their instruction offset
            memory_mapping - Dictionary that maps var address to their values.
    """
    lines = lines.copy()
    encoded_instructions = {}
    program_instructions = {}
    label_mapping, memory_mapping = preprocess_instructions(lines)
    # print(label_mapping, memory_mapping)
    program_counter = PROGRAM_COUNTER_START
    for line in lines:
        line = preprocess_line(line)
        line = process_functions(line, label_mapping)
        if ":" in line:
            line = line.split(":")[1]
        if line.startswith(".section	.rodata"):
            break
        elif line.startswith(".section"):
            line = ""
        elif line.startswith(".data"):
            break
        if not len(line):
            continue
        # removing commas in the instructions
        line = line.replace(",", " ").strip()
        instruction_segments = line.split()
        instruction_bytecode = assemble_instruction(
            instruction_segments, program_counter, label_mapping
        )
        if instruction_bytecode is None:
            continue
        # print(line)
        # print(f"{line} ====> {instruction_bytecode:08x}")
        program_instructions[program_counter] = instruction_bytecode
        encoded_instructions[program_counter] = line
        # memory_mapping[program_counter] = instruction_bytecode
        program_counter += 4
    return program_instructions, encoded_instructions, label_mapping, memory_mapping


def assemble_file(file_path):
    """
    param: file_path(str) - asm file to be assembled
    return:
                program_instructions - Dictionary that maps instruction address to bytecode ,
                encoded_instructions - Dictionary that maps instruction address to asm instruction
                label_mapping - Dictionary that maps label names to their instruction offset
                memory_mapping - Dictionary that maps var address to their values.
    """
    with open(file_path, "r") as lines:
        return assemble_instructions(list(lines))


if __name__ == "__main__":
    test_dirs = sys.argv[1:]
    for test_dir in test_dirs:
        if os.path.isdir(test_dir):
            test_files = [os.path.join(test_dir, path) for path in os.listdir(test_dir)]
        else:
            test_files = [test_dir]
        for test_file in test_files:
            # print("FileName: ", test_file)
            (
                program_instructions,
                encoded_instructions,
                label_mapping,
                memory_mapping,
            ) = assemble_file(test_file)
            # for program_counter in program_instructions:
            #     print(f"{encoded_instructions[program_counter]}  ===> {program_instructions[program_counter]:08x}")
            print("LabelMapping: ", label_mapping)
            print("Memory Mapping: ", memory_mapping)
