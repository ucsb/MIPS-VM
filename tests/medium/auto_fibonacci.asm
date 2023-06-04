	.text
	.abicalls
	.option	pic0
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.text
	.file	"fibonacci.cpp"
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
	.globl	_Z9fibonaccii                   # -- Begin function _Z9fibonaccii
	.p2align	2
	.type	_Z9fibonaccii,@function
	.set	nomicromips
	.set	nomips16
	.ent	_Z9fibonaccii
_Z9fibonaccii:                          # @_Z9fibonaccii
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
	sw	$4, 24($fp)
	lw	$1, 24($fp)
	slti	$1, $1, 3
	beqz	$1, $BB2_3
	nop
# %bb.1:
	j	$BB2_2
	nop
$BB2_2:
	addiu	$1, $zero, 1
	sw	$1, 28($fp)
	j	$BB2_4
	nop
$BB2_3:
	lw	$1, 24($fp)
	addiu	$4, $1, -1
	jal	_Z9fibonaccii
	nop
	sw	$2, 20($fp)                     # 4-byte Folded Spill
	lw	$1, 24($fp)
	addiu	$4, $1, -2
	jal	_Z9fibonaccii
	nop
	move	$1, $2
	lw	$2, 20($fp)                     # 4-byte Folded Reload
	addu	$1, $2, $1
	sw	$1, 28($fp)
	j	$BB2_4
	nop
$BB2_4:
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
	.end	_Z9fibonaccii
$func_end2:
	.size	_Z9fibonaccii, ($func_end2)-_Z9fibonaccii
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
	addiu	$4, $fp, 36
	sw	$4, 20($fp)                     # 4-byte Folded Spill
	jal	_Z10_input_intRi
	nop
	addiu	$4, $fp, 32
	sw	$4, 24($fp)                     # 4-byte Folded Spill
	jal	_Z10_input_intRi
	nop
	lw	$4, 36($fp)
	jal	_Z9fibonaccii
	nop
	sw	$2, 36($fp)
	lw	$4, 32($fp)
	jal	_Z9fibonaccii
	nop
	lw	$4, 20($fp)                     # 4-byte Folded Reload
	sw	$2, 32($fp)
	lw	$1, 36($fp)
	lw	$2, 32($fp)
	subu	$1, $1, $2
	sw	$1, 28($fp)
	jal	_Z10_print_intRi
	nop
	lw	$4, 24($fp)                     # 4-byte Folded Reload
	jal	_Z10_print_intRi
	nop
	addiu	$4, $fp, 28
	jal	_Z10_print_intRi
	nop
	addiu	$2, $zero, 0
	move	$sp, $fp
	lw	$fp, 40($sp)                    # 4-byte Folded Reload
	lw	$ra, 44($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 48
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	main
$func_end3:
	.size	main, ($func_end3)-main
	.cfi_endproc
                                        # -- End function
	.ident	"Homebrew clang version 16.0.3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z10_print_intRi
	.addrsig_sym _Z10_input_intRi
	.addrsig_sym _Z9fibonaccii
	.text
