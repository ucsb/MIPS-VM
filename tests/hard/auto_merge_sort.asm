	.text
	.abicalls
	.option	pic0
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.text
	.file	"merge_sort.cpp"
	.globl	_Z5mergePiiii                   # -- Begin function _Z5mergePiiii
	.p2align	2
	.type	_Z5mergePiiii,@function
	.set	nomicromips
	.set	nomips16
	.ent	_Z5mergePiiii
_Z5mergePiiii:                          # @_Z5mergePiiii
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
	sw	$4, 68($fp)
	sw	$5, 64($fp)
	sw	$6, 60($fp)
	sw	$7, 56($fp)
	lw	$1, 60($fp)
	lw	$2, 64($fp)
	subu	$1, $1, $2
	addiu	$1, $1, 1
	sw	$1, 40($fp)
	lw	$1, 56($fp)
	lw	$2, 60($fp)
	subu	$1, $1, $2
	sw	$1, 36($fp)
	lw	$1, 40($fp)
	move	$2, $sp
	sw	$2, 32($fp)
	sll	$2, $1, 2
	addiu	$2, $2, 7
	addiu	$3, $zero, -8
	and	$4, $2, $3
	move	$2, $sp
	subu	$2, $2, $4
	sw	$2, 8($fp)                      # 4-byte Folded Spill
	move	$sp, $2
	sw	$1, 28($fp)
	lw	$1, 36($fp)
	sll	$2, $1, 2
	addiu	$2, $2, 7
	and	$3, $2, $3
	move	$2, $sp
	subu	$2, $2, $3
	sw	$2, 12($fp)                     # 4-byte Folded Spill
	move	$sp, $2
	sw	$1, 24($fp)
	sw	$zero, 20($fp)
	j	$BB0_1
	nop
$BB0_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 20($fp)
	lw	$2, 40($fp)
	slt	$1, $1, $2
	beqz	$1, $BB0_5
	nop
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	j	$BB0_3
	nop
$BB0_3:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$2, 8($fp)                      # 4-byte Folded Reload
	lw	$1, 68($fp)
	lw	$4, 64($fp)
	lw	$3, 20($fp)
	addu	$4, $4, $3
	sll	$4, $4, 2
	addu	$1, $1, $4
	lw	$1, 0($1)
	sll	$3, $3, 2
	addu	$2, $2, $3
	sw	$1, 0($2)
	j	$BB0_4
	nop
$BB0_4:                                 #   in Loop: Header=BB0_1 Depth=1
	lw	$1, 20($fp)
	addiu	$1, $1, 1
	sw	$1, 20($fp)
	j	$BB0_1
	nop
$BB0_5:
	sw	$zero, 16($fp)
	j	$BB0_6
	nop
$BB0_6:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 16($fp)
	lw	$2, 36($fp)
	slt	$1, $1, $2
	beqz	$1, $BB0_10
	nop
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	j	$BB0_8
	nop
$BB0_8:                                 #   in Loop: Header=BB0_6 Depth=1
	lw	$2, 12($fp)                     # 4-byte Folded Reload
	lw	$4, 68($fp)
	lw	$1, 60($fp)
	lw	$3, 16($fp)
	addu	$1, $1, $3
	sll	$1, $1, 2
	addu	$1, $1, $4
	lw	$1, 4($1)
	sll	$3, $3, 2
	addu	$2, $2, $3
	sw	$1, 0($2)
	j	$BB0_9
	nop
$BB0_9:                                 #   in Loop: Header=BB0_6 Depth=1
	lw	$1, 16($fp)
	addiu	$1, $1, 1
	sw	$1, 16($fp)
	j	$BB0_6
	nop
$BB0_10:
	sw	$zero, 52($fp)
	sw	$zero, 48($fp)
	lw	$1, 64($fp)
	sw	$1, 44($fp)
	j	$BB0_11
	nop
$BB0_11:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 52($fp)
	lw	$3, 40($fp)
	addiu	$2, $zero, 0
	slt	$1, $1, $3
	sw	$2, 4($fp)                      # 4-byte Folded Spill
	beqz	$1, $BB0_14
	nop
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=1
	j	$BB0_13
	nop
$BB0_13:                                #   in Loop: Header=BB0_11 Depth=1
	lw	$1, 48($fp)
	lw	$2, 36($fp)
	slt	$1, $1, $2
	sw	$1, 4($fp)                      # 4-byte Folded Spill
	j	$BB0_14
	nop
$BB0_14:                                #   in Loop: Header=BB0_11 Depth=1
	lw	$1, 4($fp)                      # 4-byte Folded Reload
	andi	$1, $1, 1
	beqz	$1, $BB0_21
	nop
# %bb.15:                               #   in Loop: Header=BB0_11 Depth=1
	j	$BB0_16
	nop
$BB0_16:                                #   in Loop: Header=BB0_11 Depth=1
	lw	$1, 12($fp)                     # 4-byte Folded Reload
	lw	$2, 8($fp)                      # 4-byte Folded Reload
	lw	$3, 52($fp)
	sll	$3, $3, 2
	addu	$2, $2, $3
	lw	$2, 0($2)
	lw	$3, 48($fp)
	sll	$3, $3, 2
	addu	$1, $1, $3
	lw	$1, 0($1)
	slt	$1, $1, $2
	bnez	$1, $BB0_19
	nop
# %bb.17:                               #   in Loop: Header=BB0_11 Depth=1
	j	$BB0_18
	nop
$BB0_18:                                #   in Loop: Header=BB0_11 Depth=1
	lw	$1, 8($fp)                      # 4-byte Folded Reload
	lw	$2, 52($fp)
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$1, 0($1)
	lw	$2, 68($fp)
	lw	$3, 44($fp)
	sll	$3, $3, 2
	addu	$2, $2, $3
	sw	$1, 0($2)
	lw	$1, 52($fp)
	addiu	$1, $1, 1
	sw	$1, 52($fp)
	j	$BB0_20
	nop
$BB0_19:                                #   in Loop: Header=BB0_11 Depth=1
	lw	$1, 12($fp)                     # 4-byte Folded Reload
	lw	$2, 48($fp)
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$1, 0($1)
	lw	$2, 68($fp)
	lw	$3, 44($fp)
	sll	$3, $3, 2
	addu	$2, $2, $3
	sw	$1, 0($2)
	lw	$1, 48($fp)
	addiu	$1, $1, 1
	sw	$1, 48($fp)
	j	$BB0_20
	nop
$BB0_20:                                #   in Loop: Header=BB0_11 Depth=1
	lw	$1, 44($fp)
	addiu	$1, $1, 1
	sw	$1, 44($fp)
	j	$BB0_11
	nop
$BB0_21:
	j	$BB0_22
	nop
$BB0_22:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 52($fp)
	lw	$2, 40($fp)
	slt	$1, $1, $2
	beqz	$1, $BB0_25
	nop
# %bb.23:                               #   in Loop: Header=BB0_22 Depth=1
	j	$BB0_24
	nop
$BB0_24:                                #   in Loop: Header=BB0_22 Depth=1
	lw	$1, 8($fp)                      # 4-byte Folded Reload
	lw	$2, 52($fp)
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$1, 0($1)
	lw	$2, 68($fp)
	lw	$3, 44($fp)
	sll	$3, $3, 2
	addu	$2, $2, $3
	sw	$1, 0($2)
	lw	$1, 44($fp)
	addiu	$1, $1, 1
	sw	$1, 44($fp)
	lw	$1, 52($fp)
	addiu	$1, $1, 1
	sw	$1, 52($fp)
	j	$BB0_22
	nop
$BB0_25:
	j	$BB0_26
	nop
$BB0_26:                                # =>This Inner Loop Header: Depth=1
	lw	$1, 48($fp)
	lw	$2, 36($fp)
	slt	$1, $1, $2
	beqz	$1, $BB0_29
	nop
# %bb.27:                               #   in Loop: Header=BB0_26 Depth=1
	j	$BB0_28
	nop
$BB0_28:                                #   in Loop: Header=BB0_26 Depth=1
	lw	$1, 12($fp)                     # 4-byte Folded Reload
	lw	$2, 48($fp)
	sll	$2, $2, 2
	addu	$1, $1, $2
	lw	$1, 0($1)
	lw	$2, 68($fp)
	lw	$3, 44($fp)
	sll	$3, $3, 2
	addu	$2, $2, $3
	sw	$1, 0($2)
	lw	$1, 44($fp)
	addiu	$1, $1, 1
	sw	$1, 44($fp)
	lw	$1, 48($fp)
	addiu	$1, $1, 1
	sw	$1, 48($fp)
	j	$BB0_26
	nop
$BB0_29:
	lw	$1, 32($fp)
	move	$sp, $1
	move	$sp, $fp
	lw	$fp, 72($sp)                    # 4-byte Folded Reload
	lw	$ra, 76($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 80
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	_Z5mergePiiii
$func_end0:
	.size	_Z5mergePiiii, ($func_end0)-_Z5mergePiiii
                                        # -- End function
	.globl	_Z9mergeSortPiii                # -- Begin function _Z9mergeSortPiii
	.p2align	2
	.type	_Z9mergeSortPiii,@function
	.set	nomicromips
	.set	nomips16
	.ent	_Z9mergeSortPiii
_Z9mergeSortPiii:                       # @_Z9mergeSortPiii
	.cfi_startproc
	.frame	$fp,40,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -40
	.cfi_def_cfa_offset 40
	sw	$ra, 36($sp)                    # 4-byte Folded Spill
	sw	$fp, 32($sp)                    # 4-byte Folded Spill
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp, $sp
	.cfi_def_cfa_register 30
	sw	$4, 28($fp)
	sw	$5, 24($fp)
	sw	$6, 20($fp)
	lw	$1, 24($fp)
	lw	$2, 20($fp)
	slt	$1, $1, $2
	beqz	$1, $BB1_3
	nop
# %bb.1:
	j	$BB1_2
	nop
$BB1_2:
	lw	$1, 24($fp)
	lw	$2, 20($fp)
	addu	$1, $1, $2
	srl	$2, $1, 31
	addu	$1, $1, $2
	sra	$1, $1, 1
	sw	$1, 16($fp)
	lw	$4, 28($fp)
	lw	$5, 24($fp)
	lw	$6, 16($fp)
	jal	_Z9mergeSortPiii
	nop
	lw	$4, 28($fp)
	lw	$1, 16($fp)
	addiu	$5, $1, 1
	lw	$6, 20($fp)
	jal	_Z9mergeSortPiii
	nop
	lw	$4, 28($fp)
	lw	$5, 24($fp)
	lw	$6, 16($fp)
	lw	$7, 20($fp)
	jal	_Z5mergePiiii
	nop
	j	$BB1_3
	nop
$BB1_3:
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	_Z9mergeSortPiii
$func_end1:
	.size	_Z9mergeSortPiii, ($func_end1)-_Z9mergeSortPiii
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
	sw	$zero, 52($fp)
	lui	$1, %hi($__const.main.arr)
	lw	$2, %lo($__const.main.arr)($1)
	sw	$2, 24($fp)
	addiu	$1, $1, %lo($__const.main.arr)
	lw	$2, 24($1)
	sw	$2, 48($fp)
	lw	$2, 20($1)
	sw	$2, 44($fp)
	lw	$2, 16($1)
	sw	$2, 40($fp)
	lw	$2, 12($1)
	sw	$2, 36($fp)
	lw	$2, 8($1)
	sw	$2, 32($fp)
	lw	$1, 4($1)
	sw	$1, 28($fp)
	addiu	$1, $zero, 7
	sw	$1, 20($fp)
	lw	$1, 20($fp)
	addiu	$6, $1, -1
	addiu	$4, $fp, 24
	addiu	$5, $zero, 0
	sw	$5, 16($fp)                     # 4-byte Folded Spill
	jal	_Z9mergeSortPiii
	nop
	lw	$2, 16($fp)                     # 4-byte Folded Reload
	move	$sp, $fp
	lw	$fp, 56($sp)                    # 4-byte Folded Reload
	lw	$ra, 60($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 64
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	main
$func_end2:
	.size	main, ($func_end2)-main
	.cfi_endproc
                                        # -- End function
	.type	$__const.main.arr,@object       # @__const.main.arr
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
$__const.main.arr:
	.4byte	9                               # 0x9
	.4byte	14                              # 0xe
	.4byte	4                               # 0x4
	.4byte	6                               # 0x6
	.4byte	5                               # 0x5
	.4byte	8                               # 0x8
	.4byte	7                               # 0x7
	.size	$__const.main.arr, 28

	.ident	"Homebrew clang version 16.0.3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z5mergePiiii
	.addrsig_sym _Z9mergeSortPiii
	.text
