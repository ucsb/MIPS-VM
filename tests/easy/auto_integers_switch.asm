	.text
	.abicalls
	.option	pic0
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.text
	.file	"integers_switch.cpp"
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
	addiu	$1, $zero, 2
	sw	$1, 8($fp)
	sw	$zero, 4($fp)
	lw	$1, 8($fp)
	addiu	$1, $1, -1
	sw	$1, 0($fp)                      # 4-byte Folded Spill
	sltiu	$1, $1, 4
	beqz	$1, $BB0_6
	nop
$BB0_1:
	lw	$1, 0($fp)                      # 4-byte Folded Reload
	sll	$1, $1, 2
	lui	$2, %hi($JTI0_0)
	addu	$1, $1, $2
	lw	$1, %lo($JTI0_0)($1)
	jr	$1
	nop
$BB0_2:
	lw	$1, 4($fp)
	addiu	$1, $1, 1
	sw	$1, 4($fp)
	j	$BB0_6
	nop
$BB0_3:
	lw	$1, 4($fp)
	addiu	$1, $1, 2
	sw	$1, 4($fp)
	j	$BB0_4
	nop
$BB0_4:
	lw	$1, 4($fp)
	addiu	$1, $1, 3
	sw	$1, 4($fp)
	j	$BB0_6
	nop
$BB0_5:
	lw	$1, 4($fp)
	addiu	$1, $1, 4
	sw	$1, 4($fp)
	j	$BB0_6
	nop
$BB0_6:
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
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
$JTI0_0:
	.4byte	($BB0_2)
	.4byte	($BB0_3)
	.4byte	($BB0_4)
	.4byte	($BB0_5)
                                        # -- End function
	.ident	"Homebrew clang version 16.0.3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
