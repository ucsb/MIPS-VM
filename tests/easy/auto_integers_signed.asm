	.text
	.abicalls
	.option	pic0
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.text
	.file	"integers_signed.cpp"
	.globl	main                            # -- Begin function main
	.p2align	2
	.type	main,@function
	.set	nomicromips
	.set	nomips16
	.ent	main
main:                                   # @main
	.frame	$fp,96,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -96
	sw	$ra, 92($sp)                    # 4-byte Folded Spill
	sw	$fp, 88($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$zero, 84($fp)
	addiu	$1, $zero, 1
	sw	$1, 80($fp)
	addiu	$1, $zero, -6
	sw	$1, 76($fp)
	lw	$2, 80($fp)
	lw	$3, 76($fp)
	addu	$2, $2, $3
	sw	$2, 72($fp)
	addiu	$2, $zero, 5
	sw	$2, 68($fp)
	addiu	$3, $zero, 6
	sw	$3, 64($fp)
	lw	$4, 68($fp)
	lw	$5, 64($fp)
	addu	$4, $4, $5
	sw	$4, 60($fp)
	sw	$3, 56($fp)
	addiu	$3, $zero, -4
	sw	$3, 52($fp)
	lw	$4, 56($fp)
	lw	$5, 52($fp)
	and	$4, $4, $5
	sw	$4, 48($fp)
	sw	$1, 44($fp)
	sw	$3, 40($fp)
	lw	$3, 44($fp)
	lw	$4, 40($fp)
	and	$3, $3, $4
	sw	$3, 36($fp)
	lw	$3, 56($fp)
	lw	$4, 52($fp)
	or	$3, $3, $4
	sw	$3, 32($fp)
	lw	$3, 44($fp)
	lw	$4, 40($fp)
	or	$3, $3, $4
	sw	$3, 28($fp)
	sw	$2, 24($fp)
	lw	$2, 24($fp)
	sll	$2, $2, 2
	sw	$2, 20($fp)
	addiu	$2, $zero, -5
	sw	$2, 16($fp)
	lw	$2, 16($fp)
	sll	$2, $2, 2
	sw	$2, 12($fp)
	sw	$1, 8($fp)
	lw	$1, 8($fp)
	sra	$1, $1, 2
	sw	$1, 4($fp)
	addiu	$2, $zero, 0
	move	$sp, $fp
	lw	$fp, 88($sp)                    # 4-byte Folded Reload
	lw	$ra, 92($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 96
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
