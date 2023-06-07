	.text
	.abicalls
	.option	pic0
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.text
	.file	"kmp_algo.cpp"
	.globl	_Z11_input_charRc               # -- Begin function _Z11_input_charRc
	.p2align	2
	.type	_Z11_input_charRc,@function
	.set	nomicromips
	.set	nomips16
	.ent	_Z11_input_charRc
_Z11_input_charRc:                      # @_Z11_input_charRc
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
	.end	_Z11_input_charRc
$func_end0:
	.size	_Z11_input_charRc, ($func_end0)-_Z11_input_charRc
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
$func_end2:
	.size	_Z10_print_intRi, ($func_end2)-_Z10_print_intRi
                                        # -- End function
	.globl	_Z11_get_stringv                # -- Begin function _Z11_get_stringv
	.p2align	2
	.type	_Z11_get_stringv,@function
	.set	nomicromips
	.set	nomips16
	.ent	_Z11_get_stringv
_Z11_get_stringv:                       # @_Z11_get_stringv
	.frame	$fp,8,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -8
	sw	$ra, 4($sp)                     # 4-byte Folded Spill
	sw	$fp, 0($sp)                     # 4-byte Folded Spill
	move	$fp, $sp
	move	$sp, $fp
	lw	$fp, 0($sp)                     # 4-byte Folded Reload
	lw	$ra, 4($sp)                     # 4-byte Folded Reload
	addiu	$sp, $sp, 8
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	_Z11_get_stringv
$func_end3:
	.size	_Z11_get_stringv, ($func_end3)-_Z11_get_stringv
                                        # -- End function
	.globl	_Z13_input_stringPci            # -- Begin function _Z13_input_stringPci
	.p2align	2
	.type	_Z13_input_stringPci,@function
	.set	nomicromips
	.set	nomips16
	.ent	_Z13_input_stringPci
_Z13_input_stringPci:                   # @_Z13_input_stringPci
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
	j	$BB4_1
	nop
$BB4_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 20($fp)
	lw	$2, 24($fp)
	slt	$1, $1, $2
	beqz	$1, $BB4_5
	nop
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
	j	$BB4_3
	nop
$BB4_3:                                 #   in Loop: Header=BB4_1 Depth=1
	lw	$1, 28($fp)
	lw	$2, 20($fp)
	addu	$4, $1, $2
	jal	_Z11_input_charRc
	nop
	j	$BB4_4
	nop
$BB4_4:                                 #   in Loop: Header=BB4_1 Depth=1
	lw	$1, 20($fp)
	addiu	$1, $1, 1
	sw	$1, 20($fp)
	j	$BB4_1
	nop
$BB4_5:
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	_Z13_input_stringPci
$func_end4:
	.size	_Z13_input_stringPci, ($func_end4)-_Z13_input_stringPci
                                        # -- End function
	.globl	_Z13_print_stringPc             # -- Begin function _Z13_print_stringPc
	.p2align	2
	.type	_Z13_print_stringPc,@function
	.set	nomicromips
	.set	nomips16
	.ent	_Z13_print_stringPc
_Z13_print_stringPc:                    # @_Z13_print_stringPc
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
	.end	_Z13_print_stringPc
$func_end5:
	.size	_Z13_print_stringPc, ($func_end5)-_Z13_print_stringPc
                                        # -- End function
	.globl	_Z6strlenPc                     # -- Begin function _Z6strlenPc
	.p2align	2
	.type	_Z6strlenPc,@function
	.set	nomicromips
	.set	nomips16
	.ent	_Z6strlenPc
_Z6strlenPc:                            # @_Z6strlenPc
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
	sw	$zero, 0($fp)
	j	$BB6_1
	nop
$BB6_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 4($fp)
	lw	$2, 0($fp)
	addu	$1, $1, $2
	lb	$1, 0($1)
	beqz	$1, $BB6_4
	nop
# %bb.2:                                #   in Loop: Header=BB6_1 Depth=1
	j	$BB6_3
	nop
$BB6_3:                                 #   in Loop: Header=BB6_1 Depth=1
	lw	$1, 0($fp)
	addiu	$1, $1, 1
	sw	$1, 0($fp)
	j	$BB6_1
	nop
$BB6_4:
	lw	$2, 0($fp)
	move	$sp, $fp
	lw	$fp, 8($sp)                     # 4-byte Folded Reload
	lw	$ra, 12($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	_Z6strlenPc
$func_end6:
	.size	_Z6strlenPc, ($func_end6)-_Z6strlenPc
                                        # -- End function
	.globl	_Z15computeLPSArrayPciPi        # -- Begin function _Z15computeLPSArrayPciPi
	.p2align	2
	.type	_Z15computeLPSArrayPciPi,@function
	.set	nomicromips
	.set	nomips16
	.ent	_Z15computeLPSArrayPciPi
_Z15computeLPSArrayPciPi:               # @_Z15computeLPSArrayPciPi
	.frame	$fp,32,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -32
	sw	$ra, 28($sp)                    # 4-byte Folded Spill
	sw	$fp, 24($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$4, 20($fp)
	sw	$5, 16($fp)
	sw	$6, 12($fp)
	sw	$zero, 8($fp)
	lw	$1, 12($fp)
	sw	$zero, 0($1)
	addiu	$1, $zero, 1
	sw	$1, 4($fp)
	j	$BB7_1
	nop
$BB7_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 4($fp)
	lw	$2, 16($fp)
	slt	$1, $1, $2
	beqz	$1, $BB7_12
	nop
# %bb.2:                                #   in Loop: Header=BB7_1 Depth=1
	j	$BB7_3
	nop
$BB7_3:                                 #   in Loop: Header=BB7_1 Depth=1
	lw	$2, 20($fp)
	lw	$1, 4($fp)
	addu	$1, $2, $1
	lb	$1, 0($1)
	lw	$3, 8($fp)
	addu	$2, $2, $3
	lb	$2, 0($2)
	bne	$1, $2, $BB7_6
	nop
# %bb.4:                                #   in Loop: Header=BB7_1 Depth=1
	j	$BB7_5
	nop
$BB7_5:                                 #   in Loop: Header=BB7_1 Depth=1
	lw	$1, 8($fp)
	addiu	$1, $1, 1
	sw	$1, 8($fp)
	lw	$1, 8($fp)
	lw	$2, 12($fp)
	lw	$3, 4($fp)
	sll	$3, $3, 2
	addu	$2, $2, $3
	sw	$1, 0($2)
	lw	$1, 4($fp)
	addiu	$1, $1, 1
	sw	$1, 4($fp)
	j	$BB7_11
	nop
$BB7_6:                                 #   in Loop: Header=BB7_1 Depth=1
	lw	$1, 8($fp)
	beqz	$1, $BB7_9
	nop
# %bb.7:                                #   in Loop: Header=BB7_1 Depth=1
	j	$BB7_8
	nop
$BB7_8:                                 #   in Loop: Header=BB7_1 Depth=1
	lw	$2, 12($fp)
	lw	$1, 8($fp)
	sll	$1, $1, 2
	addu	$1, $1, $2
	lw	$1, -4($1)
	sw	$1, 8($fp)
	j	$BB7_10
	nop
$BB7_9:                                 #   in Loop: Header=BB7_1 Depth=1
	lw	$1, 12($fp)
	lw	$2, 4($fp)
	sll	$2, $2, 2
	addu	$1, $1, $2
	sw	$zero, 0($1)
	lw	$1, 4($fp)
	addiu	$1, $1, 1
	sw	$1, 4($fp)
	j	$BB7_10
	nop
$BB7_10:                                #   in Loop: Header=BB7_1 Depth=1
	j	$BB7_11
	nop
$BB7_11:                                #   in Loop: Header=BB7_1 Depth=1
	j	$BB7_1
	nop
$BB7_12:
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	_Z15computeLPSArrayPciPi
$func_end7:
	.size	_Z15computeLPSArrayPciPi, ($func_end7)-_Z15computeLPSArrayPciPi
                                        # -- End function
	.globl	_Z9KMPSearchPcS_                # -- Begin function _Z9KMPSearchPcS_
	.p2align	2
	.type	_Z9KMPSearchPcS_,@function
	.set	nomicromips
	.set	nomips16
	.ent	_Z9KMPSearchPcS_
_Z9KMPSearchPcS_:                       # @_Z9KMPSearchPcS_
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
	sw	$4, 44($fp)
	sw	$5, 40($fp)
	lw	$4, 44($fp)
	addiu	$sp, $sp, -16
	jal	_Z6strlenPc
	nop
	addiu	$sp, $sp, 16
	sw	$2, 36($fp)
	lw	$4, 40($fp)
	addiu	$sp, $sp, -16
	jal	_Z6strlenPc
	nop
	addiu	$sp, $sp, 16
	sw	$2, 32($fp)
	lw	$1, 36($fp)
	move	$2, $sp
	sw	$2, 28($fp)
	sll	$2, $1, 2
	addiu	$2, $2, 7
	addiu	$3, $zero, -8
	and	$3, $2, $3
	move	$2, $sp
	subu	$6, $2, $3
	sw	$6, 8($fp)                      # 4-byte Folded Spill
	move	$sp, $6
	sw	$1, 24($fp)
	lw	$4, 44($fp)
	lw	$5, 36($fp)
	addiu	$sp, $sp, -16
	jal	_Z15computeLPSArrayPciPi
	nop
	addiu	$sp, $sp, 16
	sw	$zero, 20($fp)
	sw	$zero, 16($fp)
	j	$BB8_1
	nop
$BB8_1:                                 # =>This Inner Loop Header: Depth=1
	lw	$1, 32($fp)
	lw	$2, 20($fp)
	subu	$1, $1, $2
	lw	$2, 36($fp)
	lw	$3, 16($fp)
	subu	$2, $2, $3
	slt	$1, $1, $2
	bnez	$1, $BB8_20
	nop
# %bb.2:                                #   in Loop: Header=BB8_1 Depth=1
	j	$BB8_3
	nop
$BB8_3:                                 #   in Loop: Header=BB8_1 Depth=1
	lw	$1, 44($fp)
	lw	$2, 16($fp)
	addu	$1, $1, $2
	lb	$1, 0($1)
	lw	$2, 40($fp)
	lw	$3, 20($fp)
	addu	$2, $2, $3
	lb	$2, 0($2)
	bne	$1, $2, $BB8_6
	nop
# %bb.4:                                #   in Loop: Header=BB8_1 Depth=1
	j	$BB8_5
	nop
$BB8_5:                                 #   in Loop: Header=BB8_1 Depth=1
	lw	$1, 16($fp)
	addiu	$1, $1, 1
	sw	$1, 16($fp)
	lw	$1, 20($fp)
	addiu	$1, $1, 1
	sw	$1, 20($fp)
	j	$BB8_6
	nop
$BB8_6:                                 #   in Loop: Header=BB8_1 Depth=1
	lw	$1, 16($fp)
	lw	$2, 36($fp)
	bne	$1, $2, $BB8_9
	nop
# %bb.7:                                #   in Loop: Header=BB8_1 Depth=1
	j	$BB8_8
	nop
$BB8_8:                                 #   in Loop: Header=BB8_1 Depth=1
	addiu	$sp, $sp, -16
	lui	$1, %hi($.str)
	addiu	$4, $1, %lo($.str)
	jal	_Z13_print_stringPc
	nop
	addiu	$sp, $sp, 16
	lw	$1, 20($fp)
	lw	$2, 16($fp)
	subu	$1, $1, $2
	sw	$1, 12($fp)
	addiu	$sp, $sp, -16
	addiu	$4, $fp, 12
	jal	_Z10_print_intRi
	nop
	lw	$2, 8($fp)                      # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	lw	$1, 16($fp)
	sll	$1, $1, 2
	addu	$1, $1, $2
	lw	$1, -4($1)
	sw	$1, 16($fp)
	j	$BB8_19
	nop
$BB8_9:                                 #   in Loop: Header=BB8_1 Depth=1
	lw	$1, 20($fp)
	lw	$2, 32($fp)
	slt	$1, $1, $2
	beqz	$1, $BB8_18
	nop
# %bb.10:                               #   in Loop: Header=BB8_1 Depth=1
	j	$BB8_11
	nop
$BB8_11:                                #   in Loop: Header=BB8_1 Depth=1
	lw	$1, 44($fp)
	lw	$2, 16($fp)
	addu	$1, $1, $2
	lb	$1, 0($1)
	lw	$2, 40($fp)
	lw	$3, 20($fp)
	addu	$2, $2, $3
	lb	$2, 0($2)
	beq	$1, $2, $BB8_18
	nop
# %bb.12:                               #   in Loop: Header=BB8_1 Depth=1
	j	$BB8_13
	nop
$BB8_13:                                #   in Loop: Header=BB8_1 Depth=1
	lw	$1, 16($fp)
	beqz	$1, $BB8_16
	nop
# %bb.14:                               #   in Loop: Header=BB8_1 Depth=1
	j	$BB8_15
	nop
$BB8_15:                                #   in Loop: Header=BB8_1 Depth=1
	lw	$2, 8($fp)                      # 4-byte Folded Reload
	lw	$1, 16($fp)
	sll	$1, $1, 2
	addu	$1, $1, $2
	lw	$1, -4($1)
	sw	$1, 16($fp)
	j	$BB8_17
	nop
$BB8_16:                                #   in Loop: Header=BB8_1 Depth=1
	lw	$1, 20($fp)
	addiu	$1, $1, 1
	sw	$1, 20($fp)
	j	$BB8_17
	nop
$BB8_17:                                #   in Loop: Header=BB8_1 Depth=1
	j	$BB8_18
	nop
$BB8_18:                                #   in Loop: Header=BB8_1 Depth=1
	j	$BB8_19
	nop
$BB8_19:                                #   in Loop: Header=BB8_1 Depth=1
	j	$BB8_1
	nop
$BB8_20:
	lw	$1, 28($fp)
	move	$sp, $1
	move	$sp, $fp
	lw	$fp, 48($sp)                    # 4-byte Folded Reload
	lw	$ra, 52($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 56
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	_Z9KMPSearchPcS_
$func_end8:
	.size	_Z9KMPSearchPcS_, ($func_end8)-_Z9KMPSearchPcS_
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
	lui	$1, %hi($.str.1)
	addiu	$4, $1, %lo($.str.1)
	jal	_Z13_print_stringPc
	nop
	addiu	$sp, $sp, 16
	addiu	$sp, $sp, -16
	jal	_Z11_get_stringv
	nop
	addiu	$sp, $sp, 16
	addiu	$sp, $sp, -16
	addiu	$4, $fp, 32
	jal	_Z10_input_intRi
	nop
	addiu	$sp, $sp, 16
	lw	$1, 32($fp)
	move	$2, $sp
	sw	$2, 28($fp)
	addiu	$2, $1, 7
	addiu	$3, $zero, -8
	sw	$3, 4($fp)                      # 4-byte Folded Spill
	and	$3, $2, $3
	move	$2, $sp
	subu	$4, $2, $3
	sw	$4, 12($fp)                     # 4-byte Folded Spill
	move	$sp, $4
	sw	$1, 24($fp)
	lw	$5, 32($fp)
	addiu	$sp, $sp, -16
	jal	_Z13_input_stringPci
	nop
	addiu	$sp, $sp, 16
	addiu	$sp, $sp, -16
	lui	$1, %hi($.str.2)
	addiu	$4, $1, %lo($.str.2)
	jal	_Z13_print_stringPc
	nop
	addiu	$sp, $sp, 16
	addiu	$sp, $sp, -16
	jal	_Z11_get_stringv
	nop
	addiu	$sp, $sp, 16
	addiu	$sp, $sp, -16
	addiu	$4, $fp, 20
	jal	_Z10_input_intRi
	nop
	lw	$3, 4($fp)                      # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	lw	$1, 20($fp)
	addiu	$2, $1, 7
	and	$3, $2, $3
	move	$2, $sp
	subu	$4, $2, $3
	sw	$4, 8($fp)                      # 4-byte Folded Spill
	move	$sp, $4
	sw	$1, 16($fp)
	lw	$5, 20($fp)
	addiu	$sp, $sp, -16
	jal	_Z13_input_stringPci
	nop
	lw	$4, 8($fp)                      # 4-byte Folded Reload
	lw	$5, 12($fp)                     # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	addiu	$sp, $sp, -16
	jal	_Z9KMPSearchPcS_
	nop
	addiu	$sp, $sp, 16
	sw	$zero, 36($fp)
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
$func_end9:
	.size	main, ($func_end9)-main
                                        # -- End function
	.type	$.str,@object                   # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str:
	.asciz	"Found pattern at index: "
	.size	$.str, 25

	.type	$.str.1,@object                 # @.str.1
$.str.1:
	.asciz	"Enter the text to be searched at:\n"
	.size	$.str.1, 35

	.type	$.str.2,@object                 # @.str.2
$.str.2:
	.asciz	"Enter the pattern to be searched for:\n"
	.size	$.str.2, 39

	.ident	"Homebrew clang version 16.0.3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z11_input_charRc
	.addrsig_sym _Z10_input_intRi
	.addrsig_sym _Z10_print_intRi
	.addrsig_sym _Z11_get_stringv
	.addrsig_sym _Z13_input_stringPci
	.addrsig_sym _Z13_print_stringPc
	.addrsig_sym _Z6strlenPc
	.addrsig_sym _Z15computeLPSArrayPciPi
	.addrsig_sym _Z9KMPSearchPcS_
	.text
