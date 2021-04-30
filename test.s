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
	addi sp, sp, -20
	sw ra, 16(sp)
	call init_main
	li a0, 4
	call malloc
	mv t2, a0
	sw t2, 0(sp)
	lw t1, 0(sp)
	sw zero, 0(t1)
	li a0, 4
	call malloc
	mv t2, a0
	sw t2, 4(sp)
	lw t1, 4(sp)
	sw zero, 0(t1)
	beq zero, zero, .LBB2
	j .LBB3
.LBB2: 
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 8(sp)
	lw t1, 0(sp)
	sw zero, 0(t1)
	j .LBB4
.LBB3: 
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 12(sp)
	lw t1, 4(sp)
	sw zero, 0(t1)
	j .LBB4
.LBB4: 
	lw ra, 16(sp)
	addi sp, sp, 20
	ret


	.section	.data
