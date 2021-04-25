	.text

	.globl	init_main
	.p2align	2
init_main:
.LBB0: 
	addi sp, sp, -40
	sw ra, 36(sp)
	li t2, 20
	sw t2, 4(sp)
	li t2, 4
	sw t2, 8(sp)
	lw t0, 4(sp)
	lw t1, 8(sp)
	mul t2, t0, t1
	sw t2, 0(sp)
	lw t0, 0(sp)
	addi t2, t0, 4
	sw t2, 12(sp)
	lw t0, 12(sp)
	mv a0, t0
	call malloc
	mv t2, a0
	sw t2, 16(sp)
	lw t0, 16(sp)
	mv t2, t0
	sw t2, 20(sp)
	lw t0, 4(sp)
	lw t1, 20(sp)
	sw t0, 0(t1)
	lw t0, 20(sp)
	addi t2, t0, 4
	sw t2, 24(sp)
	lw t0, 24(sp)
	mv t2, t0
	sw t2, 28(sp)
	lw t0, 28(sp)
	lw t1, 32(sp)
	sw t0, 0(t1)
	lw ra, 36(sp)
	addi sp, sp, 40
	ret

	.globl	main
	.p2align	2
main:
.LBB1: 
	addi sp, sp, -104
	sw ra, 100(sp)
	call init_main
	lw t0, 52(sp)
	lw t2, 0(t0)
	sw t2, 200(sp)
	call getInt
	mv t2, a0
	sw t2, 204(sp)
	lw t0, 204(sp)
	lw t1, 52(sp)
	sw t0, 0(t1)
	lw t0, 212(sp)
	lw t2, 0(t0)
	sw t2, 208(sp)
	lw t1, 212(sp)
	sw null, 0(t1)
	j .LBB2
.LBB2: 
	lw t0, 212(sp)
	lw t2, 0(t0)
	sw t2, 216(sp)
	lw t0, 52(sp)
	lw t2, 0(t0)
	sw t2, 220(sp)
	lw t0, 216(sp)
	lw t1, 220(sp)
	blt t0, t1, .LBB3
	j .LBB4
.LBB3: 
	lw t0, 32(sp)
	lw t2, 0(t0)
	sw t2, 224(sp)
	lw t0, 212(sp)
	lw t2, 0(t0)
	sw t2, 228(sp)
	lw t0, 228(sp)
	muli t2, t0, 4
	sw t2, 232(sp)
	lw t0, 224(sp)
	lw t1, 232(sp)
	add t2, t0, t1
	sw t2, 236(sp)
	lw t0, 236(sp)
	lw t2, 0(t0)
	sw t2, 240(sp)
	call getInt
	mv t2, a0
	sw t2, 244(sp)
	lw t0, 244(sp)
	lw t1, 236(sp)
	sw t0, 0(t1)
	lw t0, 212(sp)
	lw t2, 0(t0)
	sw t2, 248(sp)
	lw t0, 248(sp)
	addi t2, t0, 1
	sw t2, 252(sp)
	lw t0, 252(sp)
	lw t1, 212(sp)
	sw t0, 0(t1)
	j .LBB2
.LBB4: 
	lw t0, 212(sp)
	lw t2, 0(t0)
	sw t2, 256(sp)
	lw t0, 52(sp)
	lw t2, 0(t0)
	sw t2, 260(sp)
	lw t0, 260(sp)
	lw t1, 212(sp)
	sw t0, 0(t1)
	j .LBB5
.LBB5: 
	lw t0, 212(sp)
	lw t2, 0(t0)
	sw t2, 264(sp)
	lw t1, 264(sp)
	blt null, t1, .LBB6
	j .LBB9
.LBB6: 
	lw t0, 212(sp)
	lw t2, 0(t0)
	sw t2, 268(sp)
	lw t0, 268(sp)
	mv a0, t0
	call jud
	mv t2, a0
	sw t2, 272(sp)
	lw t1, 272(sp)
	blt null, t1, .LBB7
	j .LBB8
.LBB7: 
	lw t0, 212(sp)
	lw t2, 0(t0)
	sw t2, 276(sp)
	lw t0, 276(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 280(sp)
	lw t0, 280(sp)
	mv a0, t0
	call print
	mv a0, null
	lw ra, 100(sp)
	addi sp, sp, 104
	ret
	j .LBB8
.LBB8: 
	lw t0, 212(sp)
	lw t2, 0(t0)
	sw t2, 284(sp)
	lw t0, 212(sp)
	lw t2, 0(t0)
	sw t2, 288(sp)
	li t2, 2
	sw t2, 296(sp)
	lw t0, 288(sp)
	lw t1, 296(sp)
	div t2, t0, t1
	sw t2, 292(sp)
	lw t0, 292(sp)
	lw t1, 212(sp)
	sw t0, 0(t1)
	j .LBB5
.LBB9: 
	mv a0, null
	lw ra, 100(sp)
	addi sp, sp, 104
	ret

	.globl	jud
	.p2align	2
jud:
.LBB10: 
	addi sp, sp, -172
	mv t2, a0
	sw t2, 60(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 36(sp)
	lw t1, 40(sp)
	sw null, 0(t1)
	j .LBB11
.LBB11: 
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 44(sp)
	lw t0, 52(sp)
	lw t2, 0(t0)
	sw t2, 48(sp)
	lw t0, 60(sp)
	lw t2, 0(t0)
	sw t2, 56(sp)
	lw t0, 48(sp)
	lw t1, 56(sp)
	div t2, t0, t1
	sw t2, 64(sp)
	lw t0, 44(sp)
	lw t1, 64(sp)
	blt t0, t1, .LBB12
	j .LBB20
.LBB12: 
	lw t1, 68(sp)
	sb null, 0(t1)
	lw t0, 76(sp)
	lw t2, 0(t0)
	sw t2, 72(sp)
	lw t1, 76(sp)
	sw null, 0(t1)
	j .LBB13
.LBB13: 
	lw t0, 76(sp)
	lw t2, 0(t0)
	sw t2, 80(sp)
	lw t0, 60(sp)
	lw t2, 0(t0)
	sw t2, 84(sp)
	lw t0, 84(sp)
	addi t2, t0, -1
	sw t2, 88(sp)
	lw t0, 80(sp)
	lw t1, 88(sp)
	blt t0, t1, .LBB14
	j .LBB17
.LBB14: 
	lw t0, 32(sp)
	lw t2, 0(t0)
	sw t2, 92(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 96(sp)
	lw t0, 60(sp)
	lw t2, 0(t0)
	sw t2, 100(sp)
	lw t0, 96(sp)
	lw t1, 100(sp)
	mul t2, t0, t1
	sw t2, 104(sp)
	lw t0, 76(sp)
	lw t2, 0(t0)
	sw t2, 108(sp)
	lw t0, 104(sp)
	lw t1, 108(sp)
	add t2, t0, t1
	sw t2, 112(sp)
	lw t0, 112(sp)
	muli t2, t0, 4
	sw t2, 116(sp)
	lw t0, 92(sp)
	lw t1, 116(sp)
	add t2, t0, t1
	sw t2, 120(sp)
	lw t0, 120(sp)
	lw t2, 0(t0)
	sw t2, 124(sp)
	lw t0, 32(sp)
	lw t2, 0(t0)
	sw t2, 128(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 132(sp)
	lw t0, 60(sp)
	lw t2, 0(t0)
	sw t2, 136(sp)
	lw t0, 132(sp)
	lw t1, 136(sp)
	mul t2, t0, t1
	sw t2, 140(sp)
	lw t0, 76(sp)
	lw t2, 0(t0)
	sw t2, 144(sp)
	lw t0, 140(sp)
	lw t1, 144(sp)
	add t2, t0, t1
	sw t2, 148(sp)
	lw t0, 148(sp)
	addi t2, t0, 1
	sw t2, 152(sp)
	lw t0, 152(sp)
	muli t2, t0, 4
	sw t2, 156(sp)
	lw t0, 128(sp)
	lw t1, 156(sp)
	add t2, t0, t1
	sw t2, 160(sp)
	lw t0, 160(sp)
	lw t2, 0(t0)
	sw t2, 164(sp)
	lw t0, 164(sp)
	lw t1, 124(sp)
	blt t0, t1, .LBB15
	j .LBB16
.LBB15: 
	lw t0, 68(sp)
	lb t2, 0(t0)
	sw t2, 168(sp)
	li t2, 1
	sw t2, 172(sp)
	lw t0, 172(sp)
	lw t1, 68(sp)
	sb t0, 0(t1)
	j .LBB16
.LBB16: 
	lw t0, 76(sp)
	lw t2, 0(t0)
	sw t2, 176(sp)
	lw t0, 176(sp)
	addi t2, t0, 1
	sw t2, 180(sp)
	lw t0, 180(sp)
	lw t1, 76(sp)
	sw t0, 0(t1)
	j .LBB13
.LBB17: 
	lw t0, 68(sp)
	lb t2, 0(t0)
	sw t2, 184(sp)
	lw t0, 184(sp)
	ori t2, t0, 1
	sw t2, 188(sp)
	lw t0, 188(sp)
	bnez t0, .LBB18
	j .LBB19
.LBB18: 
	lw t0, 172(sp)
	mv a0, t0
	addi sp, sp, 172
	ret
	j .LBB19
.LBB19: 
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 192(sp)
	lw t0, 192(sp)
	addi t2, t0, 1
	sw t2, 196(sp)
	lw t0, 196(sp)
	lw t1, 40(sp)
	sw t0, 0(t1)
	j .LBB11
.LBB20: 
	mv a0, null
	addi sp, sp, 172
	ret


	.section	.data
	.globl	a
	.p2align	2
a:
	.word	0

	.globl	i
	.p2align	2
i:
	.word	0

	.globl	n
	.p2align	2
n:
	.word	0

