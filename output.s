	.text

	.globl	init_main
	.p2align	2
init_main:
.LBB0: 
	addi sp, sp, -4
	la t1, x
	sw zero, 0(t1)
	la t1, y
	sw zero, 0(t1)
	la t1, z
	sw zero, 0(t1)
	addi sp, sp, 4
	ret

	.globl	main
	.p2align	2
main:
.LBB1: 
	addi sp, sp, -228
	sw ra, 224(sp)
	call init_main
	la t0, n
	lw t2, 0(t0)
	sw t2, 0(sp)
	call getInt
	mv t2, a0
	sw t2, 4(sp)
	li t2, 4
	sw t2, 8(sp)
	lw t0, 8(sp)
	mv a0, t0
	call malloc
	mv t2, a0
	sw t2, 12(sp)
	lw t0, 12(sp)
	mv t2, t0
	sw t2, 16(sp)
	lw t0, 4(sp)
	lw t1, 16(sp)
	sw t0, 0(t1)
	lw t0, 4(sp)
	la t1, n
	sw t0, 0(t1)
	la t0, i
	lw t2, 0(t0)
	sw t2, 20(sp)
	la t1, i
	sw zero, 0(t1)
	j .LBB2
.LBB2: 
	la t0, i
	lw t2, 0(t0)
	sw t2, 24(sp)
	la t0, n
	lw t2, 0(t0)
	sw t2, 28(sp)
	lw t0, 24(sp)
	lw t1, 28(sp)
	blt t0, t1, .LBB3
	j .LBB4
.LBB3: 
	la t0, p
	lw t2, 0(t0)
	sw t2, 32(sp)
	call getInt
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
	lw t0, 36(sp)
	la t1, p
	sw t0, 0(t1)
	la t0, q
	lw t2, 0(t0)
	sw t2, 52(sp)
	call getInt
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
	lw t0, 56(sp)
	la t1, q
	sw t0, 0(t1)
	la t0, r
	lw t2, 0(t0)
	sw t2, 72(sp)
	call getInt
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
	la t1, r
	sw t0, 0(t1)
	la t0, x
	lw t2, 0(t0)
	sw t2, 92(sp)
	la t0, x
	lw t2, 0(t0)
	sw t2, 96(sp)
	la t0, p
	lw t2, 0(t0)
	sw t2, 100(sp)
	lw t0, 96(sp)
	lw t1, 100(sp)
	add t2, t0, t1
	sw t2, 104(sp)
	lw t0, 104(sp)
	la t1, x
	sw t0, 0(t1)
	la t0, y
	lw t2, 0(t0)
	sw t2, 108(sp)
	la t0, y
	lw t2, 0(t0)
	sw t2, 112(sp)
	la t0, q
	lw t2, 0(t0)
	sw t2, 116(sp)
	lw t0, 112(sp)
	lw t1, 116(sp)
	add t2, t0, t1
	sw t2, 120(sp)
	lw t0, 120(sp)
	la t1, y
	sw t0, 0(t1)
	la t0, z
	lw t2, 0(t0)
	sw t2, 124(sp)
	la t0, z
	lw t2, 0(t0)
	sw t2, 128(sp)
	la t0, r
	lw t2, 0(t0)
	sw t2, 132(sp)
	lw t0, 128(sp)
	lw t1, 132(sp)
	add t2, t0, t1
	sw t2, 136(sp)
	lw t0, 136(sp)
	la t1, z
	sw t0, 0(t1)
	la t0, i
	lw t2, 0(t0)
	sw t2, 140(sp)
	lw t0, 140(sp)
	addi t2, t0, 1
	sw t2, 144(sp)
	lw t0, 144(sp)
	la t1, i
	sw t0, 0(t1)
	j .LBB2
.LBB4: 
	la t0, x
	lw t2, 0(t0)
	sw t2, 148(sp)
	lw t0, 148(sp)
	xori t2, t0, 0
	sw t2, 152(sp)
	lw t0, 152(sp)
	seqz t2, t0
	sw t2, 156(sp)
	lw t0, 156(sp)
	mv t2, t0
	sw t2, 160(sp)
	lw t0, 148(sp)
	beq t0, zero, .LBB5
	j .LBB6
.LBB5: 
	la t0, y
	lw t2, 0(t0)
	sw t2, 164(sp)
	lw t0, 164(sp)
	xori t2, t0, 0
	sw t2, 168(sp)
	lw t0, 168(sp)
	seqz t2, t0
	sw t2, 172(sp)
	lw t0, 172(sp)
	mv t2, t0
	sw t2, 160(sp)
	j .LBB6
.LBB6: 
	lw t0, 160(sp)
	mv t2, t0
	sw t2, 176(sp)
	lw t0, 160(sp)
	bnez t0, .LBB7
	j .LBB8
.LBB7: 
	la t0, z
	lw t2, 0(t0)
	sw t2, 180(sp)
	lw t0, 180(sp)
	xori t2, t0, 0
	sw t2, 184(sp)
	lw t0, 184(sp)
	seqz t2, t0
	sw t2, 188(sp)
	lw t0, 188(sp)
	mv t2, t0
	sw t2, 176(sp)
	j .LBB8
.LBB8: 
	lw t0, 176(sp)
	bnez t0, .LBB9
	j .LBB11
.LBB9: 
	la t0, .str.4
	mv a0, t0
	call print
	mv t2, a0
	sw t2, 192(sp)
	li t2, 4
	sw t2, 196(sp)
	lw t0, 196(sp)
	mv a0, t0
	call malloc
	mv t2, a0
	sw t2, 200(sp)
	lw t0, 200(sp)
	mv t2, t0
	sw t2, 204(sp)
	lw t0, 192(sp)
	lw t1, 204(sp)
	sw t0, 0(t1)
	j .LBB10
.LBB10: 
	lw ra, 224(sp)
	addi sp, sp, 228
	ret
.LBB11: 
	la t0, .str.2
	mv a0, t0
	call print
	mv t2, a0
	sw t2, 208(sp)
	li t2, 4
	sw t2, 212(sp)
	lw t0, 212(sp)
	mv a0, t0
	call malloc
	mv t2, a0
	sw t2, 216(sp)
	lw t0, 216(sp)
	mv t2, t0
	sw t2, 220(sp)
	lw t0, 208(sp)
	lw t1, 220(sp)
	sw t0, 0(t1)
	j .LBB10


	.section	.data
	.globl	p
	.p2align	2
p:
	.word	0

	.globl	q
	.p2align	2
q:
	.word	0

.str.2:
	.asciz	"NO"

	.globl	r
	.p2align	2
r:
	.word	0

.str.4:
	.asciz	"YES"

	.globl	x
	.p2align	2
x:
	.word	0

	.globl	y
	.p2align	2
y:
	.word	0

	.globl	i
	.p2align	2
i:
	.word	0

	.globl	z
	.p2align	2
z:
	.word	0

	.globl	n
	.p2align	2
n:
	.word	0

