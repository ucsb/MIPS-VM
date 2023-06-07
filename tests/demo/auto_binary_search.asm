	.text
	.abicalls
	.option	pic0
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.text
	.file	"binary_search.cpp"
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
$func_end0:
	.size	_Z10_input_intRi, ($func_end0)-_Z10_input_intRi
                                        # -- End function
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
$func_end1:
	.size	_Z10_print_intRi, ($func_end1)-_Z10_print_intRi
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
$func_end2:
	.size	_Z13_print_stringPc, ($func_end2)-_Z13_print_stringPc
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
	j	$BB3_1
	nop
$BB3_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 20($fp)
	lw	$2, 24($fp)
	slt	$1, $1, $2
	beqz	$1, $BB3_5
	nop
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	j	$BB3_3
	nop
$BB3_3:                                 #   in Loop: Header=BB3_1 Depth=1
	lw	$1, 28($fp)
	lw	$2, 20($fp)
	sll	$2, $2, 2
	addu	$4, $1, $2
	jal	_Z10_input_intRi
	nop
	j	$BB3_4
	nop
$BB3_4:                                 #   in Loop: Header=BB3_1 Depth=1
	lw	$1, 20($fp)
	addiu	$1, $1, 1
	sw	$1, 20($fp)
	j	$BB3_1
	nop
$BB3_5:
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
$func_end3:
	.size	_Z16_input_int_arrayPii, ($func_end3)-_Z16_input_int_arrayPii
                                        # -- End function
	.globl	_Z13binary_searchiiiPi          # -- Begin function _Z13binary_searchiiiPi
	.p2align	2
	.type	_Z13binary_searchiiiPi,@function
	.set	nomicromips
	.set	nomips16
	.ent	_Z13binary_searchiiiPi
_Z13binary_searchiiiPi:                 # @_Z13binary_searchiiiPi
	.cfi_startproc
	.frame	$fp,48,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	sw	$ra, 44($sp)                    # 4-byte Folded Spill
	sw	$fp, 40($sp)                    # 4-byte Folded Spill
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp, $sp
	.cfi_def_cfa_register 30
	sw	$4, 32($fp)
	sw	$5, 28($fp)
	sw	$6, 24($fp)
	sw	$7, 20($fp)
	lw	$2, 32($fp)
	lw	$1, 28($fp)
	slt	$1, $1, $2
	beqz	$1, $BB4_3
	nop
# %bb.1:
	j	$BB4_2
	nop
$BB4_2:
	addiu	$1, $zero, -1
	sw	$1, 36($fp)
	j	$BB4_10
	nop
$BB4_3:
	lw	$1, 32($fp)
	lw	$2, 28($fp)
	subu	$2, $2, $1
	srl	$3, $2, 31
	addu	$2, $2, $3
	sra	$2, $2, 1
	addu	$1, $1, $2
	sw	$1, 16($fp)
	lw	$1, 20($fp)
	lw	$2, 16($fp)
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$1, 0($1)
	lw	$2, 24($fp)
	bne	$1, $2, $BB4_6
	nop
# %bb.4:
	j	$BB4_5
	nop
$BB4_5:
	lw	$1, 16($fp)
	sw	$1, 36($fp)
	j	$BB4_10
	nop
$BB4_6:
	lw	$1, 20($fp)
	lw	$2, 16($fp)
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$1, 0($1)
	lw	$2, 24($fp)
	slt	$1, $1, $2
	beqz	$1, $BB4_9
	nop
# %bb.7:
	j	$BB4_8
	nop
$BB4_8:
	lw	$1, 16($fp)
	addiu	$4, $1, 1
	lw	$5, 28($fp)
	lw	$6, 24($fp)
	lw	$7, 20($fp)
	jal	_Z13binary_searchiiiPi
	nop
	sw	$2, 36($fp)
	j	$BB4_10
	nop
$BB4_9:
	lw	$4, 32($fp)
	lw	$1, 16($fp)
	addiu	$5, $1, -1
	lw	$6, 24($fp)
	lw	$7, 20($fp)
	jal	_Z13binary_searchiiiPi
	nop
	sw	$2, 36($fp)
	j	$BB4_10
	nop
$BB4_10:
	lw	$2, 36($fp)
	move	$sp, $fp
	lw	$fp, 40($sp)                    # 4-byte Folded Reload
	lw	$ra, 44($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 48
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	_Z13binary_searchiiiPi
$func_end4:
	.size	_Z13binary_searchiiiPi, ($func_end4)-_Z13binary_searchiiiPi
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
	sw	$zero, 28($fp)
	addiu	$sp, $sp, -16
	lui	$1, %hi($.str)
	addiu	$4, $1, %lo($.str)
	jal	_Z13_print_stringPc
	nop
	addiu	$sp, $sp, 16
	addiu	$sp, $sp, -16
	addiu	$4, $fp, 24
	jal	_Z10_input_intRi
	nop
	addiu	$sp, $sp, 16
	lw	$1, 24($fp)
	move	$2, $sp
	sw	$2, 20($fp)
	sll	$2, $1, 2
	addiu	$2, $2, 7
	addiu	$3, $zero, -8
	and	$3, $2, $3
	move	$2, $sp
	subu	$2, $2, $3
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	move	$sp, $2
	sw	$1, 16($fp)
	addiu	$sp, $sp, -16
	lui	$1, %hi($.str.1)
	addiu	$4, $1, %lo($.str.1)
	jal	_Z13_print_stringPc
	nop
	lw	$4, 4($fp)                      # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	lw	$5, 24($fp)
	addiu	$sp, $sp, -16
	jal	_Z16_input_int_arrayPii
	nop
	addiu	$sp, $sp, 16
	addiu	$sp, $sp, -16
	lui	$1, %hi($.str.2)
	addiu	$4, $1, %lo($.str.2)
	jal	_Z13_print_stringPc
	nop
	addiu	$sp, $sp, 16
	addiu	$sp, $sp, -16
	addiu	$4, $fp, 12
	jal	_Z10_input_intRi
	nop
	lw	$7, 4($fp)                      # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	lw	$1, 24($fp)
	addiu	$5, $1, -1
	lw	$6, 12($fp)
	addiu	$sp, $sp, -16
	addiu	$4, $zero, 0
	jal	_Z13binary_searchiiiPi
	nop
	addiu	$sp, $sp, 16
	sw	$2, 8($fp)
	addiu	$sp, $sp, -16
	lui	$1, %hi($.str.3)
	addiu	$4, $1, %lo($.str.3)
	jal	_Z13_print_stringPc
	nop
	addiu	$sp, $sp, 16
	addiu	$sp, $sp, -16
	addiu	$4, $fp, 8
	jal	_Z10_print_intRi
	nop
	addiu	$sp, $sp, 16
	sw	$zero, 28($fp)
	lw	$1, 20($fp)
	move	$sp, $1
	lw	$2, 28($fp)
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	main
$func_end5:
	.size	main, ($func_end5)-main
	.cfi_endproc
                                        # -- End function
	.type	$.str,@object                   # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str:
	.asciz	"Enter the length of the array: "
	.size	$.str, 32

	.type	$.str.1,@object                 # @.str.1
$.str.1:
	.asciz	"Enter space separated numbers on the same line:\n"
	.size	$.str.1, 49

	.type	$.str.2,@object                 # @.str.2
$.str.2:
	.asciz	"Enter the target to be searched: "
	.size	$.str.2, 34

	.type	$.str.3,@object                 # @.str.3
$.str.3:
	.asciz	"The index where the target is found is: "
	.size	$.str.3, 41

	.ident	"Homebrew clang version 16.0.3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z10_input_intRi
	.addrsig_sym _Z10_print_intRi
	.addrsig_sym _Z13_print_stringPc
	.addrsig_sym _Z16_input_int_arrayPii
	.addrsig_sym _Z13binary_searchiiiPi
	.text
