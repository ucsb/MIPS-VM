	.text
	.abicalls
	.option	pic0
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.text
	.file	"multiple_calls_functions.cpp"
	.globl	_Z13increment_onei              # -- Begin function _Z13increment_onei
	.p2align	2
	.type	_Z13increment_onei,@function
	.set	nomicromips
	.set	nomips16
	.ent	_Z13increment_onei
_Z13increment_onei:                     # @_Z13increment_onei
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
	addiu	$2, $1, 1
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	_Z13increment_onei
$func_end0:
	.size	_Z13increment_onei, ($func_end0)-_Z13increment_onei
                                        # -- End function
	.globl	_Z13increment_twoi              # -- Begin function _Z13increment_twoi
	.p2align	2
	.type	_Z13increment_twoi,@function
	.set	nomicromips
	.set	nomips16
	.ent	_Z13increment_twoi
_Z13increment_twoi:                     # @_Z13increment_twoi
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
	addiu	$2, $1, 2
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	_Z13increment_twoi
$func_end1:
	.size	_Z13increment_twoi, ($func_end1)-_Z13increment_twoi
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
	sw	$zero, 28($fp)
	sw	$zero, 32($fp)
	j	$BB2_1
	nop
$BB2_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 32($fp)
	slti	$1, $1, 10
	beqz	$1, $BB2_9
	nop
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	j	$BB2_3
	nop
$BB2_3:                                 #   in Loop: Header=BB2_1 Depth=1
	lw	$1, 32($fp)
	srl	$2, $1, 31
	addu	$2, $1, $2
	addiu	$3, $zero, -2
	and	$2, $2, $3
	subu	$1, $1, $2
	bnez	$1, $BB2_6
	nop
# %bb.4:                                #   in Loop: Header=BB2_1 Depth=1
	j	$BB2_5
	nop
$BB2_5:                                 #   in Loop: Header=BB2_1 Depth=1
	lw	$1, 28($fp)
	sw	$1, 24($fp)                     # 4-byte Folded Spill
	lw	$4, 32($fp)
	jal	_Z13increment_twoi
	nop
	lw	$1, 24($fp)                     # 4-byte Folded Reload
	addu	$1, $1, $2
	sw	$1, 28($fp)
	j	$BB2_7
	nop
$BB2_6:                                 #   in Loop: Header=BB2_1 Depth=1
	lw	$1, 28($fp)
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	lw	$4, 32($fp)
	jal	_Z13increment_onei
	nop
	lw	$1, 20($fp)                     # 4-byte Folded Reload
	addu	$1, $1, $2
	sw	$1, 28($fp)
	j	$BB2_7
	nop
$BB2_7:                                 #   in Loop: Header=BB2_1 Depth=1
	j	$BB2_8
	nop
$BB2_8:                                 #   in Loop: Header=BB2_1 Depth=1
	lw	$1, 32($fp)
	addiu	$1, $1, 1
	sw	$1, 32($fp)
	j	$BB2_1
	nop
$BB2_9:
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
	.addrsig_sym _Z13increment_onei
	.addrsig_sym _Z13increment_twoi
	.text
