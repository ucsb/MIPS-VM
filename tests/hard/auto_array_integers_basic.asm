	.text
	.abicalls
	.option	pic0
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.text
	.file	"array_integers_basic.cpp"
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
	.frame	$fp,152,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -152
	sw	$ra, 148($sp)                   # 4-byte Folded Spill
	sw	$fp, 144($sp)                   # 4-byte Folded Spill
	move	$fp, $sp
	sw	$zero, 140($fp)
	addiu	$4, $fp, 136
	jal	_Z10_input_intRi
	nop
	sw	$zero, 52($fp)
	j	$BB2_1
	nop
$BB2_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 52($fp)
	lw	$2, 136($fp)
	slt	$1, $1, $2
	beqz	$1, $BB2_5
	nop
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	j	$BB2_3
	nop
$BB2_3:                                 #   in Loop: Header=BB2_1 Depth=1
	lw	$1, 52($fp)
	sll	$2, $1, 2
	addiu	$1, $fp, 56
	addu	$4, $1, $2
	jal	_Z10_input_intRi
	nop
	j	$BB2_4
	nop
$BB2_4:                                 #   in Loop: Header=BB2_1 Depth=1
	lw	$1, 52($fp)
	addiu	$1, $1, 1
	sw	$1, 52($fp)
	j	$BB2_1
	nop
$BB2_5:
	addiu	$4, $fp, 48
	jal	_Z10_input_intRi
	nop
	lw	$1, 48($fp)
	sll	$2, $1, 2
	addiu	$1, $fp, 56
	addu	$2, $1, $2
	lw	$1, 0($2)
	addiu	$1, $1, 10
	sw	$1, 0($2)
	addiu	$4, $fp, 44
	jal	_Z10_input_intRi
	nop
	sw	$zero, 28($fp)
	j	$BB2_6
	nop
$BB2_6:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 28($fp)
	lw	$2, 44($fp)
	slt	$1, $1, $2
	beqz	$1, $BB2_10
	nop
# %bb.7:                                #   in Loop: Header=BB2_6 Depth=1
	j	$BB2_8
	nop
$BB2_8:                                 #   in Loop: Header=BB2_6 Depth=1
	lw	$1, 28($fp)
	sll	$2, $1, 2
	addiu	$1, $fp, 32
	addu	$4, $1, $2
	jal	_Z10_input_intRi
	nop
	j	$BB2_9
	nop
$BB2_9:                                 #   in Loop: Header=BB2_6 Depth=1
	lw	$1, 28($fp)
	addiu	$1, $1, 1
	sw	$1, 28($fp)
	j	$BB2_6
	nop
$BB2_10:
	addiu	$4, $fp, 24
	jal	_Z10_input_intRi
	nop
	lw	$1, 24($fp)
	sll	$2, $1, 2
	addiu	$1, $fp, 32
	addu	$2, $1, $2
	lw	$1, 0($2)
	addiu	$1, $1, 5
	sw	$1, 0($2)
	sw	$zero, 20($fp)
	j	$BB2_11
	nop
$BB2_11:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 20($fp)
	lw	$2, 136($fp)
	slt	$1, $1, $2
	beqz	$1, $BB2_15
	nop
# %bb.12:                               #   in Loop: Header=BB2_11 Depth=1
	j	$BB2_13
	nop
$BB2_13:                                #   in Loop: Header=BB2_11 Depth=1
	lw	$1, 20($fp)
	sll	$2, $1, 2
	addiu	$1, $fp, 56
	addu	$4, $1, $2
	jal	_Z10_print_intRi
	nop
	j	$BB2_14
	nop
$BB2_14:                                #   in Loop: Header=BB2_11 Depth=1
	lw	$1, 20($fp)
	addiu	$1, $1, 1
	sw	$1, 20($fp)
	j	$BB2_11
	nop
$BB2_15:
	sw	$zero, 16($fp)
	j	$BB2_16
	nop
$BB2_16:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 16($fp)
	lw	$2, 44($fp)
	slt	$1, $1, $2
	beqz	$1, $BB2_20
	nop
# %bb.17:                               #   in Loop: Header=BB2_16 Depth=1
	j	$BB2_18
	nop
$BB2_18:                                #   in Loop: Header=BB2_16 Depth=1
	lw	$1, 16($fp)
	sll	$2, $1, 2
	addiu	$1, $fp, 32
	addu	$4, $1, $2
	jal	_Z10_print_intRi
	nop
	j	$BB2_19
	nop
$BB2_19:                                #   in Loop: Header=BB2_16 Depth=1
	lw	$1, 16($fp)
	addiu	$1, $1, 1
	sw	$1, 16($fp)
	j	$BB2_16
	nop
$BB2_20:
	addiu	$2, $zero, 0
	move	$sp, $fp
	lw	$fp, 144($sp)                   # 4-byte Folded Reload
	lw	$ra, 148($sp)                   # 4-byte Folded Reload
	addiu	$sp, $sp, 152
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
