	.text
	.abicalls
	.option	pic0
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.text
	.file	"integers_switch.cpp"
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
	sw	$zero, 28($fp)
	addiu	$4, $fp, 24
	jal	_Z10_input_intRi
	nop
	addiu	$4, $fp, 20
	jal	_Z10_input_intRi
	nop
	lw	$1, 24($fp)
	addiu	$1, $1, -1
	sw	$1, 16($fp)                     # 4-byte Folded Spill
	sltiu	$1, $1, 4
	beqz	$1, $BB2_6
	nop
$BB2_1:
	lw	$1, 16($fp)                     # 4-byte Folded Reload
	sll	$1, $1, 2
	lui	$2, %hi($JTI2_0)
	addu	$1, $1, $2
	lw	$1, %lo($JTI2_0)($1)
	jr	$1
	nop
$BB2_2:
	lw	$1, 20($fp)
	addiu	$1, $1, 1
	sw	$1, 20($fp)
	j	$BB2_6
	nop
$BB2_3:
	lw	$1, 20($fp)
	addiu	$1, $1, 2
	sw	$1, 20($fp)
	j	$BB2_4
	nop
$BB2_4:
	lw	$1, 20($fp)
	addiu	$1, $1, 3
	sw	$1, 20($fp)
	j	$BB2_6
	nop
$BB2_5:
	lw	$1, 20($fp)
	addiu	$1, $1, 4
	sw	$1, 20($fp)
	j	$BB2_6
	nop
$BB2_6:
	addiu	$4, $fp, 20
	jal	_Z10_print_intRi
	nop
	addiu	$2, $zero, 0
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
$func_end2:
	.size	main, ($func_end2)-main
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
$JTI2_0:
	.4byte	($BB2_2)
	.4byte	($BB2_3)
	.4byte	($BB2_4)
	.4byte	($BB2_5)
                                        # -- End function
	.ident	"Homebrew clang version 16.0.3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z10_print_intRi
	.addrsig_sym _Z10_input_intRi
	.text
