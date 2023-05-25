	.text
	.abicalls
	.option	pic0
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.text
	.file	"integers_nested_conditions.cpp"
	.globl	_Z10is_div_by4i                 # -- Begin function _Z10is_div_by4i
	.p2align	2
	.type	_Z10is_div_by4i,@function
	.set	nomicromips
	.set	nomips16
	.ent	_Z10is_div_by4i
_Z10is_div_by4i:                        # @_Z10is_div_by4i
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
	sw	$zero, 0($fp)
	lw	$1, 4($fp)
	blez	$1, $BB0_7
	nop
# %bb.1:
	j	$BB0_2
	nop
$BB0_2:
	lw	$1, 4($fp)
	sra	$2, $1, 31
	srl	$2, $2, 30
	addu	$2, $1, $2
	addiu	$3, $zero, -4
	and	$2, $2, $3
	subu	$1, $1, $2
	bnez	$1, $BB0_5
	nop
# %bb.3:
	j	$BB0_4
	nop
$BB0_4:
	addiu	$1, $zero, 5
	sw	$1, 0($fp)
	j	$BB0_6
	nop
$BB0_5:
	addiu	$1, $zero, 1
	sw	$1, 0($fp)
	j	$BB0_6
	nop
$BB0_6:
	j	$BB0_8
	nop
$BB0_7:
	addiu	$1, $zero, -10
	sw	$1, 0($fp)
	j	$BB0_8
	nop
$BB0_8:
	lw	$2, 0($fp)
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	_Z10is_div_by4i
$func_end0:
	.size	_Z10is_div_by4i, ($func_end0)-_Z10is_div_by4i
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	2
	.type	main,@function
	.set	nomicromips
	.set	nomips16
	.ent	main
main:                                   # @main
	.frame	$fp,56,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -56
	sw	$ra, 52($sp)                    # 4-byte Folded Spill
	sw	$fp, 48($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$zero, 44($fp)
	addiu	$1, $zero, 7
	sw	$1, 40($fp)
	addiu	$1, $zero, 8
	sw	$1, 36($fp)
	addiu	$1, $zero, -8
	sw	$1, 32($fp)
	lw	$4, 40($fp)
	jal	_Z10is_div_by4i
	nop
	sw	$2, 28($fp)
	lw	$4, 36($fp)
	jal	_Z10is_div_by4i
	nop
	sw	$2, 24($fp)
	lw	$4, 32($fp)
	jal	_Z10is_div_by4i
	nop
	sw	$2, 20($fp)
	addiu	$2, $zero, 0
	move	$sp, $fp
	lw	$fp, 48($sp)                    # 4-byte Folded Reload
	lw	$ra, 52($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 56
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	main
$func_end1:
	.size	main, ($func_end1)-main
                                        # -- End function
	.ident	"Homebrew clang version 16.0.3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z10is_div_by4i
	.text
