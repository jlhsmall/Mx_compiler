	.text

	.global	AA
	.p2align	2
AA:
.LBB0: 
	addi sp, sp, 0
	addi sp, sp, 0

	.global	init_main
	.p2align	2
init_main:
.LBB1: 
	addi sp, sp, 0
	addi sp, sp, 0

	.global	main
	.p2align	2
main:
.LBB2: 
	addi sp, sp, -24
	call init_main
	mv a0, zero
	call malloc
	mv t2, ra
	sw t2, sp(0)
	lw t0, sp(0)
	mv t2, t0
	sw t2, sp(4)
	lw t0, sp(4)
	lw t1, sp(8)
	sw t0, t1(0)
	call AA
	lw t0, sp(16)
	lw t2, t0(0)
	sw t2, sp(12)
	li t2, 10
	sw t2, sp(20)
	lw t0, sp(20)
	lw t1, sp(16)
	sw t0, t1(0)
	addi sp, sp, 24


