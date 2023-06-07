	.text
	.abicalls
	.option	pic0
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.text
	.file	"strings_basic.cpp"
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
$func_end0:
	.size	_Z13_print_stringPc, ($func_end0)-_Z13_print_stringPc
                                        # -- End function
	.globl	_Z11_print_charRc               # -- Begin function _Z11_print_charRc
	.p2align	2
	.type	_Z11_print_charRc,@function
	.set	nomicromips
	.set	nomips16
	.ent	_Z11_print_charRc
_Z11_print_charRc:                      # @_Z11_print_charRc
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
	.end	_Z11_print_charRc
$func_end1:
	.size	_Z11_print_charRc, ($func_end1)-_Z11_print_charRc
                                        # -- End function
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
$func_end2:
	.size	_Z11_input_charRc, ($func_end2)-_Z11_input_charRc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	2
	.type	main,@function
	.set	nomicromips
	.set	nomips16
	.ent	main
main:                                   # @main
	.frame	$fp,88,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	addiu	$sp, $sp, -88
	sw	$ra, 84($sp)                    # 4-byte Folded Spill
	sw	$fp, 80($sp)                    # 4-byte Folded Spill
	move	$fp, $sp
	sw	$zero, 76($fp)
	lui	$4, %hi($__const.main.message)
	addiu	$3, $4, %lo($__const.main.message)
                                        # implicit-def: $at
	lwl	$1, 11($3)
	lwr	$1, 14($3)
	swl	$1, 71($fp)
                                        # implicit-def: $v0
	lwl	$2, %lo($__const.main.message)($4)
	lwr	$2, 3($3)
	sw	$2, 60($fp)
                                        # implicit-def: $v0
	lwl	$2, 8($3)
	lwr	$2, 11($3)
	sw	$2, 68($fp)
                                        # implicit-def: $v0
	lwl	$2, 4($3)
	lwr	$2, 7($3)
	sw	$2, 64($fp)
	swr	$1, 74($fp)
	addiu	$1, $fp, 60
	sw	$1, 20($fp)                     # 4-byte Folded Spill
	addiu	$1, $1, 4
	sw	$1, 16($fp)                     # 4-byte Folded Spill
	lui	$1, %hi($__const.main.tada)
                                        # implicit-def: $v0
	lwl	$2, %lo($__const.main.tada)($1)
	addiu	$1, $1, %lo($__const.main.tada)
	lwr	$2, 3($1)
	sw	$2, 52($fp)
	lbu	$2, 5($1)
	lbu	$1, 4($1)
	sll	$1, $1, 8
	or	$1, $1, $2
	sh	$1, 56($fp)
	lui	$1, %hi($__const.main.arr)
	addiu	$2, $1, %lo($__const.main.arr)
	lw	$3, 16($2)
	sw	$3, 48($fp)
	lw	$3, 12($2)
	sw	$3, 44($fp)
	lw	$3, 8($2)
	sw	$3, 40($fp)
	lw	$2, 4($2)
	sw	$2, 36($fp)
	lw	$1, %lo($__const.main.arr)($1)
	sw	$1, 32($fp)
	addiu	$4, $fp, 28
	sw	$4, 24($fp)                     # 4-byte Folded Spill
	jal	_Z11_input_charRc
	nop
	lw	$4, 16($fp)                     # 4-byte Folded Reload
	lbu	$1, 28($fp)
	addiu	$1, $1, 5
	sb	$1, 28($fp)
	jal	_Z11_print_charRc
	nop
	lw	$4, 20($fp)                     # 4-byte Folded Reload
	jal	_Z13_print_stringPc
	nop
	addiu	$4, $fp, 52
	jal	_Z13_print_stringPc
	nop
	lw	$4, 24($fp)                     # 4-byte Folded Reload
	jal	_Z11_print_charRc
	nop
	addiu	$2, $zero, 0
	move	$sp, $fp
	lw	$fp, 80($sp)                    # 4-byte Folded Reload
	lw	$ra, 84($sp)                    # 4-byte Folded Reload
	addiu	$sp, $sp, 88
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	main
$func_end3:
	.size	main, ($func_end3)-main
                                        # -- End function
	.type	$__const.main.message,@object   # @__const.main.message
	.section	.rodata.str1.1,"aMS",@progbits,1
$__const.main.message:
	.asciz	"Hello, World!!"
	.size	$__const.main.message, 15

	.type	$__const.main.tada,@object      # @__const.main.tada
$__const.main.tada:
	.asciz	"abcde"
	.size	$__const.main.tada, 6

	.type	$__const.main.arr,@object       # @__const.main.arr
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
$__const.main.arr:
	.4byte	10                              # 0xa
	.4byte	30                              # 0x1e
	.4byte	50                              # 0x32
	.4byte	40                              # 0x28
	.4byte	20                              # 0x14
	.size	$__const.main.arr, 20

	.ident	"Homebrew clang version 16.0.3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z13_print_stringPc
	.addrsig_sym _Z11_print_charRc
	.addrsig_sym _Z11_input_charRc
	.text
