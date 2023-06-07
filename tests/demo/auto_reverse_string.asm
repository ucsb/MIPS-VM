	.text
	.abicalls
	.option	pic0
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.text
	.file	"reverse_string.cpp"
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
	.globl	_Z13stringReversePcii           # -- Begin function _Z13stringReversePcii
	.p2align	2
	.type	_Z13stringReversePcii,@function
	.set	nomicromips
	.set	nomips16
	.ent	_Z13stringReversePcii
_Z13stringReversePcii:                  # @_Z13stringReversePcii
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
	bnez	$1, $BB7_3
	nop
# %bb.1:
	j	$BB7_2
	nop
$BB7_2:
	j	$BB7_4
	nop
$BB7_3:
	lw	$1, 28($fp)
	lw	$2, 24($fp)
	addu	$1, $1, $2
	lbu	$1, 0($1)
	sb	$1, 16($fp)
	lw	$2, 28($fp)
	lw	$1, 20($fp)
	addu	$1, $2, $1
	lbu	$1, 0($1)
	lw	$3, 24($fp)
	addu	$2, $2, $3
	sb	$1, 0($2)
	lbu	$1, 16($fp)
	lw	$2, 28($fp)
	lw	$3, 20($fp)
	addu	$2, $2, $3
	sb	$1, 0($2)
	lw	$4, 28($fp)
	lw	$1, 24($fp)
	addiu	$5, $1, 1
	sw	$5, 24($fp)
	lw	$1, 20($fp)
	addiu	$6, $1, -1
	sw	$6, 20($fp)
	jal	_Z13stringReversePcii
	nop
	j	$BB7_4
	nop
$BB7_4:
	move	$sp, $fp
	lw	$fp, 32($sp)                    # 4-byte Folded Reload
	lw	$ra, 36($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 40
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	_Z13stringReversePcii
$func_end7:
	.size	_Z13stringReversePcii, ($func_end7)-_Z13stringReversePcii
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
	.frame	$fp,32,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	sw	$ra, 28($sp)                    # 4-byte Folded Spill
	sw	$fp, 24($sp)                    # 4-byte Folded Spill
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp, $sp
	.cfi_def_cfa_register 30
	sw	$zero, 20($fp)
	addiu	$sp, $sp, -16
	lui	$1, %hi($.str)
	addiu	$4, $1, %lo($.str)
	jal	_Z13_print_stringPc
	nop
	addiu	$sp, $sp, 16
	addiu	$sp, $sp, -16
	jal	_Z11_get_stringv
	nop
	addiu	$sp, $sp, 16
	addiu	$sp, $sp, -16
	addiu	$4, $fp, 16
	jal	_Z10_input_intRi
	nop
	addiu	$sp, $sp, 16
	lw	$1, 16($fp)
	move	$2, $sp
	sw	$2, 12($fp)
	addiu	$2, $1, 7
	addiu	$3, $zero, -8
	and	$3, $2, $3
	move	$2, $sp
	subu	$4, $2, $3
	sw	$4, 4($fp)                      # 4-byte Folded Spill
	move	$sp, $4
	sw	$1, 8($fp)
	lw	$5, 16($fp)
	addiu	$sp, $sp, -16
	jal	_Z13_input_stringPci
	nop
	lw	$4, 4($fp)                      # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	addiu	$sp, $sp, -16
	jal	_Z6strlenPc
	nop
	lw	$4, 4($fp)                      # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	addiu	$6, $2, -1
	addiu	$sp, $sp, -16
	addiu	$5, $zero, 0
	jal	_Z13stringReversePcii
	nop
	addiu	$sp, $sp, 16
	addiu	$sp, $sp, -16
	lui	$1, %hi($.str.1)
	addiu	$4, $1, %lo($.str.1)
	jal	_Z13_print_stringPc
	nop
	lw	$4, 4($fp)                      # 4-byte Folded Reload
	addiu	$sp, $sp, 16
	addiu	$sp, $sp, -16
	jal	_Z13_print_stringPc
	nop
	addiu	$sp, $sp, 16
	addiu	$sp, $sp, -16
	lui	$1, %hi($.str.2)
	addiu	$4, $1, %lo($.str.2)
	jal	_Z13_print_stringPc
	nop
	addiu	$sp, $sp, 16
	sw	$zero, 20($fp)
	lw	$1, 12($fp)
	move	$sp, $1
	lw	$2, 20($fp)
	move	$sp, $fp
	lw	$fp, 24($sp)                    # 4-byte Folded Reload
	lw	$ra, 28($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	main
$func_end8:
	.size	main, ($func_end8)-main
	.cfi_endproc
                                        # -- End function
	.type	$.str,@object                   # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str:
	.asciz	"Enter a string to reverse:\n"
	.size	$.str, 28

	.type	$.str.1,@object                 # @.str.1
$.str.1:
	.asciz	"The string after reversing is:\n"
	.size	$.str.1, 32

	.type	$.str.2,@object                 # @.str.2
$.str.2:
	.asciz	"\n"
	.size	$.str.2, 2

	.ident	"Homebrew clang version 16.0.3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z11_input_charRc
	.addrsig_sym _Z10_input_intRi
	.addrsig_sym _Z11_get_stringv
	.addrsig_sym _Z13_input_stringPci
	.addrsig_sym _Z13_print_stringPc
	.addrsig_sym _Z6strlenPc
	.addrsig_sym _Z13stringReversePcii
	.text
