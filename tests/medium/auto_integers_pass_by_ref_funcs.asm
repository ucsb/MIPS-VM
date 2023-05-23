	.text
	.abicalls
	.option	pic0
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.text
	.file	"integers_pass_by_ref_funcs.cpp"
	.globl	_Z7get_sumRiS_                  # -- Begin function _Z7get_sumRiS_
	.p2align	2
	.type	_Z7get_sumRiS_,@function
	.set	nomicromips
	.set	nomips16
	.ent	_Z7get_sumRiS_
_Z7get_sumRiS_:                         # @_Z7get_sumRiS_
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
	lw	$1, 0($fp)
	lw	$3, 0($1)
	lw	$2, 4($fp)
	lw	$1, 0($2)
	addu	$1, $1, $3
	sw	$1, 0($2)
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	_Z7get_sumRiS_
$func_end0:
	.size	_Z7get_sumRiS_, ($func_end0)-_Z7get_sumRiS_
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
	addiu	$1, $zero, 8
	sw	$1, 24($fp)
	addiu	$1, $zero, 20
	sw	$1, 20($fp)
	addiu	$4, $fp, 20
	addiu	$5, $fp, 24
	jal	_Z7get_sumRiS_
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
$func_end1:
	.size	main, ($func_end1)-main
                                        # -- End function
	.ident	"Homebrew clang version 16.0.3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z7get_sumRiS_
	.text
