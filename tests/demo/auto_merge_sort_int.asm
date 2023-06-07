	.text
	.abicalls
	.option	pic0
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.text
	.file	"merge_sort_int.cpp"
	.globl	_Z10_print_intRi                # -- Begin function _Z10_print_intRi
	.p2align	2
	.type	_Z10_print_intRi,@function
	.set	nomicromips
	.set	nomips16
	.ent	_Z10_print_intRi
_Z10_print_intRi:                       # @_Z10_print_intRi
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 4($fp)
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	_Z10_print_intRi
$func_end0:
	.size	_Z10_print_intRi, ($func_end0)-_Z10_print_intRi
                                        # -- End function
	.globl	_Z10_input_intRi                # -- Begin function _Z10_input_intRi
	.p2align	2
	.type	_Z10_input_intRi,@function
	.set	nomicromips
	.set	nomips16
	.ent	_Z10_input_intRi
_Z10_input_intRi:                       # @_Z10_input_intRi
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 4($fp)
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	_Z10_input_intRi
$func_end1:
	.size	_Z10_input_intRi, ($func_end1)-_Z10_input_intRi
                                        # -- End function
	.globl	_Z16_input_int_arrayPii         # -- Begin function _Z16_input_int_arrayPii
	.p2align	2
	.type	_Z16_input_int_arrayPii,@function
	.set	nomicromips
	.set	nomips16
	.ent	_Z16_input_int_arrayPii
_Z16_input_int_arrayPii:                # @_Z16_input_int_arrayPii
	.frame	$fp,40,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -40
	sw	$ra, 36($sp)                    # 4-byte Folded Spill
	sw	$fp, 32($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 28($fp)
	sw	$5, 24($fp)
	sw	$zero, 20($fp)
	j	$BB2_1
	nop
$BB2_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 20($fp)
	lw	$2, 24($fp)
	slt	$1, $1, $2
	beqz	$1, $BB2_5
	nop
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	j	$BB2_3
	nop
$BB2_3:                                 #   in Loop: Header=BB2_1 Depth=1
	lw	$1, 28($fp)
	lw	$2, 20($fp)
	sll	$2, $2, 2
	addu	$4, $1, $2
	jal	_Z10_input_intRi
	nop
	j	$BB2_4
	nop
$BB2_4:                                 #   in Loop: Header=BB2_1 Depth=1
	lw	$1, 20($fp)
	addiu	$1, $1, 1
	sw	$1, 20($fp)
	j	$BB2_1
	nop
$BB2_5:
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	_Z16_input_int_arrayPii
$func_end2:
	.size	_Z16_input_int_arrayPii, ($func_end2)-_Z16_input_int_arrayPii
                                        # -- End function
	.globl	_Z16_print_int_arrayPii         # -- Begin function _Z16_print_int_arrayPii
	.p2align	2
	.type	_Z16_print_int_arrayPii,@function
	.set	nomicromips
	.set	nomips16
	.ent	_Z16_print_int_arrayPii
_Z16_print_int_arrayPii:                # @_Z16_print_int_arrayPii
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 4($fp)
	sw	$5, 0($fp)
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	_Z16_print_int_arrayPii
$func_end3:
	.size	_Z16_print_int_arrayPii, ($func_end3)-_Z16_print_int_arrayPii
                                        # -- End function
	.globl	_Z13_print_stringPc             # -- Begin function _Z13_print_stringPc
	.p2align	2
	.type	_Z13_print_stringPc,@function
	.set	nomicromips
	.set	nomips16
	.ent	_Z13_print_stringPc
_Z13_print_stringPc:                    # @_Z13_print_stringPc
	.frame	$fp,16,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -16
	sw	$ra, 12($sp)                    # 4-byte Folded Spill
	sw	$fp, 8($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 4($fp)
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	_Z13_print_stringPc
$func_end4:
	.size	_Z13_print_stringPc, ($func_end4)-_Z13_print_stringPc
                                        # -- End function
	.globl	_Z5mergePiiii                   # -- Begin function _Z5mergePiiii
	.p2align	2
	.type	_Z5mergePiiii,@function
	.set	nomicromips
	.set	nomips16
	.ent	_Z5mergePiiii
_Z5mergePiiii:                          # @_Z5mergePiiii
	.frame	$fp,80,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -80
	sw	$ra, 76($sp)                    # 4-byte Folded Spill
	sw	$fp, 72($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 68($fp)
	sw	$5, 64($fp)
	sw	$6, 60($fp)
	sw	$7, 56($fp)
	lw	$1, 60($fp)
	lw	$2, 64($fp)
	subu	$1, $1, $2
	addiu	$1, $1, 1
	sw	$1, 40($fp)
	lw	$1, 56($fp)
	lw	$2, 60($fp)
	subu	$1, $1, $2
	sw	$1, 36($fp)
	lw	$1, 40($fp)
	move	$2, $sp
	sw	$2, 32($fp)
	sll	$2, $1, 2
	addiu	$2, $2, 7
	addiu	$3, $zero, -8
	and	$4, $2, $3
	move	$2, $sp
	subu	$2, $2, $4
	sw	$2, 8($fp)                      # 4-byte Folded Spill
	move	$sp, $2
	sw	$1, 28($fp)
	lw	$1, 36($fp)
	sll	$2, $1, 2
	addiu	$2, $2, 7
	and	$3, $2, $3
	move	$2, $sp
	subu	$2, $2, $3
	sw	$2, 12($fp)                     # 4-byte Folded Spill
	move	$sp, $2
	sw	$1, 24($fp)
	sw	$zero, 20($fp)
	j	$BB5_1
	nop
$BB5_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 20($fp)
	lw	$2, 40($fp)
	slt	$1, $1, $2
	beqz	$1, $BB5_5
	nop
# %bb.2:                                #   in Loop: Header=BB5_1 Depth=1
	j	$BB5_3
	nop
$BB5_3:                                 #   in Loop: Header=BB5_1 Depth=1
	lw	$2, 8($fp)                      # 4-byte Folded Reload
	lw	$1, 68($fp)
	lw	$4, 64($fp)
	lw	$3, 20($fp)
	addu	$4, $4, $3
	sll	$4, $4, 2
	addu	$1, $1, $4
	lw	$1, 0($1)
	sll	$3, $3, 2
	addu	$2, $2, $3
	sw	$1, 0($2)
	j	$BB5_4
	nop
$BB5_4:                                 #   in Loop: Header=BB5_1 Depth=1
	lw	$1, 20($fp)
	addiu	$1, $1, 1
	sw	$1, 20($fp)
	j	$BB5_1
	nop
$BB5_5:
	sw	$zero, 16($fp)
	j	$BB5_6
	nop
$BB5_6:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 16($fp)
	lw	$2, 36($fp)
	slt	$1, $1, $2
	beqz	$1, $BB5_10
	nop
# %bb.7:                                #   in Loop: Header=BB5_6 Depth=1
	j	$BB5_8
	nop
$BB5_8:                                 #   in Loop: Header=BB5_6 Depth=1
	lw	$2, 12($fp)                     # 4-byte Folded Reload
	lw	$4, 68($fp)
	lw	$1, 60($fp)
	lw	$3, 16($fp)
	addu	$1, $1, $3
	sll	$1, $1, 2
	addu	$1, $1, $4
	lw	$1, 4($1)
	sll	$3, $3, 2
	addu	$2, $2, $3
	sw	$1, 0($2)
	j	$BB5_9
	nop
$BB5_9:                                 #   in Loop: Header=BB5_6 Depth=1
	lw	$1, 16($fp)
	addiu	$1, $1, 1
	sw	$1, 16($fp)
	j	$BB5_6
	nop
$BB5_10:
	sw	$zero, 52($fp)
	sw	$zero, 48($fp)
	lw	$1, 64($fp)
	sw	$1, 44($fp)
	j	$BB5_11
	nop
$BB5_11:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 52($fp)
	lw	$3, 40($fp)
	addiu	$2, $zero, 0
	slt	$1, $1, $3
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	beqz	$1, $BB5_14
	nop
# %bb.12:                               #   in Loop: Header=BB5_11 Depth=1
	j	$BB5_13
	nop
$BB5_13:                                #   in Loop: Header=BB5_11 Depth=1
	lw	$1, 48($fp)
	lw	$2, 36($fp)
	slt	$1, $1, $2
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	j	$BB5_14
	nop
$BB5_14:                                #   in Loop: Header=BB5_11 Depth=1
	lw	$1, 4($fp)                      # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, $BB5_21
	nop
# %bb.15:                               #   in Loop: Header=BB5_11 Depth=1
	j	$BB5_16
	nop
$BB5_16:                                #   in Loop: Header=BB5_11 Depth=1
	lw	$1, 12($fp)                     # 4-byte Folded Reload
	lw	$2, 8($fp)                      # 4-byte Folded Reload
	lw	$3, 52($fp)
	sll	$3, $3, 2
	addu	$2, $2, $3
	lw	$2, 0($2)
	lw	$3, 48($fp)
	sll	$3, $3, 2
	addu	$1, $1, $3
	lw	$1, 0($1)
	slt	$1, $1, $2
	bnez	$1, $BB5_19
	nop
# %bb.17:                               #   in Loop: Header=BB5_11 Depth=1
	j	$BB5_18
	nop
$BB5_18:                                #   in Loop: Header=BB5_11 Depth=1
	lw	$1, 8($fp)                      # 4-byte Folded Reload
	lw	$2, 52($fp)
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$1, 0($1)
	lw	$2, 68($fp)
	lw	$3, 44($fp)
	sll	$3, $3, 2
	addu	$2, $2, $3
	sw	$1, 0($2)
	lw	$1, 52($fp)
	addiu	$1, $1, 1
	sw	$1, 52($fp)
	j	$BB5_20
	nop
$BB5_19:                                #   in Loop: Header=BB5_11 Depth=1
	lw	$1, 12($fp)                     # 4-byte Folded Reload
	lw	$2, 48($fp)
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$1, 0($1)
	lw	$2, 68($fp)
	lw	$3, 44($fp)
	sll	$3, $3, 2
	addu	$2, $2, $3
	sw	$1, 0($2)
	lw	$1, 48($fp)
	addiu	$1, $1, 1
	sw	$1, 48($fp)
	j	$BB5_20
	nop
$BB5_20:                                #   in Loop: Header=BB5_11 Depth=1
	lw	$1, 44($fp)
	addiu	$1, $1, 1
	sw	$1, 44($fp)
	j	$BB5_11
	nop
$BB5_21:
	j	$BB5_22
	nop
$BB5_22:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 52($fp)
	lw	$2, 40($fp)
	slt	$1, $1, $2
	beqz	$1, $BB5_25
	nop
# %bb.23:                               #   in Loop: Header=BB5_22 Depth=1
	j	$BB5_24
	nop
$BB5_24:                                #   in Loop: Header=BB5_22 Depth=1
	lw	$1, 8($fp)                      # 4-byte Folded Reload
	lw	$2, 52($fp)
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$1, 0($1)
	lw	$2, 68($fp)
	lw	$3, 44($fp)
	sll	$3, $3, 2
	addu	$2, $2, $3
	sw	$1, 0($2)
	lw	$1, 44($fp)
	addiu	$1, $1, 1
	sw	$1, 44($fp)
	lw	$1, 52($fp)
	addiu	$1, $1, 1
	sw	$1, 52($fp)
	j	$BB5_22
	nop
$BB5_25:
	j	$BB5_26
	nop
$BB5_26:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 48($fp)
	lw	$2, 36($fp)
	slt	$1, $1, $2
	beqz	$1, $BB5_29
	nop
# %bb.27:                               #   in Loop: Header=BB5_26 Depth=1
	j	$BB5_28
	nop
$BB5_28:                                #   in Loop: Header=BB5_26 Depth=1
	lw	$1, 12($fp)                     # 4-byte Folded Reload
	lw	$2, 48($fp)
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$1, 0($1)
	lw	$2, 68($fp)
	lw	$3, 44($fp)
	sll	$3, $3, 2
	addu	$2, $2, $3
	sw	$1, 0($2)
	lw	$1, 44($fp)
	addiu	$1, $1, 1
	sw	$1, 44($fp)
	lw	$1, 48($fp)
	addiu	$1, $1, 1
	sw	$1, 48($fp)
	j	$BB5_26
	nop
$BB5_29:
	lw	$1, 32($fp)
	move	$sp, $1
	move	$sp, $fp
	lw	$fp, 72($sp)                    # 4-byte Folded Reload
	lw	$ra, 76($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 80
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	_Z5mergePiiii
$func_end5:
	.size	_Z5mergePiiii, ($func_end5)-_Z5mergePiiii
                                        # -- End function
	.globl	_Z9mergeSortPiii                # -- Begin function _Z9mergeSortPiii
	.p2align	2
	.type	_Z9mergeSortPiii,@function
	.set	nomicromips
	.set	nomips16
	.ent	_Z9mergeSortPiii
_Z9mergeSortPiii:                       # @_Z9mergeSortPiii
	.cfi_startproc
	.frame	$fp,40,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -40
	.cfi_def_cfa_offset 40
	sw	$ra, 36($sp)                    # 4-byte Folded Spill
	sw	$fp, 32($sp)                    # 4-byte Folded Spill
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp, $sp
	.cfi_def_cfa_register 30
	sw	$4, 28($fp)
	sw	$5, 24($fp)
	sw	$6, 20($fp)
	lw	$1, 24($fp)
	lw	$2, 20($fp)
	slt	$1, $1, $2
	beqz	$1, $BB6_3
	nop
# %bb.1:
	j	$BB6_2
	nop
$BB6_2:
	lw	$1, 24($fp)
	lw	$2, 20($fp)
	addu	$1, $1, $2
	srl	$2, $1, 31
	addu	$1, $1, $2
	sra	$1, $1, 1
	sw	$1, 16($fp)
	lw	$4, 28($fp)
	lw	$5, 24($fp)
	lw	$6, 16($fp)
	jal	_Z9mergeSortPiii
	nop
	lw	$4, 28($fp)
	lw	$1, 16($fp)
	addiu	$5, $1, 1
	lw	$6, 20($fp)
	jal	_Z9mergeSortPiii
	nop
	lw	$4, 28($fp)
	lw	$5, 24($fp)
	lw	$6, 16($fp)
	lw	$7, 20($fp)
	jal	_Z5mergePiiii
	nop
	j	$BB6_3
	nop
$BB6_3:
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	_Z9mergeSortPiii
$func_end6:
	.size	_Z9mergeSortPiii, ($func_end6)-_Z9mergeSortPiii
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	2
	.type	main,@function
	.set	nomicromips
	.set	nomips16
	.ent	main
main:                                   # @main
	.cfi_startproc
	.frame	$fp,32,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	sw	$ra, 28($sp)                    # 4-byte Folded Spill
	sw	$fp, 24($sp)                    # 4-byte Folded Spill
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp, $sp
	.cfi_def_cfa_register 30
	sw	$zero, 20($fp)
	addiu	$sp, $sp, -16
	lui	$1, %hi($.str)
	addiu	$4, $1, %lo($.str)
	jal	_Z13_print_stringPc
	nop
	addiu	$sp, $sp, 16
	addiu	$sp, $sp, -16
	addiu	$4, $fp, 16
	jal	_Z10_input_intRi
	nop
	addiu	$sp, $sp, 16
	lw	$1, 16($fp)
	move	$2, $sp
	sw	$2, 12($fp)
	sll	$2, $1, 2
	addiu	$2, $2, 7
	addiu	$3, $zero, -8
	and	$3, $2, $3
	move	$2, $sp
	subu	$2, $2, $3
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	move	$sp, $2
	sw	$1, 8($fp)
	addiu	$sp, $sp, -16
	lui	$1, %hi($.str.1)
	addiu	$4, $1, %lo($.str.1)
	jal	_Z13_print_stringPc
	nop
	lw	$4, 4($fp)                      # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	lw	$5, 16($fp)
	addiu	$sp, $sp, -16
	jal	_Z16_input_int_arrayPii
	nop
	lw	$4, 4($fp)                      # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	lw	$1, 16($fp)
	addiu	$6, $1, -1
	addiu	$sp, $sp, -16
	addiu	$5, $zero, 0
	jal	_Z9mergeSortPiii
	nop
	addiu	$sp, $sp, 16
	addiu	$sp, $sp, -16
	lui	$1, %hi($.str.2)
	addiu	$4, $1, %lo($.str.2)
	jal	_Z13_print_stringPc
	nop
	lw	$4, 4($fp)                      # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	lw	$5, 16($fp)
	addiu	$sp, $sp, -16
	jal	_Z16_print_int_arrayPii
	nop
	addiu	$sp, $sp, 16
	sw	$zero, 20($fp)
	lw	$1, 12($fp)
	move	$sp, $1
	lw	$2, 20($fp)
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	main
$func_end7:
	.size	main, ($func_end7)-main
	.cfi_endproc
                                        # -- End function
	.type	$.str,@object                   # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str:
	.asciz	"Enter the length of the array: "
	.size	$.str, 32

	.type	$.str.1,@object                 # @.str.1
$.str.1:
	.asciz	"Enter space separated numbers of array on the same line:\n"
	.size	$.str.1, 58

	.type	$.str.2,@object                 # @.str.2
$.str.2:
	.asciz	"The array after sorting is:\n"
	.size	$.str.2, 29

	.ident	"Homebrew clang version 16.0.3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z10_input_intRi
	.addrsig_sym _Z16_input_int_arrayPii
	.addrsig_sym _Z16_print_int_arrayPii
	.addrsig_sym _Z13_print_stringPc
	.addrsig_sym _Z5mergePiiii
	.addrsig_sym _Z9mergeSortPiii
	.text
