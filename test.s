	.text

	.globl	main
	.p2align	2
main:
.LBB0: 
	addi sp, sp, -168
	sw ra, 164(sp)
	call init_main
	la t0, object
	lw t2, 0(t0)
	sw t2, 0(sp)
	la t0, object
	mv a0, t0
	li t2, 2
	sw t2, 4(sp)
	lw t0, 4(sp)
	mv a1, t0
	li t2, 3
	sw t2, 8(sp)
	lw t0, 8(sp)
	mv a2, t0
	call A__func1
	li t2, 4
	sw t2, 12(sp)
	lw t0, 12(sp)
	mv a0, t0
	call malloc
	mv t2, a0
	sw t2, 16(sp)
	lw t0, 16(sp)
	mv t2, t0
	sw t2, 20(sp)
	lw t0, 24(sp)
	lw t1, 20(sp)
	sw t0, 0(t1)
	la t0, object
	lw t2, 0(t0)
	sw t2, 28(sp)
	la t0, object
	mv a0, t0
	mv a1, zero
	li t2, 1
	sw t2, 32(sp)
	lw t0, 32(sp)
	mv a2, t0
	call A__set
	mv t2, a0
	sw t2, 36(sp)
	li t2, 4
	sw t2, 40(sp)
	lw t0, 40(sp)
	mv a0, t0
	call malloc
	mv t2, a0
	sw t2, 44(sp)
	lw t0, 44(sp)
	mv t2, t0
	sw t2, 48(sp)
	lw t0, 36(sp)
	lw t1, 48(sp)
	sw t0, 0(t1)
	lw t0, 48(sp)
	mv a0, t0
	li t2, 1
	sw t2, 52(sp)
	lw t0, 52(sp)
	mv a1, t0
	mv a2, zero
	call A__set
	mv t2, a0
	sw t2, 56(sp)
	li t2, 4
	sw t2, 60(sp)
	lw t0, 60(sp)
	mv a0, t0
	call malloc
	mv t2, a0
	sw t2, 64(sp)
	lw t0, 64(sp)
	mv t2, t0
	sw t2, 68(sp)
	lw t0, 56(sp)
	lw t1, 68(sp)
	sw t0, 0(t1)
	la t0, object
	lw t2, 0(t0)
	sw t2, 72(sp)
	la t0, object
	lw t2, 0(t0)
	sw t2, 76(sp)
	la t0, object
	mv a0, t0
	call A__getThis
	mv t2, a0
	sw t2, 80(sp)
	li t2, 4
	sw t2, 84(sp)
	lw t0, 84(sp)
	mv a0, t0
	call malloc
	mv t2, a0
	sw t2, 88(sp)
	lw t0, 88(sp)
	mv t2, t0
	sw t2, 92(sp)
	lw t0, 80(sp)
	lw t1, 92(sp)
	sw t0, 0(t1)
	la t0, object
	mv a0, t0
	lw t0, 80(sp)
	mv a1, t0
	call A__copy
	mv t2, a0
	sw t2, 96(sp)
	li t2, 4
	sw t2, 100(sp)
	lw t0, 100(sp)
	mv a0, t0
	call malloc
	mv t2, a0
	sw t2, 104(sp)
	lw t0, 104(sp)
	mv t2, t0
	sw t2, 108(sp)
	lw t0, 96(sp)
	lw t1, 108(sp)
	sw t0, 0(t1)
	la t0, object
	lw t2, 0(t0)
	sw t2, 112(sp)
	la t0, object
	mv a0, t0
	call A__getThis
	mv t2, a0
	sw t2, 116(sp)
	li t2, 4
	sw t2, 120(sp)
	lw t0, 120(sp)
	mv a0, t0
	call malloc
	mv t2, a0
	sw t2, 124(sp)
	lw t0, 124(sp)
	mv t2, t0
	sw t2, 128(sp)
	lw t0, 116(sp)
	lw t1, 128(sp)
	sw t0, 0(t1)
	lw t0, 128(sp)
	mv a0, t0
	call A__getThis
	mv t2, a0
	sw t2, 132(sp)
	li t2, 4
	sw t2, 136(sp)
	lw t0, 136(sp)
	mv a0, t0
	call malloc
	mv t2, a0
	sw t2, 140(sp)
	lw t0, 140(sp)
	mv t2, t0
	sw t2, 144(sp)
	lw t0, 132(sp)
	lw t1, 144(sp)
	sw t0, 0(t1)
	lw t0, 108(sp)
	mv a0, t0
	lw t0, 132(sp)
	mv a1, t0
	call A__copy
	mv t2, a0
	sw t2, 148(sp)
	li t2, 4
	sw t2, 152(sp)
	lw t0, 152(sp)
	mv a0, t0
	call malloc
	mv t2, a0
	sw t2, 156(sp)
	lw t0, 156(sp)
	mv t2, t0
	sw t2, 160(sp)
	lw t0, 148(sp)
	lw t1, 160(sp)
	sw t0, 0(t1)
	mv a0, zero
	lw ra, 164(sp)
	addi sp, sp, 168
	ret

	.globl	A__func1
	.p2align	2
A__func1:
.LBB1: 
	addi sp, sp, -96
	sw ra, 92(sp)
	mv t2, a0
	sw t2, 0(sp)
	mv t2, a1
	sw t2, 4(sp)
	mv t2, a2
	sw t2, 8(sp)
	li a0, 4
	call malloc
	mv t2, a0
	sw t2, 12(sp)
	lw t0, 0(sp)
	lw t1, 12(sp)
	sw t0, 0(t1)
	li a0, 4
	call malloc
	mv t2, a0
	sw t2, 16(sp)
	lw t0, 4(sp)
	lw t1, 16(sp)
	sw t0, 0(t1)
	li a0, 4
	call malloc
	mv t2, a0
	sw t2, 20(sp)
	lw t0, 8(sp)
	lw t1, 20(sp)
	sw t0, 0(t1)
	lw t0, 12(sp)
	lw t2, 0(t0)
	sw t2, 24(sp)
	lw t0, 12(sp)
	addi t2, t0, 0
	sw t2, 28(sp)
	lw t0, 28(sp)
	lw t2, 0(t0)
	sw t2, 32(sp)
	lw t0, 16(sp)
	lw t2, 0(t0)
	sw t2, 36(sp)
	lw t0, 32(sp)
	lw t1, 36(sp)
	mul t2, t0, t1
	sw t2, 40(sp)
	lw t0, 12(sp)
	lw t2, 0(t0)
	sw t2, 44(sp)
	lw t0, 12(sp)
	addi t2, t0, 0
	sw t2, 48(sp)
	lw t0, 48(sp)
	lw t2, 0(t0)
	sw t2, 52(sp)
	lw t0, 20(sp)
	lw t2, 0(t0)
	sw t2, 56(sp)
	lw t0, 52(sp)
	lw t1, 56(sp)
	mul t2, t0, t1
	sw t2, 60(sp)
	lw t0, 40(sp)
	mv a0, t0
	lw t0, 60(sp)
	mv a1, t0
	call null
	li t2, 4
	sw t2, 64(sp)
	lw t0, 64(sp)
	mv a0, t0
	call malloc
	mv t2, a0
	sw t2, 68(sp)
	lw t0, 68(sp)
	mv t2, t0
	sw t2, 72(sp)
	lw t0, 76(sp)
	lw t1, 72(sp)
	sw t0, 0(t1)
	lw ra, 92(sp)
	addi sp, sp, 96
	ret

	.globl	A__func2
	.p2align	2
A__func2:
.LBB2: 
	addi sp, sp, -104
	sw ra, 100(sp)
	mv t2, a0
	sw t2, 0(sp)
	mv t2, a1
	sw t2, 4(sp)
	mv t2, a2
	sw t2, 8(sp)
	li a0, 4
	call malloc
	mv t2, a0
	sw t2, 12(sp)
	lw t0, 0(sp)
	lw t1, 12(sp)
	sw t0, 0(t1)
	li a0, 4
	call malloc
	mv t2, a0
	sw t2, 16(sp)
	lw t0, 4(sp)
	lw t1, 16(sp)
	sw t0, 0(t1)
	li a0, 4
	call malloc
	mv t2, a0
	sw t2, 20(sp)
	lw t0, 8(sp)
	lw t1, 20(sp)
	sw t0, 0(t1)
	lw t0, 12(sp)
	addi t2, t0, 0
	sw t2, 24(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 28(sp)
	lw t0, 12(sp)
	lw t2, 0(t0)
	sw t2, 32(sp)
	lw t0, 12(sp)
	addi t2, t0, 0
	sw t2, 36(sp)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 40(sp)
	lw t0, 28(sp)
	lw t1, 40(sp)
	mul t2, t0, t1
	sw t2, 44(sp)
	lw t0, 12(sp)
	addi t2, t0, 0
	sw t2, 48(sp)
	lw t0, 48(sp)
	lw t2, 0(t0)
	sw t2, 52(sp)
	lw t0, 12(sp)
	lw t2, 0(t0)
	sw t2, 56(sp)
	lw t0, 12(sp)
	addi t2, t0, 0
	sw t2, 60(sp)
	lw t0, 60(sp)
	lw t2, 0(t0)
	sw t2, 64(sp)
	lw t0, 52(sp)
	lw t1, 64(sp)
	mul t2, t0, t1
	sw t2, 68(sp)
	lw t0, 44(sp)
	mv a0, t0
	lw t0, 68(sp)
	mv a1, t0
	call null
	li t2, 4
	sw t2, 72(sp)
	lw t0, 72(sp)
	mv a0, t0
	call malloc
	mv t2, a0
	sw t2, 76(sp)
	lw t0, 76(sp)
	mv t2, t0
	sw t2, 80(sp)
	lw t0, 84(sp)
	lw t1, 80(sp)
	sw t0, 0(t1)
	lw ra, 100(sp)
	addi sp, sp, 104
	ret

	.globl	init_main
	.p2align	2
init_main:
.LBB3: 
	addi sp, sp, -4
	addi sp, sp, 4
	ret

	.globl	A__copy
	.p2align	2
A__copy:
.LBB4: 
	addi sp, sp, -32
	sw ra, 28(sp)
	mv t2, a0
	sw t2, 0(sp)
	mv t2, a1
	sw t2, 4(sp)
	li a0, 4
	call malloc
	mv t2, a0
	sw t2, 8(sp)
	lw t0, 0(sp)
	lw t1, 8(sp)
	sw t0, 0(t1)
	li a0, 4
	call malloc
	mv t2, a0
	sw t2, 12(sp)
	lw t0, 4(sp)
	lw t1, 12(sp)
	sw t0, 0(t1)
	lw t0, 8(sp)
	lw t2, 0(t0)
	sw t2, 16(sp)
	lw t0, 16(sp)
	mv a0, t0
	lw ra, 28(sp)
	addi sp, sp, 32
	ret

	.globl	A__set
	.p2align	2
A__set:
.LBB5: 
	addi sp, sp, -152
	sw ra, 148(sp)
	mv t2, a0
	sw t2, 0(sp)
	mv t2, a1
	sw t2, 4(sp)
	mv t2, a2
	sw t2, 8(sp)
	li a0, 4
	call malloc
	mv t2, a0
	sw t2, 12(sp)
	lw t0, 0(sp)
	lw t1, 12(sp)
	sw t0, 0(t1)
	li a0, 4
	call malloc
	mv t2, a0
	sw t2, 16(sp)
	lw t0, 4(sp)
	lw t1, 16(sp)
	sw t0, 0(t1)
	li a0, 4
	call malloc
	mv t2, a0
	sw t2, 20(sp)
	lw t0, 8(sp)
	lw t1, 20(sp)
	sw t0, 0(t1)
	lw t0, 12(sp)
	addi t2, t0, 0
	sw t2, 24(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 28(sp)
	lw t0, 12(sp)
	addi t2, t0, 0
	sw t2, 32(sp)
	lw t0, 32(sp)
	lw t2, 0(t0)
	sw t2, 36(sp)
	lw t0, 28(sp)
	mv a0, t0
	lw t0, 36(sp)
	mv a1, t0
	call null
	mv t2, a0
	sw t2, 40(sp)
	li t2, 4
	sw t2, 44(sp)
	lw t0, 44(sp)
	mv a0, t0
	call malloc
	mv t2, a0
	sw t2, 48(sp)
	lw t0, 48(sp)
	mv t2, t0
	sw t2, 52(sp)
	lw t0, 40(sp)
	lw t1, 52(sp)
	sw t0, 0(t1)
	lw t0, 12(sp)
	lw t2, 0(t0)
	sw t2, 56(sp)
	lw t0, 12(sp)
	addi t2, t0, 0
	sw t2, 60(sp)
	lw t0, 60(sp)
	lw t2, 0(t0)
	sw t2, 64(sp)
	lw t0, 12(sp)
	lw t2, 0(t0)
	sw t2, 68(sp)
	lw t0, 12(sp)
	addi t2, t0, 0
	sw t2, 72(sp)
	lw t0, 72(sp)
	lw t2, 0(t0)
	sw t2, 76(sp)
	lw t0, 52(sp)
	mv a0, t0
	lw t0, 64(sp)
	mv a1, t0
	lw t0, 76(sp)
	mv a2, t0
	call A__set
	mv t2, a0
	sw t2, 80(sp)
	li t2, 4
	sw t2, 84(sp)
	lw t0, 84(sp)
	mv a0, t0
	call malloc
	mv t2, a0
	sw t2, 88(sp)
	lw t0, 88(sp)
	mv t2, t0
	sw t2, 92(sp)
	lw t0, 80(sp)
	lw t1, 92(sp)
	sw t0, 0(t1)
	lw t0, 16(sp)
	lw t2, 0(t0)
	sw t2, 96(sp)
	lw t0, 20(sp)
	lw t2, 0(t0)
	sw t2, 100(sp)
	lw t0, 92(sp)
	mv a0, t0
	lw t0, 96(sp)
	mv a1, t0
	lw t0, 100(sp)
	mv a2, t0
	call A__set
	mv t2, a0
	sw t2, 104(sp)
	li t2, 4
	sw t2, 108(sp)
	lw t0, 108(sp)
	mv a0, t0
	call malloc
	mv t2, a0
	sw t2, 112(sp)
	lw t0, 112(sp)
	mv t2, t0
	sw t2, 116(sp)
	lw t0, 104(sp)
	lw t1, 116(sp)
	sw t0, 0(t1)
	lw t0, 116(sp)
	mv a0, t0
	call A__getThis
	mv t2, a0
	sw t2, 120(sp)
	li t2, 4
	sw t2, 124(sp)
	lw t0, 124(sp)
	mv a0, t0
	call malloc
	mv t2, a0
	sw t2, 128(sp)
	lw t0, 128(sp)
	mv t2, t0
	sw t2, 132(sp)
	lw t0, 120(sp)
	lw t1, 132(sp)
	sw t0, 0(t1)
	lw t0, 120(sp)
	mv a0, t0
	lw ra, 148(sp)
	addi sp, sp, 152
	ret

	.globl	A__getThis
	.p2align	2
A__getThis:
.LBB6: 
	addi sp, sp, -100
	sw ra, 96(sp)
	mv t2, a0
	sw t2, 0(sp)
	li a0, 4
	call malloc
	mv t2, a0
	sw t2, 4(sp)
	lw t0, 0(sp)
	lw t1, 4(sp)
	sw t0, 0(t1)
	call null
	mv t2, a0
	sw t2, 8(sp)
	li t2, 4
	sw t2, 12(sp)
	lw t0, 12(sp)
	mv a0, t0
	call malloc
	mv t2, a0
	sw t2, 16(sp)
	lw t0, 16(sp)
	mv t2, t0
	sw t2, 20(sp)
	lw t0, 8(sp)
	lw t1, 20(sp)
	sw t0, 0(t1)
	lw t0, 20(sp)
	mv a0, t0
	call A__getThis
	mv t2, a0
	sw t2, 24(sp)
	li t2, 4
	sw t2, 28(sp)
	lw t0, 28(sp)
	mv a0, t0
	call malloc
	mv t2, a0
	sw t2, 32(sp)
	lw t0, 32(sp)
	mv t2, t0
	sw t2, 36(sp)
	lw t0, 24(sp)
	lw t1, 36(sp)
	sw t0, 0(t1)
	lw t0, 36(sp)
	mv a0, t0
	call A__getThis
	mv t2, a0
	sw t2, 40(sp)
	li t2, 4
	sw t2, 44(sp)
	lw t0, 44(sp)
	mv a0, t0
	call malloc
	mv t2, a0
	sw t2, 48(sp)
	lw t0, 48(sp)
	mv t2, t0
	sw t2, 52(sp)
	lw t0, 40(sp)
	lw t1, 52(sp)
	sw t0, 0(t1)
	lw t0, 52(sp)
	mv a0, t0
	call A__getThis
	mv t2, a0
	sw t2, 56(sp)
	li t2, 4
	sw t2, 60(sp)
	lw t0, 60(sp)
	mv a0, t0
	call malloc
	mv t2, a0
	sw t2, 64(sp)
	lw t0, 64(sp)
	mv t2, t0
	sw t2, 68(sp)
	lw t0, 56(sp)
	lw t1, 68(sp)
	sw t0, 0(t1)
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 72(sp)
	lw t0, 68(sp)
	mv a0, t0
	lw t0, 72(sp)
	mv a1, t0
	call A__copy
	mv t2, a0
	sw t2, 76(sp)
	li t2, 4
	sw t2, 80(sp)
	lw t0, 80(sp)
	mv a0, t0
	call malloc
	mv t2, a0
	sw t2, 84(sp)
	lw t0, 84(sp)
	mv t2, t0
	sw t2, 88(sp)
	lw t0, 76(sp)
	lw t1, 88(sp)
	sw t0, 0(t1)
	lw t0, 76(sp)
	mv a0, t0
	lw ra, 96(sp)
	addi sp, sp, 100
	ret


	.section	.data
	.globl	object
	.p2align	2
object:
	.word	0

