	.text

	.globl	init_main
	.p2align	2
init_main:
.LBB0: 
	addi sp, sp, -4
	addi sp, sp, 4
	ret

	.globl	main
	.p2align	2
main:
.LBB1: 
	addi sp, sp, -144
	sw ra, 140(sp)
	call init_main
	la t0, n
	lw t2, 0(t0)
	sw t2, 0(sp)
	call getInt
	mv t2, a0
	sw t2, 4(sp)
	lw t0, 4(sp)
	la t1, n
	sw t0, 0(t1)
	la t0, p
	lw t2, 0(t0)
	sw t2, 8(sp)
	call getInt
	mv t2, a0
	sw t2, 12(sp)
	lw t0, 12(sp)
	la t1, p
	sw t0, 0(t1)
	la t0, k
	lw t2, 0(t0)
	sw t2, 16(sp)
	call getInt
	mv t2, a0
	sw t2, 20(sp)
	lw t0, 20(sp)
	la t1, k
	sw t0, 0(t1)
	la t0, p
	lw t2, 0(t0)
	sw t2, 24(sp)
	la t0, k
	lw t2, 0(t0)
	sw t2, 28(sp)
	lw t0, 24(sp)
	lw t1, 28(sp)
	sub t2, t0, t1
	sw t2, 32(sp)
	li t2, 1
	sw t2, 36(sp)
	lw t0, 36(sp)
	lw t1, 32(sp)
	blt t0, t1, .LBB2
	j .LBB3
.LBB2: 
	la t0, .str.1
	mv a0, t0
	call print
	j .LBB3
.LBB3: 
	la t0, i
	lw t2, 0(t0)
	sw t2, 40(sp)
	la t0, p
	lw t2, 0(t0)
	sw t2, 44(sp)
	la t0, k
	lw t2, 0(t0)
	sw t2, 48(sp)
	lw t0, 44(sp)
	lw t1, 48(sp)
	sub t2, t0, t1
	sw t2, 52(sp)
	lw t0, 52(sp)
	la t1, i
	sw t0, 0(t1)
	j .LBB4
.LBB4: 
	la t0, i
	lw t2, 0(t0)
	sw t2, 56(sp)
	la t0, p
	lw t2, 0(t0)
	sw t2, 60(sp)
	la t0, k
	lw t2, 0(t0)
	sw t2, 64(sp)
	lw t0, 60(sp)
	lw t1, 64(sp)
	add t2, t0, t1
	sw t2, 68(sp)
	lw t0, 68(sp)
	lw t1, 56(sp)
	bge t0, t1, .LBB5
	j .LBB11
.LBB5: 
	la t0, i
	lw t2, 0(t0)
	sw t2, 72(sp)
	lw t0, 72(sp)
	slti t2, t0, 1
	sw t2, 76(sp)
	lw t0, 76(sp)
	xori t2, t0, 1
	sw t2, 76(sp)
	la t0, i
	lw t2, 0(t0)
	sw t2, 80(sp)
	la t0, n
	lw t2, 0(t0)
	sw t2, 84(sp)
	lw t0, 84(sp)
	lw t1, 80(sp)
	slt t2, t0, t1
	sw t2, 88(sp)
	lw t0, 88(sp)
	xori t2, t0, 1
	sw t2, 88(sp)
	lw t0, 76(sp)
	lw t1, 88(sp)
	and t2, t0, t1
	sw t2, 92(sp)
	lw t0, 92(sp)
	bnez t0, .LBB6
	j .LBB10
.LBB6: 
	la t0, i
	lw t2, 0(t0)
	sw t2, 96(sp)
	la t0, p
	lw t2, 0(t0)
	sw t2, 100(sp)
	lw t0, 96(sp)
	lw t1, 100(sp)
	beq t0, t1, .LBB7
	j .LBB9
.LBB7: 
	la t0, .str.5
	mv a0, t0
	call print
	la t0, i
	lw t2, 0(t0)
	sw t2, 104(sp)
	lw t0, 104(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 108(sp)
	lw t0, 108(sp)
	mv a0, t0
	call print
	la t0, .str.4
	mv a0, t0
	call print
	j .LBB8
.LBB8: 
	j .LBB10
.LBB9: 
	la t0, i
	lw t2, 0(t0)
	sw t2, 112(sp)
	lw t0, 112(sp)
	mv a0, t0
	call printInt
	la t0, .str.2
	mv a0, t0
	call print
	j .LBB8
.LBB10: 
	la t0, i
	lw t2, 0(t0)
	sw t2, 116(sp)
	lw t0, 116(sp)
	addi t2, t0, 1
	sw t2, 120(sp)
	lw t0, 120(sp)
	la t1, i
	sw t0, 0(t1)
	j .LBB4
.LBB11: 
	la t0, p
	lw t2, 0(t0)
	sw t2, 124(sp)
	la t0, k
	lw t2, 0(t0)
	sw t2, 128(sp)
	lw t0, 124(sp)
	lw t1, 128(sp)
	add t2, t0, t1
	sw t2, 132(sp)
	la t0, n
	lw t2, 0(t0)
	sw t2, 136(sp)
	lw t0, 132(sp)
	lw t1, 136(sp)
	blt t0, t1, .LBB12
	j .LBB13
.LBB12: 
	la t0, .str.3
	mv a0, t0
	call print
	j .LBB13
.LBB13: 
	mv a0, zero
	lw ra, 140(sp)
	addi sp, sp, 144
	ret


	.section	.data
	.globl	p
	.p2align	2
p:
	.word	0

.str.1:
	.asciz	"<< "

.str.2:
	.asciz	" "

.str.3:
	.asciz	">> "

.str.4:
	.asciz	") "

.str.5:
	.asciz	"("

	.globl	i
	.p2align	2
i:
	.word	0

	.globl	k
	.p2align	2
k:
	.word	0

	.globl	n
	.p2align	2
n:
	.word	0

