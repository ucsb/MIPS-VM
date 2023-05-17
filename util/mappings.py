REGISTER_MAPPING = {
    "$zero": 0,
    "$at": 1,
    "$v0": 2,
    "$v1": 3,
    "$a0": 4,
    "$a1": 5,
    "$a2": 6,
    "$a3": 7,
    "$t0": 8,
    "$t1": 9,
    "$t2": 10,
    "$t3": 11,
    "$t4": 12,
    "$t5": 13,
    "$t6": 14,
    "$t7": 15,
    "$s0": 16,
    "$s1": 17,
    "$s2": 18,
    "$s3": 19,
    "$s4": 20,
    "$s5": 21,
    "$s6": 22,
    "$s7": 23,
    "$t8": 24,
    "$t9": 25,
    "$k0": 26,
    "$k1": 27,
    "$gp": 28,
    "$sp": 29,
    "$fp": 30,
    "$ra": 31, # Return Address
    "HI": 32, # Used for MULT, DIV
    "LO": 33, # Used for MULT, DIV
    "PC": 34, # Program Counter
    "IR": 35 # Instruction Register
}

REVERSE_REGISTER_MAPPING = {
    y: x for x, y in REGISTER_MAPPING.items()
}

# Reference - https://phoenix.goucher.edu/~kelliher/f2009/cs220/mipsir.html
# MIPS Instruction Set w/ Behavior
# R
#      op     rs    rt    rd    shamt funct
# bit  31-26  25-21 20-16 15-11 10-6  5-0

#      op     rs    rt    rd    shamt funct  function
# add  000000 rs    rt    rd    00000 100000 rd=rs+rt
# addu 000000 rs    rt    rd    00000 100001 rd=rs+rt(unsigned)
# sub  000000 rs    rt    rd    00000 100010 rd=rs-rt
# subu 000000 rs    rt    rd    00000 100011 rd=rs-rt(unsigned)
# slt  000000 rs    rt    rd    00000 101010 rd=(rs<rt)?1:0
# sltu 000000 rs    rt    rd    00000 101011 rd=(rs<rt)?1:0(unsigned)

#      op     rs    rt    rd    shamt funct  function
# and  000000 rs    rt    rd    00000 100100 rd=rs&rt
# or   000000 rs    rt    rd    00000 100101 rd=rs|rt
# xor  000000 rs    rt    rd    00000 100110 rd=rs^rt
# nor  000000 rs    rt    rd    00000 100111 rd=!(rs|rt)

#      op     rs    rt    rd    shamt funct  function
# sll  000000 00000 rt    rd    shamt 000000 rd=rt<<shamt
# srl  000000 00000 rt    rd    shamt 000010 rd=rt>>shamt
# sra  000000 00000 rt    rd    shamt 000011 rd=rt>>shamt(sign flag reserved)
# sllv 000000 rs    rt    rd    00000 000100 rd=rt<<rs
# srlv 000000 rs    rt    rd    00000 000110 rd=rt>>rs
# srav 000000 rs    rt    rd    00000 000111 rd=rt>>rs(sign flag reserved)

#      op     rs    rt    rd    shamt funct  function
# jr   000000 rs    00000 00000 00000 001000 PC=rs
# jalr 000000 rs    00000 11111 00000 001001 $31=PC+4,PC=rs

# I
#       op     rs    rd    im
# bit   31-26  25-21 20-16 15-0

#       op     rs    rd    im
# addi  001000 rs    rd    im rd=rs+im
# addiu 001001 rs    rd    im rd=rs+im(unsigned)
# slti  001010 rs    rd    im rd=(rs<im)?1:0
# sltiu 001011 rs    rd    im rd=(rs<im)?1:0(unsigned)

#       op     rs    rd    im
# andi  001100 rs    rd    im rd=rs&im
# ori   001101 rs    rd    im rd=rs|im
# xori  001110 rs    rd    im rd=rs^im

#       op     rs    rd    im
# lui   001111 00000 rd    im rd=im*65536(rd=im<<16) (fill the register's high 16 bit)
# lw    100011 rs    rd    im rd=memory[rs+sign_ext(im)]
# sw    101011 rs    rd    im memory[rs+sign_ext(im)]=rd
# lb    100000 rs    rd    im rd=sign_ext(memory[rs+sign_ext(im)])
# lbu   100100 rs    rd    im rd=zero_ext(memory[rs+sign_ext(im)])
# sb    101000 rs    rd    im memory[rs+sign_ext(im)]=rd

#       op     rs    rd    im
# beq   000100 rs    rd    im PC=(rs==rd)?PC+4+im<<2:PC+4
# bne   000101 rs    rd    im PC=(rs!=rd)?PC+4+im<<2:PC+4
# bgez  000001 rs    00001 im PC=(rs>=0 )?PC+4+im<<2:PC+4
# bgtz  000111 rs    00000 im PC=(rs>0  )?PC+4+im<<2:PC+4
# blez  000110 rs    00000 im PC=(rs<=0 )?PC+4+im<<2:PC+4
# bltz  000001 rs    00000 im PC=(rs<0  )?PC+4+im<<2:PC+4

# J
#       op     address
# bit   31-26  25-0

#       op     address
# j     000010 addr    PC={(PC+4)[31:28],addr,00}
# jal   000011 addr    $31=PC; PC={(PC+4)[31:28],addr,00}
# $31 is ra register

INSTRUCTION_MAPPING = {
    # R-Type instructions
    # arithmetic -> shamt = 0
    "add": (0x00, 0x20),
    "addu": (0x00, 0x21),
    "sub": (0x00, 0x22),
    "subu": (0x00, 0x23),
    "slt": (0x00, 0x2A),
    "sltu": (0x00, 0x2B),

    # logical -> shamt = 0
    "and": (0x00, 0x24),
    "or": (0x00, 0x25),
    "xor": (0x00, 0x26),
    "nor": (0x00, 0x27),

    # shift -> rs = 0
    "sll": (0x00, 0x00),
    "srl": (0x00, 0x02),
    "sra": (0x00, 0x03),

    # shift -> shamt = 0
    "sllv": (0x00, 0x04),
    "srlv": (0x00, 0x06),
    "srav": (0x00, 0x07),

    # jump
    "jr": (0x00, 0x08),
    "jalr": (0x00, 0x09),

    ############################################

    # I-Type instructions
    # arithmetic
    "addi": (0x08, None),
    "addiu": (0x09, None),
    "slti": (0x0A, None),
    "sltiu": (0x0B, None),
    
    # logical
    "andi": (0x0C, None),
    "ori": (0x0D, None),
    "xori": (0x0E, None),

    # load
    "lui": (0x0F, None),
    "lw": (0x23, None),
    "sw": (0x2B, None),
    "lb": (0x20, None),
    "lbu": (0x24, None),
    "sb": (0x28, None),

    # branch
    "beq": (0x04, None),
    "bne": (0x05, None),
    "bgez": (0x01, 1),
    "bgtz": (0x07, None),
    "blez": (0x06, None),
    "bltz": (0x01, 0),

    ############################################

    # J-Type instructions
    "j": (0x02, None),
    "jal": (0x03, None)
}

INSTRUCTION_TYPES = {
    "R-type": ['add', 'addu', 'sub', 'subu', 'slt', 'sltu', 'and', 'or', 'xor', 'nor', 'sll', 'srl', 'sra', 'sllv', 'srlv', 'srav', 'jr', 'jalr'],
    "I-type": ['addi', 'addiu', 'slti', 'sltiu', 'andi', 'ori', 'xori', 'lui', 'lw', 'sw', 'lb', 'lbu', 'sb', 'beq', 'bne', 'bgez', 'bgtz', 'blez', 'bltz'],
    "J-type": ['j', 'jal']
}

INSTRUCTION_CLASSIFICATION = {
    "R-type": {
        "basic": ['add', 'addu', 'sub', 'subu', 'slt', 'sltu', 'and', 'or', 'xor', 'nor', 'sllv', 'srlv', 'srav'],
        "zero_rs": ['sll', 'srl', 'sra'],
        "jump": ['jr', 'jalr']
    },
    "I-type": {
        "basic": ['addi', 'addiu', 'slti', 'sltiu', 'andi', 'ori', 'xori'],
        "memory": ['lui', 'lw', 'sw', 'lb', 'lbu', 'sb'],
        "branch": ['beq', 'bne', 'bgez', 'bgtz', 'blez', 'bltz']
    },
    "J-type": {
        "basic": ['j', 'jal']
    }
}