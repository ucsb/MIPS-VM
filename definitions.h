#include <stdio.h>
#include <stdint.h>

#define MEMORY_MAX (1 << 16)
uint16_t memory[MEMORY_MAX];  /* 65536 locations */

typedef enum registers {
    r_zero, //always zero
    r_at, // Assembler temporary
    r_v0, r_v1, //Return values from functions
    r_a0, r_a1, r_a2, r_a3, //Arguments to functions
    r_t0, r_t1, r_t2, r_t3, r_t4, r_t5, r_t6, r_t7, //Temporary registers  (not preserved across function calls)
    r_s0,  r_s1, r_s2, r_s3, r_s4, r_s5, r_s6, r_s7, // Saved (preserved across function calls)
    r_t8, r_t9, // More temporary registers
    r_k0, r_k1, // reserved for kernel
    r_gp, //global pointer
    r_sp, //stack pointer
    r_fp, //frame pointer
    r_ra, //return address
    REGISTER_COUNT // Total number of registers.
} register_set;

//register storage.

uint16_t reg[REGISTER_COUNT];

typedef enum opcode{
    //R instructions
    OP_ADDU,
    OP_NOP,
    OP_JR,
    OP_SUBU,
    OP_SLT,
    //I instructions
    OP_ADDIU,
    OP_SW,
    OP_LI,
    OP_LUI,
    OP_LW,
    OP_LWL,
    OP_LWR,
    OP_BEQ,
    OP_BNE,
    OP_B,
    OP_LBU,
    OP_SB,
    OP_LHU,
    OP_SH,
    //J instructions
    OP_JAL,
    OP_MOVE,
};
