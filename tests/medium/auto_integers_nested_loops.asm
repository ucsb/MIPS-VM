	.text
	.abicalls
	.option	pic0
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.text
	.file	"integers_nested_loops.cpp"
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
	.frame	$fp,48,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -48
	sw	$ra, 44($sp)                    # 4-byte Folded Spill
	sw	$fp, 40($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$zero, 36($fp)
	addiu	$4, $fp, 32
	jal	_Z10_input_intRi
	nop
	addiu	$4, $fp, 28
	jal	_Z10_input_intRi
	nop
	addiu	$4, $fp, 16
	jal	_Z10_input_intRi
	nop
	sw	$zero, 24($fp)
	j	$BB2_1
	nop
$BB2_1:                                 # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_4 Depth 2
	lw	$1, 24($fp)
	lw	$2, 32($fp)
	slt	$1, $1, $2
	beqz	$1, $BB2_10
	nop
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	j	$BB2_3
	nop
$BB2_3:                                 #   in Loop: Header=BB2_1 Depth=1
	sw	$zero, 20($fp)
	j	$BB2_4
	nop
$BB2_4:                                 #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, 20($fp)
	lw	$2, 28($fp)
	slt	$1, $1, $2
	beqz	$1, $BB2_8
	nop
# %bb.5:                                #   in Loop: Header=BB2_4 Depth=2
	j	$BB2_6
	nop
$BB2_6:                                 #   in Loop: Header=BB2_4 Depth=2
	lw	$1, 16($fp)
	addiu	$1, $1, 1
	sw	$1, 16($fp)
	j	$BB2_7
	nop
$BB2_7:                                 #   in Loop: Header=BB2_4 Depth=2
	lw	$1, 20($fp)
	addiu	$1, $1, 1
	sw	$1, 20($fp)
	j	$BB2_4
	nop
$BB2_8:                                 #   in Loop: Header=BB2_1 Depth=1
	j	$BB2_9
	nop
$BB2_9:                                 #   in Loop: Header=BB2_1 Depth=1
	lw	$1, 24($fp)
	addiu	$1, $1, 1
	sw	$1, 24($fp)
	j	$BB2_1
	nop
$BB2_10:
	addiu	$4, $fp, 16
	jal	_Z10_print_intRi
	nop
	addiu	$2, $zero, 0
	move	$sp, $fp
	lw	$fp, 40($sp)                    # 4-byte Folded Reload
	lw	$ra, 44($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 48
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
