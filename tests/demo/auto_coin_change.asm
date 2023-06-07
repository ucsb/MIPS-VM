	.text
	.abicalls
	.option	pic0
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.text
	.file	"coin_change.cpp"
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
	.frame	$fp,80,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -80
	sw	$ra, 76($sp)                    # 4-byte Folded Spill
	sw	$fp, 72($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$zero, 68($fp)
	addiu	$sp, $sp, -16
	addiu	$4, $fp, 64
	jal	_Z10_input_intRi
	nop
	addiu	$sp, $sp, 16
	lw	$1, 64($fp)
	move	$2, $sp
	sw	$2, 60($fp)
	sll	$2, $1, 2
	addiu	$2, $2, 7
	addiu	$3, $zero, -8
	and	$3, $2, $3
	move	$2, $sp
	subu	$2, $2, $3
	sw	$2, 12($fp)                     # 4-byte Folded Spill
	move	$sp, $2
	sw	$1, 56($fp)
	sw	$zero, 52($fp)
	j	$BB2_1
	nop
$BB2_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 52($fp)
	lw	$2, 64($fp)
	slt	$1, $1, $2
	beqz	$1, $BB2_5
	nop
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	j	$BB2_3
	nop
$BB2_3:                                 #   in Loop: Header=BB2_1 Depth=1
	lw	$1, 12($fp)                     # 4-byte Folded Reload
	lw	$2, 52($fp)
	sll	$2, $2, 2
	addu	$4, $1, $2
	addiu	$sp, $sp, -16
	jal	_Z10_input_intRi
	nop
	addiu	$sp, $sp, 16
	j	$BB2_4
	nop
$BB2_4:                                 #   in Loop: Header=BB2_1 Depth=1
	lw	$1, 52($fp)
	addiu	$1, $1, 1
	sw	$1, 52($fp)
	j	$BB2_1
	nop
$BB2_5:
	addiu	$sp, $sp, -16
	addiu	$4, $fp, 48
	jal	_Z10_input_intRi
	nop
	addiu	$sp, $sp, 16
	lw	$1, 48($fp)
	addiu	$2, $1, 1
	lw	$1, 64($fp)
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	mul	$3, $2, $1
	sll	$3, $3, 2
	addiu	$3, $3, 7
	addiu	$4, $zero, -8
	and	$4, $3, $4
	move	$3, $sp
	subu	$3, $3, $4
	sw	$3, 8($fp)                      # 4-byte Folded Spill
	move	$sp, $3
	sw	$2, 44($fp)
	sw	$1, 40($fp)
	sw	$zero, 36($fp)
	j	$BB2_6
	nop
$BB2_6:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 36($fp)
	lw	$2, 64($fp)
	slt	$1, $1, $2
	beqz	$1, $BB2_10
	nop
# %bb.7:                                #   in Loop: Header=BB2_6 Depth=1
	j	$BB2_8
	nop
$BB2_8:                                 #   in Loop: Header=BB2_6 Depth=1
	lw	$1, 8($fp)                      # 4-byte Folded Reload
	lw	$2, 36($fp)
	sll	$2, $2, 2
	addu	$2, $1, $2
	addiu	$1, $zero, 1
	sw	$1, 0($2)
	j	$BB2_9
	nop
$BB2_9:                                 #   in Loop: Header=BB2_6 Depth=1
	lw	$1, 36($fp)
	addiu	$1, $1, 1
	sw	$1, 36($fp)
	j	$BB2_6
	nop
$BB2_10:
	addiu	$1, $zero, 1
	sw	$1, 24($fp)
	j	$BB2_11
	nop
$BB2_11:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_14 Depth 2
	lw	$1, 24($fp)
	lw	$2, 48($fp)
	addiu	$2, $2, 1
	slt	$1, $1, $2
	beqz	$1, $BB2_28
	nop
# %bb.12:                               #   in Loop: Header=BB2_11 Depth=1
	j	$BB2_13
	nop
$BB2_13:                                #   in Loop: Header=BB2_11 Depth=1
	sw	$zero, 20($fp)
	j	$BB2_14
	nop
$BB2_14:                                #   Parent Loop BB2_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	$1, 20($fp)
	lw	$2, 64($fp)
	slt	$1, $1, $2
	beqz	$1, $BB2_26
	nop
# %bb.15:                               #   in Loop: Header=BB2_14 Depth=2
	j	$BB2_16
	nop
$BB2_16:                                #   in Loop: Header=BB2_14 Depth=2
	lw	$2, 12($fp)                     # 4-byte Folded Reload
	lw	$1, 24($fp)
	lw	$3, 20($fp)
	sll	$3, $3, 2
	addu	$2, $2, $3
	lw	$2, 0($2)
	subu	$1, $1, $2
	bltz	$1, $BB2_19
	nop
# %bb.17:                               #   in Loop: Header=BB2_14 Depth=2
	j	$BB2_18
	nop
$BB2_18:                                #   in Loop: Header=BB2_14 Depth=2
	lw	$1, 8($fp)                      # 4-byte Folded Reload
	lw	$4, 4($fp)                      # 4-byte Folded Reload
	lw	$5, 12($fp)                     # 4-byte Folded Reload
	lw	$3, 24($fp)
	lw	$2, 20($fp)
	sll	$2, $2, 2
	addu	$5, $5, $2
	lw	$5, 0($5)
	subu	$3, $3, $5
	mul	$3, $3, $4
	sll	$3, $3, 2
	addu	$1, $1, $3
	addu	$1, $1, $2
	lw	$1, 0($1)
	sw	$1, 32($fp)
	j	$BB2_20
	nop
$BB2_19:                                #   in Loop: Header=BB2_14 Depth=2
	sw	$zero, 32($fp)
	j	$BB2_20
	nop
$BB2_20:                                #   in Loop: Header=BB2_14 Depth=2
	lw	$1, 20($fp)
	blez	$1, $BB2_23
	nop
# %bb.21:                               #   in Loop: Header=BB2_14 Depth=2
	j	$BB2_22
	nop
$BB2_22:                                #   in Loop: Header=BB2_14 Depth=2
	lw	$1, 8($fp)                      # 4-byte Folded Reload
	lw	$3, 4($fp)                      # 4-byte Folded Reload
	lw	$2, 24($fp)
	mul	$2, $2, $3
	sll	$2, $2, 2
	addu	$2, $1, $2
	lw	$1, 20($fp)
	sll	$1, $1, 2
	addu	$1, $1, $2
	lw	$1, -4($1)
	sw	$1, 28($fp)
	j	$BB2_24
	nop
$BB2_23:                                #   in Loop: Header=BB2_14 Depth=2
	sw	$zero, 28($fp)
	j	$BB2_24
	nop
$BB2_24:                                #   in Loop: Header=BB2_14 Depth=2
	lw	$2, 8($fp)                      # 4-byte Folded Reload
	lw	$4, 4($fp)                      # 4-byte Folded Reload
	lw	$1, 32($fp)
	lw	$3, 28($fp)
	addu	$1, $1, $3
	lw	$3, 24($fp)
	mul	$3, $3, $4
	sll	$3, $3, 2
	addu	$2, $2, $3
	lw	$3, 20($fp)
	sll	$3, $3, 2
	addu	$2, $2, $3
	sw	$1, 0($2)
	j	$BB2_25
	nop
$BB2_25:                                #   in Loop: Header=BB2_14 Depth=2
	lw	$1, 20($fp)
	addiu	$1, $1, 1
	sw	$1, 20($fp)
	j	$BB2_14
	nop
$BB2_26:                                #   in Loop: Header=BB2_11 Depth=1
	j	$BB2_27
	nop
$BB2_27:                                #   in Loop: Header=BB2_11 Depth=1
	lw	$1, 24($fp)
	addiu	$1, $1, 1
	sw	$1, 24($fp)
	j	$BB2_11
	nop
$BB2_28:
	lw	$1, 8($fp)                      # 4-byte Folded Reload
	lw	$3, 4($fp)                      # 4-byte Folded Reload
	lw	$2, 48($fp)
	mul	$2, $2, $3
	sll	$2, $2, 2
	addu	$2, $1, $2
	lw	$1, 64($fp)
	sll	$1, $1, 2
	addu	$1, $1, $2
	lw	$1, -4($1)
	sw	$1, 16($fp)
	addiu	$sp, $sp, -16
	addiu	$4, $fp, 16
	jal	_Z10_print_intRi
	nop
	addiu	$sp, $sp, 16
	sw	$zero, 68($fp)
	lw	$1, 60($fp)
	move	$sp, $1
	lw	$2, 68($fp)
	move	$sp, $fp
	lw	$fp, 72($sp)                    # 4-byte Folded Reload
	lw	$ra, 76($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 80
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
