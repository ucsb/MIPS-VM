	.text
	.abicalls
	.option	pic0
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.text
	.file	"array_integers_basic.cpp"
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
	lui	$1, %hi($__const.main.arr)
	lw	$2, %lo($__const.main.arr)($1)
	sw	$2, 16($fp)
	addiu	$1, $1, %lo($__const.main.arr)
	lw	$2, 24($1)
	sw	$2, 40($fp)
	lw	$2, 20($1)
	sw	$2, 36($fp)
	lw	$2, 16($1)
	sw	$2, 32($fp)
	lw	$2, 12($1)
	sw	$2, 28($fp)
	lw	$2, 8($1)
	sw	$2, 24($fp)
	lw	$1, 4($1)
	sw	$1, 20($fp)
	lw	$1, 28($fp)
	addiu	$1, $1, 10
	sw	$1, 28($fp)
	lui	$1, %hi($__const.main.arr2)
	addiu	$2, $1, %lo($__const.main.arr2)
	lw	$3, 12($2)
	sw	$3, 12($fp)
	lw	$3, 8($2)
	sw	$3, 8($fp)
	lw	$2, 4($2)
	sw	$2, 4($fp)
	lw	$1, %lo($__const.main.arr2)($1)
	sw	$1, 0($fp)
	lw	$1, 4($fp)
	addiu	$1, $1, 5
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
	.type	$__const.main.arr,@object       # @__const.main.arr
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
$__const.main.arr:
	.4byte	4294967293                      # 0xfffffffd
	.4byte	4294967294                      # 0xfffffffe
	.4byte	4294967295                      # 0xffffffff
	.4byte	0                               # 0x0
	.4byte	1                               # 0x1
	.4byte	2                               # 0x2
	.4byte	3                               # 0x3
	.size	$__const.main.arr, 28

	.type	$__const.main.arr2,@object      # @__const.main.arr2
	.section	.rodata.str4.4,"aMS",@progbits,4
	.p2align	2, 0x0
$__const.main.arr2:
	.4byte	9                               # 0x9
	.4byte	11                              # 0xb
	.4byte	4294967290                      # 0xfffffffa
	.4byte	0                               # 0x0
	.size	$__const.main.arr2, 16

	.ident	"Homebrew clang version 16.0.3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.text
