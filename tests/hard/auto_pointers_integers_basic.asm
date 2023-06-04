	.text
	.abicalls
	.option	pic0
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.text
	.file	"pointers_integers_basic.cpp"
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
	lw	$1, 4($fp)
	sw	$zero, 0($1)
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
$func_end0:
	.size	_Z10_input_intRi, ($func_end0)-_Z10_input_intRi
                                        # -- End function
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
$func_end1:
	.size	_Z10_print_intRi, ($func_end1)-_Z10_print_intRi
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
	lui	$1, %hi($__const.main.myNumbers)
	lw	$2, %lo($__const.main.myNumbers)($1)
	sw	$2, 28($fp)
	addiu	$1, $1, %lo($__const.main.myNumbers)
	lw	$2, 12($1)
	sw	$2, 40($fp)
	lw	$2, 8($1)
	sw	$2, 36($fp)
	lw	$1, 4($1)
	sw	$1, 32($fp)
	addiu	$1, $fp, 28
	sw	$1, 24($fp)
	sw	$zero, 20($fp)
	j	$BB2_1
	nop
$BB2_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 20($fp)
	slti	$1, $1, 4
	beqz	$1, $BB2_5
	nop
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	j	$BB2_3
	nop
$BB2_3:                                 #   in Loop: Header=BB2_1 Depth=1
	lw	$1, 24($fp)
	lw	$2, 20($fp)
	sll	$2, $2, 2
	addu	$4, $1, $2
	jal	_Z10_print_intRi
	nop
	j	$BB2_4
	nop
$BB2_4:                                 #   in Loop: Header=BB2_1 Depth=1
	lw	$1, 20($fp)
	addiu	$1, $1, 1
	sw	$1, 20($fp)
	j	$BB2_1
	nop
$BB2_5:
	lw	$2, 44($fp)
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
$func_end2:
	.size	main, ($func_end2)-main
                                        # -- End function
	.type	$__const.main.myNumbers,@object # @__const.main.myNumbers
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	2, 0x0
$__const.main.myNumbers:
	.4byte	25                              # 0x19
	.4byte	50                              # 0x32
	.4byte	75                              # 0x4b
	.4byte	100                             # 0x64
	.size	$__const.main.myNumbers, 16

	.ident	"Homebrew clang version 16.0.3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z10_print_intRi
	.text
