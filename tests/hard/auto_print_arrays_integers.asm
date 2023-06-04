	.text
	.abicalls
	.option	pic0
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.text
	.file	"print_arrays_integers.cpp"
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
	.globl	_Z12_print_arrayPii             # -- Begin function _Z12_print_arrayPii
	.p2align	2
	.type	_Z12_print_arrayPii,@function
	.set	nomicromips
	.set	nomips16
	.ent	_Z12_print_arrayPii
_Z12_print_arrayPii:                    # @_Z12_print_arrayPii
	.frame	$fp,40,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -40
	sw	$ra, 36($sp)                    # 4-byte Folded Spill
	sw	$fp, 32($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 28($fp)
	sw	$5, 24($fp)
	sw	$zero, 20($fp)
	j	$BB2_1
	nop
$BB2_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 20($fp)
	lw	$2, 24($fp)
	slt	$1, $1, $2
	beqz	$1, $BB2_5
	nop
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	j	$BB2_3
	nop
$BB2_3:                                 #   in Loop: Header=BB2_1 Depth=1
	lw	$1, 28($fp)
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
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	_Z12_print_arrayPii
$func_end2:
	.size	_Z12_print_arrayPii, ($func_end2)-_Z12_print_arrayPii
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
	addiu	$sp, $sp, -16
	addiu	$4, $fp, 32
	jal	_Z10_input_intRi
	nop
	addiu	$sp, $sp, 16
	lw	$1, 32($fp)
	sw	$1, 8($fp)                      # 4-byte Folded Spill
	move	$2, $sp
	sw	$2, 28($fp)
	sll	$2, $1, 2
	addiu	$2, $2, 7
	addiu	$3, $zero, -8
	and	$3, $2, $3
	move	$2, $sp
	subu	$2, $2, $3
	sw	$2, 12($fp)                     # 4-byte Folded Spill
	move	$sp, $2
	sw	$1, 24($fp)
	sw	$zero, 20($fp)
	j	$BB3_1
	nop
$BB3_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$2, 8($fp)                      # 4-byte Folded Reload
	lw	$1, 20($fp)
	lui	$3, 16383
	ori	$3, $3, 65535
	and	$2, $2, $3
	sltu	$1, $1, $2
	beqz	$1, $BB3_5
	nop
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	j	$BB3_3
	nop
$BB3_3:                                 #   in Loop: Header=BB3_1 Depth=1
	lw	$1, 12($fp)                     # 4-byte Folded Reload
	lw	$2, 20($fp)
	sll	$2, $2, 2
	addu	$4, $1, $2
	addiu	$sp, $sp, -16
	jal	_Z10_input_intRi
	nop
	addiu	$sp, $sp, 16
	j	$BB3_4
	nop
$BB3_4:                                 #   in Loop: Header=BB3_1 Depth=1
	lw	$1, 20($fp)
	addiu	$1, $1, 1
	sw	$1, 20($fp)
	j	$BB3_1
	nop
$BB3_5:
	sw	$zero, 16($fp)
	j	$BB3_6
	nop
$BB3_6:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 16($fp)
	lw	$2, 32($fp)
	slt	$1, $1, $2
	beqz	$1, $BB3_10
	nop
# %bb.7:                                #   in Loop: Header=BB3_6 Depth=1
	j	$BB3_8
	nop
$BB3_8:                                 #   in Loop: Header=BB3_6 Depth=1
	lw	$1, 12($fp)                     # 4-byte Folded Reload
	lw	$2, 16($fp)
	sll	$2, $2, 2
	addu	$2, $1, $2
	lw	$1, 0($2)
	mul	$1, $1, $1
	sw	$1, 0($2)
	j	$BB3_9
	nop
$BB3_9:                                 #   in Loop: Header=BB3_6 Depth=1
	lw	$1, 16($fp)
	addiu	$1, $1, 1
	sw	$1, 16($fp)
	j	$BB3_6
	nop
$BB3_10:
	lw	$4, 12($fp)                     # 4-byte Folded Reload
	lw	$5, 32($fp)
	addiu	$sp, $sp, -16
	jal	_Z12_print_arrayPii
	nop
	addiu	$sp, $sp, 16
	lw	$1, 28($fp)
	move	$sp, $1
	lw	$2, 36($fp)
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
$func_end3:
	.size	main, ($func_end3)-main
                                        # -- End function
	.ident	"Homebrew clang version 16.0.3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z10_input_intRi
	.addrsig_sym _Z10_print_intRi
	.addrsig_sym _Z12_print_arrayPii
	.text
