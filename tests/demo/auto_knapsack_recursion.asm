	.text
	.abicalls
	.option	pic0
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.text
	.file	"knapsack_recursion.cpp"
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
	.globl	_Z7maximumii                    # -- Begin function _Z7maximumii
	.p2align	2
	.type	_Z7maximumii,@function
	.set	nomicromips
	.set	nomips16
	.ent	_Z7maximumii
_Z7maximumii:                           # @_Z7maximumii
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
	sw	$4, 8($fp)
	sw	$5, 4($fp)
	lw	$2, 8($fp)
	lw	$1, 4($fp)
	slt	$1, $1, $2
	beqz	$1, $BB2_3
	nop
# %bb.1:
	j	$BB2_2
	nop
$BB2_2:
	lw	$1, 8($fp)
	sw	$1, 12($fp)
	j	$BB2_4
	nop
$BB2_3:
	lw	$1, 4($fp)
	sw	$1, 12($fp)
	j	$BB2_4
	nop
$BB2_4:
	lw	$2, 12($fp)
	move	$sp, $fp
	lw	$fp, 16($sp)                    # 4-byte Folded Reload
	lw	$ra, 20($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 24
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	_Z7maximumii
$func_end2:
	.size	_Z7maximumii, ($func_end2)-_Z7maximumii
                                        # -- End function
	.globl	_Z8knapsackPiS_ii               # -- Begin function _Z8knapsackPiS_ii
	.p2align	2
	.type	_Z8knapsackPiS_ii,@function
	.set	nomicromips
	.set	nomips16
	.ent	_Z8knapsackPiS_ii
_Z8knapsackPiS_ii:                      # @_Z8knapsackPiS_ii
	.cfi_startproc
	.frame	$fp,64,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	sw	$ra, 60($sp)                    # 4-byte Folded Spill
	sw	$fp, 56($sp)                    # 4-byte Folded Spill
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp, $sp
	.cfi_def_cfa_register 30
	sw	$4, 48($fp)
	sw	$5, 44($fp)
	sw	$6, 40($fp)
	sw	$7, 36($fp)
	lw	$1, 36($fp)
	bltz	$1, $BB3_4
	nop
# %bb.1:
	j	$BB3_2
	nop
$BB3_2:
	lw	$1, 40($fp)
	bnez	$1, $BB3_5
	nop
# %bb.3:
	j	$BB3_4
	nop
$BB3_4:
	sw	$zero, 52($fp)
	j	$BB3_9
	nop
$BB3_5:
	lw	$1, 48($fp)
	lw	$2, 36($fp)
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$2, 0($1)
	lw	$1, 40($fp)
	slt	$1, $1, $2
	beqz	$1, $BB3_8
	nop
# %bb.6:
	j	$BB3_7
	nop
$BB3_7:
	lw	$4, 48($fp)
	lw	$5, 44($fp)
	lw	$6, 40($fp)
	lw	$1, 36($fp)
	addiu	$7, $1, -1
	jal	_Z8knapsackPiS_ii
	nop
	sw	$2, 52($fp)
	j	$BB3_9
	nop
$BB3_8:
	lw	$5, 44($fp)
	lw	$1, 36($fp)
	sll	$3, $1, 2
	addu	$2, $5, $3
	lw	$2, 0($2)
	sw	$2, 20($fp)                     # 4-byte Folded Spill
	lw	$4, 48($fp)
	lw	$2, 40($fp)
	addu	$3, $4, $3
	lw	$3, 0($3)
	subu	$6, $2, $3
	addiu	$7, $1, -1
	jal	_Z8knapsackPiS_ii
	nop
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	addu	$1, $1, $2
	sw	$1, 32($fp)
	lw	$4, 48($fp)
	lw	$5, 44($fp)
	lw	$6, 40($fp)
	lw	$1, 36($fp)
	addiu	$7, $1, -1
	jal	_Z8knapsackPiS_ii
	nop
	sw	$2, 28($fp)
	lw	$4, 32($fp)
	lw	$5, 28($fp)
	jal	_Z7maximumii
	nop
	sw	$2, 24($fp)
	lw	$1, 24($fp)
	sw	$1, 52($fp)
	j	$BB3_9
	nop
$BB3_9:
	lw	$2, 52($fp)
	move	$sp, $fp
	lw	$fp, 56($sp)                    # 4-byte Folded Reload
	lw	$ra, 60($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 64
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	_Z8knapsackPiS_ii
$func_end3:
	.size	_Z8knapsackPiS_ii, ($func_end3)-_Z8knapsackPiS_ii
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	2
	.type	main,@function
	.set	nomicromips
	.set	nomips16
	.ent	main
main:                                   # @main
	.cfi_startproc
	.frame	$fp,56,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -56
	.cfi_def_cfa_offset 56
	sw	$ra, 52($sp)                    # 4-byte Folded Spill
	sw	$fp, 48($sp)                    # 4-byte Folded Spill
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp, $sp
	.cfi_def_cfa_register 30
	sw	$zero, 44($fp)
	addiu	$sp, $sp, -16
	addiu	$4, $fp, 40
	jal	_Z10_input_intRi
	nop
	addiu	$sp, $sp, 16
	lw	$1, 40($fp)
	move	$2, $sp
	sw	$2, 36($fp)
	sll	$2, $1, 2
	addiu	$2, $2, 7
	addiu	$3, $zero, -8
	and	$4, $2, $3
	move	$2, $sp
	subu	$2, $2, $4
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	move	$sp, $2
	sw	$1, 32($fp)
	lw	$1, 40($fp)
	sll	$2, $1, 2
	addiu	$2, $2, 7
	and	$3, $2, $3
	move	$2, $sp
	subu	$2, $2, $3
	sw	$2, 8($fp)                      # 4-byte Folded Spill
	move	$sp, $2
	sw	$1, 28($fp)
	sw	$zero, 24($fp)
	j	$BB4_1
	nop
$BB4_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 24($fp)
	lw	$2, 40($fp)
	slt	$1, $1, $2
	beqz	$1, $BB4_5
	nop
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
	j	$BB4_3
	nop
$BB4_3:                                 #   in Loop: Header=BB4_1 Depth=1
	lw	$1, 4($fp)                      # 4-byte Folded Reload
	lw	$2, 24($fp)
	sll	$2, $2, 2
	addu	$4, $1, $2
	addiu	$sp, $sp, -16
	jal	_Z10_input_intRi
	nop
	addiu	$sp, $sp, 16
	j	$BB4_4
	nop
$BB4_4:                                 #   in Loop: Header=BB4_1 Depth=1
	lw	$1, 24($fp)
	addiu	$1, $1, 1
	sw	$1, 24($fp)
	j	$BB4_1
	nop
$BB4_5:
	sw	$zero, 20($fp)
	j	$BB4_6
	nop
$BB4_6:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 20($fp)
	lw	$2, 40($fp)
	slt	$1, $1, $2
	beqz	$1, $BB4_10
	nop
# %bb.7:                                #   in Loop: Header=BB4_6 Depth=1
	j	$BB4_8
	nop
$BB4_8:                                 #   in Loop: Header=BB4_6 Depth=1
	lw	$1, 8($fp)                      # 4-byte Folded Reload
	lw	$2, 20($fp)
	sll	$2, $2, 2
	addu	$4, $1, $2
	addiu	$sp, $sp, -16
	jal	_Z10_input_intRi
	nop
	addiu	$sp, $sp, 16
	j	$BB4_9
	nop
$BB4_9:                                 #   in Loop: Header=BB4_6 Depth=1
	lw	$1, 20($fp)
	addiu	$1, $1, 1
	sw	$1, 20($fp)
	j	$BB4_6
	nop
$BB4_10:
	addiu	$sp, $sp, -16
	addiu	$4, $fp, 16
	jal	_Z10_input_intRi
	nop
	lw	$4, 4($fp)                      # 4-byte Folded Reload
	lw	$5, 8($fp)                      # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	lw	$6, 16($fp)
	lw	$1, 40($fp)
	addiu	$7, $1, -1
	addiu	$sp, $sp, -16
	jal	_Z8knapsackPiS_ii
	nop
	addiu	$sp, $sp, 16
	sw	$2, 12($fp)
	addiu	$sp, $sp, -16
	addiu	$4, $fp, 12
	jal	_Z10_print_intRi
	nop
	addiu	$sp, $sp, 16
	sw	$zero, 44($fp)
	lw	$1, 36($fp)
	move	$sp, $1
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
$func_end4:
	.size	main, ($func_end4)-main
	.cfi_endproc
                                        # -- End function
	.ident	"Homebrew clang version 16.0.3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z10_print_intRi
	.addrsig_sym _Z10_input_intRi
	.addrsig_sym _Z7maximumii
	.addrsig_sym _Z8knapsackPiS_ii
	.text
