	.text
	.abicalls
	.option	pic0
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.text
	.file	"integers_unsigned.cpp"
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
	addiu	$1, $zero, 6
	sw	$1, 40($fp)
	addiu	$2, $zero, 10
	sw	$2, 36($fp)
	lw	$2, 40($fp)
	lw	$3, 36($fp)
	addu	$2, $2, $3
	sw	$2, 32($fp)
	addiu	$2, $zero, 7
	sw	$2, 28($fp)
	addiu	$2, $zero, 3
	sw	$2, 24($fp)
	lw	$2, 28($fp)
	lw	$3, 24($fp)
	subu	$2, $2, $3
	sw	$2, 20($fp)
	sw	$1, 16($fp)
	addiu	$1, $zero, 4
	sw	$1, 12($fp)
	lw	$1, 16($fp)
	lw	$2, 12($fp)
	and	$1, $1, $2
	sw	$1, 8($fp)
	lw	$1, 16($fp)
	lw	$2, 12($fp)
	or	$1, $1, $2
	sw	$1, 4($fp)
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
$func_end0:
	.size	main, ($func_end0)-main
                                        # -- End function
	.ident	"Homebrew clang version 16.0.3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
