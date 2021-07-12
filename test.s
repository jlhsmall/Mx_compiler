	.text

	.globl	init_main
	.p2align	2
init_main:
.LBB0: 
	mv %0, s0
	mv %1, s1
	mv %2, s2
	mv %3, s3
	mv %4, s4
	mv %5, s5
	mv %6, s6
	mv %7, s7
	mv %8, s8
	mv %9, s9
	mv %10, s10
	mv %11, s11
	mv %12, ra
	mv a0, zero
	j .LBB1
.LBB1: 
	mv s0, %0
	mv s1, %1
	mv s2, %2
	mv s3, %3
	mv s4, %4
	mv s5, %5
	mv s6, %6
	mv s7, %7
	mv s8, %8
	mv s9, %9
	mv s10, %10
	mv s11, %11
	mv ra, %12
	ret

	.globl	main
	.p2align	2
main:
.LBB2: 
	mv %13, s0
	mv %14, s1
	mv %15, s2
	mv %16, s3
	mv %17, s4
	mv %18, s5
	mv %19, s6
	mv %20, s7
	mv %21, s8
	mv %22, s9
	mv %23, s10
	mv %24, s11
	mv %25, ra
	call init_main
	lw %26, n
	call getInt
	mv %27, a0
	li %28, 4
	mv a0, %28
	call malloc
	mv %29, a0
	mv %30, %29
	sw %27, 0(%30)
	lui %31, %hi(n)
	sw %27, %lo(n)(%31)
	lw %32, p
	call getInt
	mv %33, a0
	li %34, 4
	mv a0, %34
	call malloc
	mv %35, a0
	mv %36, %35
	sw %33, 0(%36)
	lui %37, %hi(p)
	sw %33, %lo(p)(%37)
	lw %38, k
	call getInt
	mv %39, a0
	li %40, 4
	mv a0, %40
	call malloc
	mv %41, a0
	mv %42, %41
	sw %39, 0(%42)
	lui %43, %hi(k)
	sw %39, %lo(k)(%43)
	lw %44, p
	lw %45, k
	sub %46, %44, %45
	li %47, 1
	blt %47, %46, .LBB3
	j .LBB4
.LBB3: 
	la %48, .str.4
	mv a0, %48
	call print
	mv %49, a0
	j .LBB4
.LBB4: 
	lw %50, i
	lw %51, p
	lw %52, k
	sub %53, %51, %52
	lui %54, %hi(i)
	sw %53, %lo(i)(%54)
	j .LBB5
.LBB5: 
	lw %55, i
	lw %56, p
	lw %57, k
	add %58, %56, %57
	bge %58, %55, .LBB6
	j .LBB7
.LBB6: 
	lw %59, i
	slti %60, %59, 1
	xori %60, %60, 1
	mv %61, %60
	li %62, 1
	bge %59, %62, .LBB8
	j .LBB9
.LBB7: 
	lw %85, p
	lw %86, k
	add %87, %85, %86
	lw %88, n
	blt %87, %88, .LBB10
	j .LBB11
.LBB8: 
	lw %63, i
	lw %64, n
	slt %65, %64, %63
	xori %65, %65, 1
	mv %61, %65
	j .LBB9
.LBB9: 
	bnez %61, .LBB12
	j .LBB13
.LBB10: 
	la %89, .str.8
	mv a0, %89
	call print
	mv %90, a0
	j .LBB11
.LBB11: 
	mv a0, zero
	j .LBB14
.LBB12: 
	lw %66, i
	lw %67, p
	beq %66, %67, .LBB15
	j .LBB16
.LBB13: 
	j .LBB17
.LBB14: 
	mv s0, %13
	mv s1, %14
	mv s2, %15
	mv s3, %16
	mv s4, %17
	mv s5, %18
	mv s6, %19
	mv s7, %20
	mv s8, %21
	mv s9, %22
	mv s10, %23
	mv s11, %24
	mv ra, %25
	ret
.LBB15: 
	la %68, .str.5
	mv a0, %68
	call print
	mv %69, a0
	lw %70, i
	mv a0, %70
	call toString
	mv %71, a0
	li %72, 4
	mv a0, %72
	call malloc
	mv %73, a0
	mv %74, %73
	sw %71, 0(%74)
	mv a0, %71
	call print
	mv %75, a0
	la %76, .str.6
	mv a0, %76
	call print
	mv %77, a0
	j .LBB18
.LBB16: 
	lw %78, i
	mv a0, %78
	call printInt
	mv %79, a0
	la %80, .str.7
	mv a0, %80
	call print
	mv %81, a0
	j .LBB18
.LBB17: 
	lw %82, i
	addi %83, %82, 1
	lui %84, %hi(i)
	sw %83, %lo(i)(%84)
	j .LBB5
.LBB18: 
	j .LBB13


	.section	.data
	.globl	p
	.p2align	2
p:
	.word	0

	.globl	k
	.p2align	2
k:
	.word	0

	.globl	i
	.p2align	2
i:
	.word	0

	.globl	n
	.p2align	2
n:
	.word	0

.str.4:
	.asciz	"<< "

.str.5:
	.asciz	"("

.str.6:
	.asciz	") "

.str.7:
	.asciz	" "

.str.8:
	.asciz	">> "

