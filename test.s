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
	addi sp, sp, -232
	sw s0, 220(sp)
	sw s1, 216(sp)
	sw s2, 212(sp)
	sw s3, 208(sp)
	sw s4, 204(sp)
	sw s5, 200(sp)
	sw s6, 196(sp)
	sw s7, 192(sp)
	sw s8, 188(sp)
	sw s9, 184(sp)
	sw s10, 180(sp)
	sw s11, 176(sp)
	sw ra, 224(sp)
	call init_main
	li a0, 4
	call malloc
	li a0, 1
	call malloc
	mv s1, a0
	li a0, 4
	call malloc
	li a0, 1
	call malloc
	mv s0, a0
	li ra, 1
	sb ra, 0(s0)
	lb t0, 0(s1)
	lb ra, 0(s1)
	beq t0, ra, .LBB3
	j .LBB4
.LBB3: 
	lb ra, 0(s0)
	sb zero, 0(s0)
	j .LBB4
.LBB4: 
	li a0, 4
	call malloc
	li a0, 1
	call malloc
	li a0, 4
	call malloc
	mv s1, a0
	li a0, 4
	call malloc
	lw t0, 0(s1)
	lw ra, 0(s1)
	add t0, t0, ra
	lw ra, 0(s1)
	sub t0, t0, ra
	lw ra, 0(s1)
	beq t0, ra, .LBB5
	j .LBB6
.LBB5: 
	lb ra, 0(s0)
	li ra, 1
	sb ra, 0(s0)
	j .LBB6
.LBB6: 
	li a0, 1
	call malloc
	li a0, 4
	call malloc
	li t0, 1
	li ra, 4
	mul ra, t0, ra
	addi a0, ra, 4
	call malloc
	li ra, 1
	sw ra, 0(a0)
	addi ra, a0, 4
	sw ra, 164(sp)
	lw ra, 164(sp)
	addi ra, ra, 4
	sw s2, 172(sp)
	li a0, 4
	call malloc
	sw a0, 168(sp)
	lw t0, 164(sp)
	lw ra, 168(sp)
	sw t0, 0(ra)
	j .LBB7
.LBB7: 
	lw ra, 168(sp)
	lw ra, 0(ra)
	sw ra, 160(sp)
	lw t0, 160(sp)
	lw ra, 172(sp)
	slt ra, t0, ra
	lw t0, 160(sp)
	lw ra, 172(sp)
	blt t0, ra, .LBB8
	j .LBB9
.LBB8: 
	li t0, 1
	li ra, 4
	mul ra, t0, ra
	addi a0, ra, 4
	call malloc
	li ra, 1
	sw ra, 0(a0)
	addi ra, a0, 4
	sw ra, 4(sp)
	lw ra, 4(sp)
	addi ra, ra, 4
	sw s11, 108(sp)
	li a0, 4
	call malloc
	sw a0, 56(sp)
	lw t0, 4(sp)
	lw ra, 56(sp)
	sw t0, 0(ra)
	j .LBB10
.LBB9: 
	li a0, 4
	call malloc
	lw ra, 164(sp)
	sw ra, 0(a0)
	li a0, 4
	call malloc
	lw ra, 164(sp)
	sw ra, 0(a0)
	mv a0, zero
	j .LBB11
	mv a0, zero
	j .LBB11
	mv a0, zero
	j .LBB11
.LBB10: 
	lw ra, 56(sp)
	lw ra, 0(ra)
	sw ra, 156(sp)
	lw t0, 156(sp)
	lw ra, 108(sp)
	slt ra, t0, ra
	lw t0, 156(sp)
	lw ra, 108(sp)
	blt t0, ra, .LBB12
	j .LBB13
.LBB11: 
	lw s0, 220(sp)
	lw s1, 216(sp)
	lw s2, 212(sp)
	lw s3, 208(sp)
	lw s4, 204(sp)
	lw s5, 200(sp)
	lw s6, 196(sp)
	lw s7, 192(sp)
	lw s8, 188(sp)
	lw s9, 184(sp)
	lw s10, 180(sp)
	lw s11, 176(sp)
	lw ra, 224(sp)
	addi sp, sp, 232
	ret
.LBB12: 
	li t0, 1
	li ra, 4
	mul ra, t0, ra
	addi a0, ra, 4
	call malloc
	li ra, 1
	sw ra, 0(a0)
	addi ra, a0, 4
	sw ra, 0(sp)
	lw ra, 0(sp)
	addi ra, ra, 4
	sw s11, 104(sp)
	li a0, 4
	call malloc
	sw a0, 52(sp)
	lw t0, 0(sp)
	lw ra, 52(sp)
	sw t0, 0(ra)
	j .LBB14
.LBB13: 
	lw t0, 4(sp)
	lw ra, 160(sp)
	sw t0, 0(ra)
	lw ra, 160(sp)
	addi t0, ra, 4
	lw ra, 168(sp)
	sw t0, 0(ra)
	j .LBB7
.LBB14: 
	lw ra, 52(sp)
	lw ra, 0(ra)
	sw ra, 152(sp)
	lw t0, 152(sp)
	lw ra, 104(sp)
	slt ra, t0, ra
	lw t0, 152(sp)
	lw ra, 104(sp)
	blt t0, ra, .LBB15
	j .LBB16
.LBB15: 
	li t0, 1
	li ra, 4
	mul ra, t0, ra
	addi a0, ra, 4
	call malloc
	li ra, 1
	sw ra, 0(a0)
	addi ra, a0, 4
	sw ra, 228(sp)
	lw ra, 228(sp)
	addi ra, ra, 4
	sw s11, 100(sp)
	li a0, 4
	call malloc
	sw a0, 48(sp)
	lw t0, 48(sp)
	lw ra, 228(sp)
	sw ra, 0(t0)
	j .LBB17
.LBB16: 
	lw t0, 0(sp)
	lw ra, 156(sp)
	sw t0, 0(ra)
	lw ra, 156(sp)
	addi t0, ra, 4
	lw ra, 56(sp)
	sw t0, 0(ra)
	j .LBB10
.LBB17: 
	lw ra, 48(sp)
	lw ra, 0(ra)
	sw ra, 148(sp)
	lw t0, 148(sp)
	lw ra, 100(sp)
	slt ra, t0, ra
	lw t0, 148(sp)
	lw ra, 100(sp)
	blt t0, ra, .LBB18
	j .LBB19
.LBB18: 
	li t0, 1
	li ra, 4
	mul ra, t0, ra
	addi a0, ra, 4
	call malloc
	li ra, 1
	sw ra, 0(a0)
	addi s10, a0, 4
	addi ra, s10, 4
	sw s11, 96(sp)
	li a0, 4
	call malloc
	sw a0, 44(sp)
	lw ra, 44(sp)
	sw s10, 0(ra)
	j .LBB20
.LBB19: 
	lw t0, 152(sp)
	lw ra, 228(sp)
	sw ra, 0(t0)
	lw ra, 152(sp)
	addi t0, ra, 4
	lw ra, 52(sp)
	sw t0, 0(ra)
	j .LBB14
.LBB20: 
	lw ra, 44(sp)
	lw ra, 0(ra)
	sw ra, 144(sp)
	lw t0, 144(sp)
	lw ra, 96(sp)
	slt ra, t0, ra
	lw t0, 144(sp)
	lw ra, 96(sp)
	blt t0, ra, .LBB21
	j .LBB22
.LBB21: 
	li t0, 1
	li ra, 4
	mul ra, t0, ra
	addi a0, ra, 4
	call malloc
	li ra, 1
	sw ra, 0(a0)
	addi s9, a0, 4
	addi ra, s9, 4
	sw s11, 92(sp)
	li a0, 4
	call malloc
	sw a0, 40(sp)
	lw ra, 40(sp)
	sw s9, 0(ra)
	j .LBB23
.LBB22: 
	lw ra, 148(sp)
	sw s10, 0(ra)
	lw ra, 148(sp)
	addi t0, ra, 4
	lw ra, 48(sp)
	sw t0, 0(ra)
	j .LBB17
.LBB23: 
	lw ra, 40(sp)
	lw ra, 0(ra)
	sw ra, 140(sp)
	lw t0, 140(sp)
	lw ra, 92(sp)
	slt ra, t0, ra
	lw t0, 140(sp)
	lw ra, 92(sp)
	blt t0, ra, .LBB24
	j .LBB25
.LBB24: 
	li t0, 1
	li ra, 4
	mul ra, t0, ra
	addi a0, ra, 4
	call malloc
	li ra, 1
	sw ra, 0(a0)
	addi s8, a0, 4
	addi ra, s8, 4
	sw s11, 88(sp)
	li a0, 4
	call malloc
	sw a0, 36(sp)
	lw ra, 36(sp)
	sw s8, 0(ra)
	j .LBB26
.LBB25: 
	lw ra, 144(sp)
	sw s9, 0(ra)
	lw ra, 144(sp)
	addi t0, ra, 4
	lw ra, 44(sp)
	sw t0, 0(ra)
	j .LBB20
.LBB26: 
	lw ra, 36(sp)
	lw ra, 0(ra)
	sw ra, 136(sp)
	lw t0, 136(sp)
	lw ra, 88(sp)
	slt ra, t0, ra
	lw t0, 136(sp)
	lw ra, 88(sp)
	blt t0, ra, .LBB27
	j .LBB28
.LBB27: 
	li t0, 1
	li ra, 4
	mul ra, t0, ra
	addi a0, ra, 4
	call malloc
	li ra, 1
	sw ra, 0(a0)
	addi s7, a0, 4
	addi ra, s7, 4
	sw s11, 84(sp)
	li a0, 4
	call malloc
	sw a0, 32(sp)
	lw ra, 32(sp)
	sw s7, 0(ra)
	j .LBB29
.LBB28: 
	lw ra, 140(sp)
	sw s8, 0(ra)
	lw ra, 140(sp)
	addi t0, ra, 4
	lw ra, 40(sp)
	sw t0, 0(ra)
	j .LBB23
.LBB29: 
	lw ra, 32(sp)
	lw ra, 0(ra)
	sw ra, 132(sp)
	lw t0, 132(sp)
	lw ra, 84(sp)
	slt ra, t0, ra
	lw t0, 132(sp)
	lw ra, 84(sp)
	blt t0, ra, .LBB30
	j .LBB31
.LBB30: 
	li t0, 1
	li ra, 4
	mul ra, t0, ra
	addi a0, ra, 4
	call malloc
	li ra, 1
	sw ra, 0(a0)
	addi s6, a0, 4
	addi ra, s6, 4
	sw s11, 80(sp)
	li a0, 4
	call malloc
	sw a0, 28(sp)
	lw ra, 28(sp)
	sw s6, 0(ra)
	j .LBB32
.LBB31: 
	lw ra, 136(sp)
	sw s7, 0(ra)
	lw ra, 136(sp)
	addi t0, ra, 4
	lw ra, 36(sp)
	sw t0, 0(ra)
	j .LBB26
.LBB32: 
	lw ra, 28(sp)
	lw ra, 0(ra)
	sw ra, 128(sp)
	lw t0, 128(sp)
	lw ra, 80(sp)
	slt ra, t0, ra
	lw t0, 128(sp)
	lw ra, 80(sp)
	blt t0, ra, .LBB33
	j .LBB34
.LBB33: 
	li t0, 1
	li ra, 4
	mul ra, t0, ra
	addi a0, ra, 4
	call malloc
	li ra, 1
	sw ra, 0(a0)
	addi s5, a0, 4
	addi ra, s5, 4
	sw s11, 76(sp)
	li a0, 4
	call malloc
	sw a0, 24(sp)
	lw ra, 24(sp)
	sw s5, 0(ra)
	j .LBB35
.LBB34: 
	lw ra, 132(sp)
	sw s6, 0(ra)
	lw ra, 132(sp)
	addi t0, ra, 4
	lw ra, 32(sp)
	sw t0, 0(ra)
	j .LBB29
.LBB35: 
	lw ra, 24(sp)
	lw ra, 0(ra)
	sw ra, 124(sp)
	lw t0, 124(sp)
	lw ra, 76(sp)
	slt ra, t0, ra
	lw t0, 124(sp)
	lw ra, 76(sp)
	blt t0, ra, .LBB36
	j .LBB37
.LBB36: 
	li t0, 1
	li ra, 4
	mul ra, t0, ra
	addi a0, ra, 4
	call malloc
	li ra, 1
	sw ra, 0(a0)
	addi s4, a0, 4
	addi ra, s4, 4
	sw s11, 72(sp)
	li a0, 4
	call malloc
	sw a0, 20(sp)
	lw ra, 20(sp)
	sw s4, 0(ra)
	j .LBB38
.LBB37: 
	lw ra, 128(sp)
	sw s5, 0(ra)
	lw ra, 128(sp)
	addi t0, ra, 4
	lw ra, 28(sp)
	sw t0, 0(ra)
	j .LBB32
.LBB38: 
	lw ra, 20(sp)
	lw ra, 0(ra)
	sw ra, 120(sp)
	lw t0, 120(sp)
	lw ra, 72(sp)
	slt ra, t0, ra
	lw t0, 120(sp)
	lw ra, 72(sp)
	blt t0, ra, .LBB39
	j .LBB40
.LBB39: 
	li t0, 1
	li ra, 4
	mul ra, t0, ra
	addi a0, ra, 4
	call malloc
	li ra, 1
	sw ra, 0(a0)
	addi s3, a0, 4
	addi ra, s3, 4
	sw s11, 68(sp)
	li a0, 4
	call malloc
	sw a0, 16(sp)
	lw ra, 16(sp)
	sw s3, 0(ra)
	j .LBB41
.LBB40: 
	lw ra, 124(sp)
	sw s4, 0(ra)
	lw ra, 124(sp)
	addi t0, ra, 4
	lw ra, 24(sp)
	sw t0, 0(ra)
	j .LBB35
.LBB41: 
	lw ra, 16(sp)
	lw ra, 0(ra)
	sw ra, 116(sp)
	lw t0, 116(sp)
	lw ra, 68(sp)
	slt ra, t0, ra
	lw t0, 116(sp)
	lw ra, 68(sp)
	blt t0, ra, .LBB42
	j .LBB43
.LBB42: 
	li t0, 1
	li ra, 4
	mul ra, t0, ra
	addi a0, ra, 4
	call malloc
	li ra, 1
	sw ra, 0(a0)
	addi s2, a0, 4
	addi ra, s2, 4
	sw s11, 64(sp)
	li a0, 4
	call malloc
	sw a0, 12(sp)
	lw ra, 12(sp)
	sw s2, 0(ra)
	j .LBB44
.LBB43: 
	lw ra, 120(sp)
	sw s3, 0(ra)
	lw ra, 120(sp)
	addi t0, ra, 4
	lw ra, 20(sp)
	sw t0, 0(ra)
	j .LBB38
.LBB44: 
	lw ra, 12(sp)
	lw ra, 0(ra)
	sw ra, 112(sp)
	lw t0, 112(sp)
	lw ra, 64(sp)
	slt ra, t0, ra
	lw t0, 112(sp)
	lw ra, 64(sp)
	blt t0, ra, .LBB45
	j .LBB46
.LBB45: 
	li t0, 1
	li ra, 4
	mul ra, t0, ra
	addi a0, ra, 4
	call malloc
	li ra, 1
	sw ra, 0(a0)
	addi s0, a0, 4
	addi ra, s0, 4
	sw s11, 60(sp)
	li a0, 4
	call malloc
	mv s1, a0
	sw s0, 0(s1)
	j .LBB47
.LBB46: 
	lw ra, 116(sp)
	sw s2, 0(ra)
	lw ra, 116(sp)
	addi t0, ra, 4
	lw ra, 16(sp)
	sw t0, 0(ra)
	j .LBB41
.LBB47: 
	lw ra, 0(s1)
	sw ra, 8(sp)
	lw t0, 8(sp)
	lw ra, 60(sp)
	slt ra, t0, ra
	lw t0, 8(sp)
	lw ra, 60(sp)
	blt t0, ra, .LBB48
	j .LBB49
.LBB48: 
	li t0, 1
	li ra, 4
	mul ra, t0, ra
	addi a0, ra, 4
	call malloc
	li ra, 1
	sw ra, 0(a0)
	addi ra, a0, 4
	lw t0, 8(sp)
	sw ra, 0(t0)
	lw ra, 8(sp)
	addi ra, ra, 4
	sw ra, 0(s1)
	j .LBB47
.LBB49: 
	lw ra, 112(sp)
	sw s0, 0(ra)
	lw ra, 112(sp)
	addi t0, ra, 4
	lw ra, 12(sp)
	sw t0, 0(ra)
	j .LBB44


	.section	.data
