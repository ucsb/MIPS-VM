	.text
	.abicalls
	.option	pic0
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.text
	.file	"integers_signed.cpp"
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
	.globl	main                            # -- Begin function main
	.p2align	2
	.type	main,@function
	.set	nomicromips
	.set	nomips16
	.ent	main
main:                                   # @main
	.frame	$fp,112,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -112
	sw	$ra, 108($sp)                   # 4-byte Folded Spill
	sw	$fp, 104($sp)                   # 4-byte Folded Spill
	move	$fp, $sp
	sw	$zero, 100($fp)
	addiu	$4, $fp, 96
	jal	_Z10_input_intRi
	nop
	addiu	$4, $fp, 92
	jal	_Z10_input_intRi
	nop
	lw	$1, 96($fp)
	lw	$2, 92($fp)
	addu	$1, $1, $2
	sw	$1, 88($fp)
	addiu	$4, $fp, 84
	jal	_Z10_input_intRi
	nop
	addiu	$4, $fp, 80
	jal	_Z10_input_intRi
	nop
	lw	$1, 84($fp)
	lw	$2, 80($fp)
	addu	$1, $1, $2
	sw	$1, 76($fp)
	addiu	$4, $fp, 72
	jal	_Z10_input_intRi
	nop
	addiu	$4, $fp, 68
	jal	_Z10_input_intRi
	nop
	lw	$1, 72($fp)
	lw	$2, 68($fp)
	and	$1, $1, $2
	sw	$1, 64($fp)
	addiu	$4, $fp, 60
	jal	_Z10_input_intRi
	nop
	addiu	$4, $fp, 56
	jal	_Z10_input_intRi
	nop
	lw	$1, 60($fp)
	lw	$2, 56($fp)
	and	$1, $1, $2
	sw	$1, 52($fp)
	lw	$1, 72($fp)
	lw	$2, 68($fp)
	or	$1, $1, $2
	sw	$1, 48($fp)
	lw	$1, 60($fp)
	lw	$2, 56($fp)
	or	$1, $1, $2
	sw	$1, 44($fp)
	addiu	$4, $fp, 40
	jal	_Z10_input_intRi
	nop
	lw	$1, 40($fp)
	sll	$1, $1, 2
	sw	$1, 36($fp)
	addiu	$4, $fp, 32
	jal	_Z10_input_intRi
	nop
	lw	$1, 32($fp)
	sll	$1, $1, 2
	sw	$1, 28($fp)
	addiu	$4, $fp, 24
	jal	_Z10_input_intRi
	nop
	lw	$1, 24($fp)
	sra	$1, $1, 2
	sw	$1, 20($fp)
	addiu	$4, $fp, 88
	jal	_Z10_print_intRi
	nop
	addiu	$4, $fp, 76
	jal	_Z10_print_intRi
	nop
	addiu	$4, $fp, 64
	jal	_Z10_print_intRi
	nop
	addiu	$4, $fp, 52
	jal	_Z10_print_intRi
	nop
	addiu	$4, $fp, 48
	jal	_Z10_print_intRi
	nop
	addiu	$4, $fp, 44
	jal	_Z10_print_intRi
	nop
	addiu	$4, $fp, 36
	jal	_Z10_print_intRi
	nop
	addiu	$4, $fp, 28
	jal	_Z10_print_intRi
	nop
	addiu	$4, $fp, 20
	jal	_Z10_print_intRi
	nop
	addiu	$2, $zero, 0
	move	$sp, $fp
	lw	$fp, 104($sp)                   # 4-byte Folded Reload
	lw	$ra, 108($sp)                   # 4-byte Folded Reload
	addiu	$sp, $sp, 112
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	main
$func_end2:
	.size	main, ($func_end2)-main
                                        # -- End function
	.ident	"Homebrew clang version 16.0.3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z10_print_intRi
	.addrsig_sym _Z10_input_intRi
	.text
