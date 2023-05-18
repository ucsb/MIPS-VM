	.text
	.abicalls
	.option	pic0
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.text
	.file	"integers_conditionals.cpp"
	.globl	main                            # -- Begin function main
	.p2align	2
	.type	main,@function
	.set	nomicromips
	.set	nomips16
	.ent	main
main:                                   # @main
	.frame	$fp,24,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -24
	sw	$ra, 20($sp)                    # 4-byte Folded Spill
	sw	$fp, 16($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$zero, 12($fp)
	addiu	$1, $zero, 8
	sw	$1, 8($fp)
	addiu	$1, $zero, 20
	sw	$1, 4($fp)
	sw	$zero, 0($fp)
	lw	$2, 8($fp)
	lw	$1, 4($fp)
	slt	$1, $1, $2
	bnez	$1, $BB0_3
	nop
# %bb.1:
	j	$BB0_2
	nop
$BB0_2:
	addiu	$1, $zero, 10
	sw	$1, 0($fp)
	j	$BB0_4
	nop
$BB0_3:
	addiu	$1, $zero, 5
	sw	$1, 0($fp)
	j	$BB0_4
	nop
$BB0_4:
	lw	$2, 8($fp)
	lw	$1, 4($fp)
	slt	$3, $1, $2
	addiu	$2, $zero, 5
	addiu	$1, $zero, -5
	movn	$2, $1, $3
	lw	$1, 0($fp)
	addu	$1, $1, $2
	sw	$1, 0($fp)
	addiu	$2, $zero, 0
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
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
