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
	addi sp, sp, -192
	sw ra, 188(sp)
	call init_main
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 0(sp)
	call getInt
	mv t2, a0
	sw t2, 8(sp)
	lw t0, 8(sp)
	lw t1, 4(sp)
	sw t0, 0(t1)
	lw t0, 16(sp)
	lw t2, 0(t0)
	sw t2, 12(sp)
	call getInt
	mv t2, a0
	sw t2, 20(sp)
	lw t0, 20(sp)
	lw t1, 16(sp)
	sw t0, 0(t1)
	lw t0, 28(sp)
	lw t2, 0(t0)
	sw t2, 24(sp)
	call getInt
	mv t2, a0
	sw t2, 32(sp)
	lw t0, 32(sp)
	lw t1, 28(sp)
	sw t0, 0(t1)
	lw t0, 16(sp)
	lw t2, 0(t0)
	sw t2, 36(sp)
	lw t0, 28(sp)
	lw t2, 0(t0)
	sw t2, 40(sp)
	lw t0, 36(sp)
	lw t1, 40(sp)
	sub t2, t0, t1
	sw t2, 44(sp)
	li t2, 1
	sw t2, 48(sp)
	lw t0, 48(sp)
	lw t1, 44(sp)
	blt t0, t1, .LBB2
	j .LBB3
.LBB2: 
	la t2, .str.0
	sw t2, 52(sp)
	lw t0, 52(sp)
	mv a0, t0
	call print
	j .LBB3
.LBB3: 
	lw t0, 60(sp)
	lw t2, 0(t0)
	sw t2, 56(sp)
	lw t0, 16(sp)
	lw t2, 0(t0)
	sw t2, 64(sp)
	lw t0, 28(sp)
	lw t2, 0(t0)
	sw t2, 68(sp)
	lw t0, 64(sp)
	lw t1, 68(sp)
	sub t2, t0, t1
	sw t2, 72(sp)
	lw t0, 72(sp)
	lw t1, 60(sp)
	sw t0, 0(t1)
	j .LBB4
.LBB4: 
	lw t0, 60(sp)
	lw t2, 0(t0)
	sw t2, 76(sp)
	lw t0, 16(sp)
	lw t2, 0(t0)
	sw t2, 80(sp)
	lw t0, 28(sp)
	lw t2, 0(t0)
	sw t2, 84(sp)
	lw t0, 80(sp)
	lw t1, 84(sp)
	add t2, t0, t1
	sw t2, 88(sp)
	lw t0, 92(sp)
	xori t2, t0, 1
	sw t2, 92(sp)
	lw t0, 88(sp)
	lw t1, 76(sp)
	bge t0, t1, .LBB5
	j .LBB9
.LBB5: 
	lw t0, 60(sp)
	lw t2, 0(t0)
	sw t2, 96(sp)
	lw t0, 100(sp)
	xori t2, t0, 1
	sw t2, 100(sp)
	lw t0, 60(sp)
	lw t2, 0(t0)
	sw t2, 104(sp)
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 108(sp)
	lw t0, 112(sp)
	xori t2, t0, 1
	sw t2, 112(sp)
	lw t0, 100(sp)
	lw t1, 112(sp)
	and t2, t0, t1
	sw t2, 116(sp)
	lw t0, 116(sp)
	bnez t0, .LBB6
	j .LBB7
.LBB6: 
	lw t0, 60(sp)
	lw t2, 0(t0)
	sw t2, 120(sp)
	lw t0, 16(sp)
	lw t2, 0(t0)
	sw t2, 124(sp)
	lw t0, 120(sp)
	lw t1, 124(sp)
	beq t0, t1, .LBB6
	j .LBB8
	la t2, .str.3
	sw t2, 128(sp)
	lw t0, 128(sp)
	mv a0, t0
	call print
	lw t0, 60(sp)
	lw t2, 0(t0)
	sw t2, 132(sp)
	lw t0, 132(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 136(sp)
	lw t0, 136(sp)
	mv a0, t0
	call print
	la t2, .str.2
	sw t2, 140(sp)
	lw t0, 140(sp)
	mv a0, t0
	call print
	j .LBB7
	la t2, .str.1
	sw t2, 184(sp)
	lw t0, 184(sp)
	mv a0, t0
	call print
	j .LBB7
.LBB7: 
	j .LBB7
	lw t0, 60(sp)
	lw t2, 0(t0)
	sw t2, 160(sp)
	lw t0, 160(sp)
	addi t2, t0, 1
	sw t2, 164(sp)
	lw t0, 164(sp)
	lw t1, 60(sp)
	sw t0, 0(t1)
	j .LBB4
	mv a0, zero
	lw ra, 188(sp)
	addi sp, sp, 192
	ret
.LBB8: 
	la t2, .str.3
	sw t2, 144(sp)
	lw t0, 144(sp)
	mv a0, t0
	call print
	lw t0, 60(sp)
	lw t2, 0(t0)
	sw t2, 148(sp)
	lw t0, 148(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 152(sp)
	lw t0, 152(sp)
	mv a0, t0
	call print
	la t2, .str.2
	sw t2, 156(sp)
	lw t0, 156(sp)
	mv a0, t0
	call print
	j .LBB7
.LBB9: 
	lw t0, 16(sp)
	lw t2, 0(t0)
	sw t2, 168(sp)
	lw t0, 28(sp)
	lw t2, 0(t0)
	sw t2, 172(sp)
	lw t0, 168(sp)
	lw t1, 172(sp)
	add t2, t0, t1
	sw t2, 176(sp)
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 180(sp)
	lw t0, 176(sp)
	lw t1, 180(sp)
	blt t0, t1, .LBB6
	j .LBB7


	.section	.data
.str.0:
	.asciz	"<< "

	.section	.data
.str.1:
	.asciz	">> "

	.section	.data
.str.2:
	.asciz	") "

	.section	.data
.str.3:
	.asciz	"("

	.section	.data
.str.4:
	.asciz	"("

	.section	.data
.str.5:
	.asciz	") "

