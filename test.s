	.text

	.globl	init_main
	.p2align	2
init_main:
.LBB0: 
	addi sp, sp, 0
	mv a0, zero
	j .LBB1
.LBB1: 
	addi sp, sp, 0
	ret

	.globl	main
	.p2align	2
main:
.LBB2: 
	addi sp, sp, -8
	sw s0, 0(sp)
	sw ra, 4(sp)
	call init_main
	lw ra, n
	call getInt
	mv s0, a0
	li a0, 4
	call malloc
	sw s0, 0(a0)
	lui ra, %hi(n)
	sw s0, %lo(n)(ra)
	lw ra, p
	call getInt
	mv s0, a0
	li a0, 4
	call malloc
	sw s0, 0(a0)
	lui ra, %hi(p)
	sw s0, %lo(p)(ra)
	lw ra, k
	call getInt
	mv s0, a0
	li a0, 4
	call malloc
	sw s0, 0(a0)
	lui ra, %hi(k)
	sw s0, %lo(k)(ra)
	lw t0, p
	lw ra, k
	sub t0, t0, ra
	li ra, 1
	blt ra, t0, .LBB3
	j .LBB4
.LBB3: 
	la a0, .str.4
	call print
	j .LBB4
.LBB4: 
	lw ra, i
	lw t0, p
	lw ra, k
	sub t0, t0, ra
	lui ra, %hi(i)
	sw t0, %lo(i)(ra)
	j .LBB5
.LBB5: 
	lw t1, i
	lw t0, p
	lw ra, k
	add ra, t0, ra
	bge ra, t1, .LBB6
	j .LBB7
.LBB6: 
	lw t1, i
	slti ra, t1, 1
	xori ra, ra, 1
	li t0, 1
	bge t1, t0, .LBB8
	j .LBB9
.LBB7: 
	lw t0, p
	lw ra, k
	add t0, t0, ra
	lw ra, n
	blt t0, ra, .LBB10
	j .LBB11
.LBB8: 
	lw t0, i
	lw ra, n
	slt ra, ra, t0
	xori ra, ra, 1
	j .LBB9
.LBB9: 
	bnez ra, .LBB12
	j .LBB13
.LBB10: 
	la a0, .str.8
	call print
	j .LBB11
.LBB11: 
	mv a0, zero
	j .LBB14
.LBB12: 
	lw t0, i
	lw ra, p
	beq t0, ra, .LBB15
	j .LBB16
.LBB13: 
	j .LBB17
.LBB14: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
.LBB15: 
	la a0, .str.5
	call print
	lw a0, i
	call toString
	mv s0, a0
	li a0, 4
	call malloc
	sw s0, 0(a0)
	mv a0, s0
	call print
	la a0, .str.6
	call print
	j .LBB18
.LBB16: 
	lw a0, i
	call printInt
	la a0, .str.7
	call print
	j .LBB18
.LBB17: 
	lw ra, i
	addi t0, ra, 1
	lui ra, %hi(i)
	sw t0, %lo(i)(ra)
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

