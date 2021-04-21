	.text
	.file	"builtin.c"
	.globl	print                   # -- Begin function print
	.p2align	2
	.type	print,@function
print:                                  # @print
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	sw	a0, -16(s0)
	lw	a1, -16(s0)
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	call	printf
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end0:
	.size	print, .Lfunc_end0-print
	.cfi_endproc
                                        # -- End function
	.globl	println                 # -- Begin function println
	.p2align	2
	.type	println,@function
println:                                # @println
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	sw	a0, -16(s0)
	lw	a1, -16(s0)
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	call	printf
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end1:
	.size	println, .Lfunc_end1-println
	.cfi_endproc
                                        # -- End function
	.globl	printInt                # -- Begin function printInt
	.p2align	2
	.type	printInt,@function
printInt:                               # @printInt
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	sw	a0, -12(s0)
	lw	a1, -12(s0)
	lui	a0, %hi(.L.str.2)
	addi	a0, a0, %lo(.L.str.2)
	call	printf
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end2:
	.size	printInt, .Lfunc_end2-printInt
	.cfi_endproc
                                        # -- End function
	.globl	printlnInt              # -- Begin function printlnInt
	.p2align	2
	.type	printlnInt,@function
printlnInt:                             # @printlnInt
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	sw	a0, -12(s0)
	lw	a1, -12(s0)
	lui	a0, %hi(.L.str.3)
	addi	a0, a0, %lo(.L.str.3)
	call	printf
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end3:
	.size	printlnInt, .Lfunc_end3-printlnInt
	.cfi_endproc
                                        # -- End function
	.globl	getString               # -- Begin function getString
	.p2align	2
	.type	getString,@function
getString:                              # @getString
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	addi	a0, zero, 1000
	mv	a1, zero
	call	malloc
	sw	a0, -16(s0)
	lw	a1, -16(s0)
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	call	__isoc99_scanf
	lw	a0, -16(s0)
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end4:
	.size	getString, .Lfunc_end4-getString
	.cfi_endproc
                                        # -- End function
	.globl	getInt                  # -- Begin function getInt
	.p2align	2
	.type	getInt,@function
getInt:                                 # @getInt
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	lui	a0, %hi(.L.str.2)
	addi	a0, a0, %lo(.L.str.2)
	addi	a1, s0, -12
	call	__isoc99_scanf
	lw	a0, -12(s0)
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end5:
	.size	getInt, .Lfunc_end5-getInt
	.cfi_endproc
                                        # -- End function
	.globl	toString                # -- Begin function toString
	.p2align	2
	.type	toString,@function
toString:                               # @toString
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -64
	.cfi_def_cfa_offset 64
	sw	ra, 60(sp)
	sw	s0, 56(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 64
	.cfi_def_cfa s0, 0
	sw	a0, -20(s0)
	lw	a0, -20(s0)
	bnez	a0, .LBB6_2
	j	.LBB6_1
.LBB6_1:
	addi	a0, zero, 2
	mv	a1, zero
	call	malloc
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	addi	a1, zero, 48
	sb	a1, 0(a0)
	lw	a0, -24(s0)
	sb	zero, 1(a0)
	lw	a0, -24(s0)
	sw	a0, -16(s0)
	j	.LBB6_13
.LBB6_2:
	sw	zero, -28(s0)
	sh	zero, -30(s0)
	lw	a0, -20(s0)
	addi	a1, zero, -1
	blt	a1, a0, .LBB6_4
	j	.LBB6_3
.LBB6_3:
	addi	a0, zero, 1
	sh	a0, -30(s0)
	sw	a0, -28(s0)
	lw	a0, -20(s0)
	neg	a0, a0
	sw	a0, -20(s0)
	j	.LBB6_4
.LBB6_4:
	sw	zero, -36(s0)
	lw	a0, -20(s0)
	sw	a0, -40(s0)
	j	.LBB6_5
.LBB6_5:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -40(s0)
	addi	a1, zero, 1
	blt	a0, a1, .LBB6_7
	j	.LBB6_6
.LBB6_6:                                #   in Loop: Header=BB6_5 Depth=1
	lw	a0, -40(s0)
	addi	a1, zero, 10
	call	__modsi3
	lw	a1, -36(s0)
	addi	a2, a1, 1
	sw	a2, -36(s0)
	slli	a1, a1, 1
	addi	a2, s0, -64
	add	a1, a2, a1
	sh	a0, 0(a1)
	lw	a0, -40(s0)
	addi	a1, zero, 10
	call	__divsi3
	sw	a0, -40(s0)
	j	.LBB6_5
.LBB6_7:
	lw	a0, -28(s0)
	lw	a1, -36(s0)
	add	a0, a0, a1
	addi	a0, a0, 1
	srai	a1, a0, 31
	call	malloc
	sw	a0, -24(s0)
	lhu	a0, -30(s0)
	beqz	a0, .LBB6_9
	j	.LBB6_8
.LBB6_8:
	lw	a0, -24(s0)
	addi	a1, zero, 45
	sb	a1, 0(a0)
	j	.LBB6_9
.LBB6_9:
	j	.LBB6_10
.LBB6_10:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -36(s0)
	addi	a1, zero, 1
	blt	a0, a1, .LBB6_12
	j	.LBB6_11
.LBB6_11:                               #   in Loop: Header=BB6_10 Depth=1
	lw	a0, -36(s0)
	addi	a0, a0, -1
	sw	a0, -36(s0)
	slli	a0, a0, 1
	addi	a1, s0, -64
	add	a0, a1, a0
	lh	a0, 0(a0)
	addi	a0, a0, 48
	lw	a1, -24(s0)
	lw	a2, -28(s0)
	addi	a3, a2, 1
	sw	a3, -28(s0)
	add	a1, a1, a2
	sb	a0, 0(a1)
	j	.LBB6_10
.LBB6_12:
	lw	a0, -24(s0)
	lw	a1, -28(s0)
	add	a0, a0, a1
	sb	zero, 0(a0)
	lw	a0, -24(s0)
	sw	a0, -16(s0)
	j	.LBB6_13
.LBB6_13:
	lw	a0, -16(s0)
	lw	s0, 56(sp)
	lw	ra, 60(sp)
	addi	sp, sp, 64
	ret
.Lfunc_end6:
	.size	toString, .Lfunc_end6-toString
	.cfi_endproc
                                        # -- End function
	.globl	stringAdd               # -- Begin function stringAdd
	.p2align	2
	.type	stringAdd,@function
stringAdd:                              # @stringAdd
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -48
	.cfi_def_cfa_offset 48
	sw	ra, 44(sp)
	sw	s0, 40(sp)
	sw	s1, 36(sp)
	sw	s2, 32(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	addi	s0, sp, 48
	.cfi_def_cfa s0, 0
	sw	a0, -24(s0)
	sw	a1, -32(s0)
	lw	a0, -24(s0)
	call	strlen
	mv	s1, a0
	mv	s2, a1
	lw	a0, -32(s0)
	call	strlen
	add	a1, s2, a1
	add	a2, s1, a0
	sltu	a0, a2, s1
	add	a1, a1, a0
	addi	a0, a2, 1
	sltu	a2, a0, a2
	add	a1, a1, a2
	call	malloc
	sw	a0, -40(s0)
	lw	a0, -40(s0)
	lw	a1, -24(s0)
	call	strcpy
	lw	a0, -40(s0)
	lw	a1, -32(s0)
	call	strcat
	lw	a0, -40(s0)
	lw	s2, 32(sp)
	lw	s1, 36(sp)
	lw	s0, 40(sp)
	lw	ra, 44(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end7:
	.size	stringAdd, .Lfunc_end7-stringAdd
	.cfi_endproc
                                        # -- End function
	.globl	stringEq                # -- Begin function stringEq
	.p2align	2
	.type	stringEq,@function
stringEq:                               # @stringEq
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	sw	a0, -16(s0)
	sw	a1, -24(s0)
	lw	a0, -16(s0)
	lw	a1, -24(s0)
	call	strcmp
	seqz	a0, a0
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end8:
	.size	stringEq, .Lfunc_end8-stringEq
	.cfi_endproc
                                        # -- End function
	.globl	stringNe                # -- Begin function stringNe
	.p2align	2
	.type	stringNe,@function
stringNe:                               # @stringNe
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	sw	a0, -16(s0)
	sw	a1, -24(s0)
	lw	a0, -16(s0)
	lw	a1, -24(s0)
	call	strcmp
	snez	a0, a0
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end9:
	.size	stringNe, .Lfunc_end9-stringNe
	.cfi_endproc
                                        # -- End function
	.globl	stringGe                # -- Begin function stringGe
	.p2align	2
	.type	stringGe,@function
stringGe:                               # @stringGe
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	sw	a0, -16(s0)
	sw	a1, -24(s0)
	lw	a0, -16(s0)
	lw	a1, -24(s0)
	call	strcmp
	not	a0, a0
	srli	a0, a0, 31
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end10:
	.size	stringGe, .Lfunc_end10-stringGe
	.cfi_endproc
                                        # -- End function
	.globl	stringGt                # -- Begin function stringGt
	.p2align	2
	.type	stringGt,@function
stringGt:                               # @stringGt
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	sw	a0, -16(s0)
	sw	a1, -24(s0)
	lw	a0, -16(s0)
	lw	a1, -24(s0)
	call	strcmp
	sgtz	a0, a0
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end11:
	.size	stringGt, .Lfunc_end11-stringGt
	.cfi_endproc
                                        # -- End function
	.globl	stringLe                # -- Begin function stringLe
	.p2align	2
	.type	stringLe,@function
stringLe:                               # @stringLe
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	sw	a0, -16(s0)
	sw	a1, -24(s0)
	lw	a0, -16(s0)
	lw	a1, -24(s0)
	call	strcmp
	slti	a0, a0, 1
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end12:
	.size	stringLe, .Lfunc_end12-stringLe
	.cfi_endproc
                                        # -- End function
	.globl	stringLt                # -- Begin function stringLt
	.p2align	2
	.type	stringLt,@function
stringLt:                               # @stringLt
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	sw	a0, -16(s0)
	sw	a1, -24(s0)
	lw	a0, -16(s0)
	lw	a1, -24(s0)
	call	strcmp
	srli	a0, a0, 31
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end13:
	.size	stringLt, .Lfunc_end13-stringLt
	.cfi_endproc
                                        # -- End function
	.globl	string__length          # -- Begin function string__length
	.p2align	2
	.type	string__length,@function
string__length:                         # @string__length
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	sw	a0, -16(s0)
	lw	a0, -16(s0)
	call	strlen
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end14:
	.size	string__length, .Lfunc_end14-string__length
	.cfi_endproc
                                        # -- End function
	.globl	string__substring       # -- Begin function string__substring
	.p2align	2
	.type	string__substring,@function
string__substring:                      # @string__substring
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	sw	a0, -16(s0)
	sw	a1, -20(s0)
	sw	a2, -24(s0)
	lw	a0, -24(s0)
	lw	a1, -20(s0)
	sub	a0, a0, a1
	sw	a0, -28(s0)
	lw	a0, -28(s0)
	addi	a0, a0, 1
	srai	a1, a0, 31
	call	malloc
	sw	a0, -32(s0)
	lw	a0, -32(s0)
	lw	a1, -16(s0)
	lw	a2, -20(s0)
	add	a1, a1, a2
	lw	a2, -28(s0)
	call	memcpy
	lw	a0, -32(s0)
	lw	a1, -28(s0)
	add	a0, a0, a1
	sb	zero, 0(a0)
	lw	a0, -32(s0)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end15:
	.size	string__substring, .Lfunc_end15-string__substring
	.cfi_endproc
                                        # -- End function
	.globl	string__parseInt        # -- Begin function string__parseInt
	.p2align	2
	.type	string__parseInt,@function
string__parseInt:                       # @string__parseInt
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	sw	a0, -16(s0)
	lw	a0, -16(s0)
	lui	a1, %hi(.L.str.2)
	addi	a1, a1, %lo(.L.str.2)
	addi	a2, s0, -20
	call	__isoc99_sscanf
	lw	a0, -20(s0)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end16:
	.size	string__parseInt, .Lfunc_end16-string__parseInt
	.cfi_endproc
                                        # -- End function
	.globl	string__ord             # -- Begin function string__ord
	.p2align	2
	.type	string__ord,@function
string__ord:                            # @string__ord
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	sw	a0, -16(s0)
	sw	a1, -20(s0)
	lw	a0, -16(s0)
	lw	a1, -20(s0)
	add	a0, a0, a1
	lb	a0, 0(a0)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end17:
	.size	string__ord, .Lfunc_end17-string__ord
	.cfi_endproc
                                        # -- End function
	.globl	array__size             # -- Begin function array__size
	.p2align	2
	.type	array__size,@function
array__size:                            # @array__size
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	sw	a0, -16(s0)
	lw	a0, -16(s0)
	lw	a0, -4(a0)
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end18:
	.size	array__size, .Lfunc_end18-array__size
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s"
	.size	.L.str, 3

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%s\n"
	.size	.L.str.1, 4

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%d"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%d\n"
	.size	.L.str.3, 4

	.ident	"clang version 10.0.0-4ubuntu1~18.04.2 "
	.section	".note.GNU-stack","",@progbits
