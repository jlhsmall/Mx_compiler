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
	addi sp, sp, -768
	sw ra, 764(sp)
	sw s0, 164(sp)
	sw s1, 160(sp)
	sw s2, 156(sp)
	sw s3, 152(sp)
	sw s4, 148(sp)
	sw s5, 144(sp)
	sw s6, 140(sp)
	sw s7, 136(sp)
	sw s8, 132(sp)
	sw s9, 128(sp)
	sw s10, 124(sp)
	sw s11, 120(sp)
	mv s1, t0
	mv t5, t1
	mv t1, a0
	mv s4, a1
	mv t4, a2
	mv a6, a3
	mv s11, a5
	mv s6, a6
	mv s10, a7
	mv s7, t3
	mv a2, t4
	mv a3, t5
	mv a0, t6
	call init_main
	mv t0, s1
	mv t1, t5
	mv a0, t1
	mv a1, s4
	mv a2, t4
	mv a3, a6
	mv a5, s11
	mv a6, s6
	mv a7, s10
	mv t3, s7
	mv t4, a2
	mv t5, a3
	mv t6, a0
	la a0, n
	lw a0, 0(a0)
	mv s1, t0
	mv t5, t1
	mv t1, a0
	mv s4, a1
	mv t4, a2
	mv a6, a3
	mv s11, a5
	mv s6, a6
	mv s10, a7
	mv s7, t3
	mv a2, t4
	mv a3, t5
	mv a0, t6
	call getInt
	mv t0, s1
	mv t1, t5
	mv a0, t1
	mv a1, s4
	mv a2, t4
	mv a3, a6
	mv a5, s11
	mv a6, s6
	mv a7, s10
	mv t3, s7
	mv t4, a2
	mv t5, a3
	mv t6, a0
	mv t6, ra
	mv ra, t0
	mv s1, t1
	mv t5, t2
	mv t2, a0
	mv t1, a1
	mv s4, a2
	mv t4, a3
	mv a6, a4
	mv a4, a5
	mv s11, a6
	mv s6, a7
	mv s10, t3
	mv s7, t4
	mv a2, t5
	mv a3, t6
	li a0, 4
	call malloc
	mv ra, t6
	mv t0, ra
	mv t1, s1
	mv t2, t5
	mv a0, t2
	mv a1, t1
	mv a2, s4
	mv a3, t4
	mv a4, a6
	mv a5, a4
	mv a6, s11
	mv a7, s6
	mv t3, s10
	mv t4, s7
	mv t5, a2
	mv t6, a3
	sw s3, 0(s5)
	la a0, n
	sw s3, 0(a0)
	la a0, p
	lw a0, 0(a0)
	mv s1, t0
	mv t5, t1
	mv t1, a0
	mv s4, a1
	mv t4, a2
	mv a6, a3
	mv s11, a5
	mv s6, a6
	mv s10, a7
	mv s7, t3
	mv a2, t4
	mv a3, t5
	mv a0, t6
	call getInt
	mv t0, s1
	mv t1, t5
	mv a0, t1
	mv a1, s4
	mv a2, t4
	mv a3, a6
	mv a5, s11
	mv a6, s6
	mv a7, s10
	mv t3, s7
	mv t4, a2
	mv t5, a3
	mv t6, a0
	mv t6, ra
	mv ra, t0
	mv s1, t1
	mv t5, t2
	mv t2, a0
	mv t1, a1
	mv s4, a2
	mv t4, a3
	mv a6, a4
	mv a4, a5
	mv s11, a6
	mv s6, a7
	mv s10, t3
	mv s7, t4
	mv a2, t5
	mv a3, t6
	li a0, 4
	call malloc
	mv ra, t6
	mv t0, ra
	mv t1, s1
	mv t2, t5
	mv a0, t2
	mv a1, t1
	mv a2, s4
	mv a3, t4
	mv a4, a6
	mv a5, a4
	mv a6, s11
	mv a7, s6
	mv t3, s10
	mv t4, s7
	mv t5, a2
	mv t6, a3
	sw s3, 0(a7)
	la a0, p
	sw s3, 0(a0)
	la a0, k
	lw a0, 0(a0)
	mv s4, ra
	mv s11, t0
	mv s6, t1
	mv s10, t2
	mv s7, a0
	mv a2, a1
	mv a0, a2
	call getInt
	mv ra, s4
	mv t0, s11
	mv t1, s6
	mv t2, s10
	mv a0, s7
	mv a1, a2
	mv a2, a0
	li a0, 4
	call malloc
	sw s9, 0(s3)
	la s3, k
	sw s9, 0(s3)
	la s3, p
	lw s9, 0(s3)
	la s3, k
	lw s3, 0(s3)
	sub s9, s9, s3
	li s3, 1
	blt s3, s9, .LBB3
	j .LBB4
.LBB3: 
	sw ra, 372(sp)
	sw t0, 368(sp)
	sw t1, 364(sp)
	sw t2, 360(sp)
	sw a0, 356(sp)
	sw a1, 352(sp)
	sw a2, 348(sp)
	sw a3, 344(sp)
	sw a4, 340(sp)
	sw a5, 336(sp)
	sw a6, 332(sp)
	sw a7, 328(sp)
	sw t3, 324(sp)
	sw t4, 320(sp)
	sw t5, 316(sp)
	sw t6, 312(sp)
	la s3, .str.1
	sw s3, 308(sp)
	lw a0, 308(sp)
	call print
	lw ra, 372(sp)
	lw t0, 368(sp)
	lw t1, 364(sp)
	lw t2, 360(sp)
	lw a0, 356(sp)
	lw a1, 352(sp)
	lw a2, 348(sp)
	lw a3, 344(sp)
	lw a4, 340(sp)
	lw a5, 336(sp)
	lw a6, 332(sp)
	lw a7, 328(sp)
	lw t3, 324(sp)
	lw t4, 320(sp)
	lw t5, 316(sp)
	lw t6, 312(sp)
	j .LBB4
.LBB4: 
	la s3, i
	lw s3, 0(s3)
	la s3, p
	lw s9, 0(s3)
	la s3, k
	lw s3, 0(s3)
	sub s9, s9, s3
	la s3, i
	sw s9, 0(s3)
	j .LBB5
.LBB5: 
	la s3, i
	sw s3, 420(sp)
	lw s3, 420(sp)
	lw s3, 0(s3)
	sw s3, 416(sp)
	la s3, p
	sw s3, 412(sp)
	lw s3, 412(sp)
	lw s3, 0(s3)
	sw s3, 408(sp)
	la s3, k
	sw s3, 404(sp)
	lw s3, 404(sp)
	lw s3, 0(s3)
	sw s3, 400(sp)
	lw s9, 408(sp)
	lw s3, 400(sp)
	add s3, s9, s3
	sw s3, 396(sp)
	lw s9, 396(sp)
	lw s3, 416(sp)
	bge s9, s3, .LBB7
	j .LBB6
.LBB6: 
	la s3, p
	sw s3, 100(sp)
	lw s3, 100(sp)
	lw s3, 0(s3)
	sw s3, 96(sp)
	la s3, k
	sw s3, 92(sp)
	lw s3, 92(sp)
	lw s3, 0(s3)
	sw s3, 88(sp)
	lw s9, 96(sp)
	lw s3, 88(sp)
	add s3, s9, s3
	sw s3, 84(sp)
	la s3, n
	sw s3, 80(sp)
	lw s3, 80(sp)
	lw s3, 0(s3)
	sw s3, 76(sp)
	lw s9, 84(sp)
	lw s3, 76(sp)
	blt s9, s3, .LBB8
	j .LBB9
.LBB7: 
	la s3, i
	sw s3, 72(sp)
	lw s3, 72(sp)
	lw s3, 0(s3)
	sw s3, 68(sp)
	lw s3, 68(sp)
	slti s3, s3, 1
	sb s3, 64(sp)
	lb s3, 64(sp)
	xori s3, s3, 1
	sb s3, 64(sp)
	lb s3, 64(sp)
	li s3, 1
	sw s3, 60(sp)
	lw s9, 68(sp)
	lw s3, 60(sp)
	bge s9, s3, .LBB10
	j .LBB11
.LBB8: 
	sw ra, 56(sp)
	sw t0, 52(sp)
	sw t1, 48(sp)
	sw t2, 44(sp)
	sw a0, 40(sp)
	sw a1, 36(sp)
	sw a2, 32(sp)
	sw a3, 28(sp)
	sw a4, 24(sp)
	sw a5, 20(sp)
	sw a6, 16(sp)
	sw a7, 12(sp)
	sw t3, 8(sp)
	sw t4, 4(sp)
	sw t5, 0(sp)
	la a0, .str.3
	call print
	lw ra, 56(sp)
	lw t0, 52(sp)
	lw t1, 48(sp)
	lw t2, 44(sp)
	lw a0, 40(sp)
	lw a1, 36(sp)
	lw a2, 32(sp)
	lw a3, 28(sp)
	lw a4, 24(sp)
	lw a5, 20(sp)
	lw a6, 16(sp)
	lw a7, 12(sp)
	lw t3, 8(sp)
	lw t4, 4(sp)
	lw t5, 0(sp)
	j .LBB9
.LBB9: 
	mv a0, zero
	j .LBB12
.LBB10: 
	la s3, i
	sw s3, 392(sp)
	lw s3, 392(sp)
	lw s3, 0(s3)
	sw s3, 388(sp)
	la s3, n
	sw s3, 384(sp)
	lw s3, 384(sp)
	lw s3, 0(s3)
	sw s3, 380(sp)
	lw s9, 380(sp)
	lw s3, 388(sp)
	slt s3, s9, s3
	sb s3, 376(sp)
	lb s3, 376(sp)
	xori s3, s3, 1
	sb s3, 376(sp)
	lb s3, 376(sp)
	j .LBB11
.LBB11: 
	bnez s3, .LBB13
	j .LBB14
.LBB12: 
	lw s0, 164(sp)
	lw s1, 160(sp)
	lw s2, 156(sp)
	lw s3, 152(sp)
	lw s4, 148(sp)
	lw s5, 144(sp)
	lw s6, 140(sp)
	lw s7, 136(sp)
	lw s8, 132(sp)
	lw s9, 128(sp)
	lw s10, 124(sp)
	lw s11, 120(sp)
	lw ra, 764(sp)
	addi sp, sp, 768
	ret
.LBB13: 
	la s3, i
	lw s9, 0(s3)
	la s3, p
	lw s3, 0(s3)
	beq s9, s3, .LBB15
	j .LBB16
.LBB14: 
	j .LBB17
.LBB15: 
	sw ra, 764(sp)
	sw t0, 760(sp)
	sw t1, 756(sp)
	sw t2, 752(sp)
	sw a0, 748(sp)
	sw a1, 744(sp)
	sw a2, 740(sp)
	sw a3, 736(sp)
	sw a4, 732(sp)
	sw a5, 728(sp)
	sw a6, 724(sp)
	sw a7, 720(sp)
	sw t3, 716(sp)
	sw t4, 712(sp)
	sw t5, 708(sp)
	sw t6, 704(sp)
	la s9, .str.5
	sw s9, 700(sp)
	lw a0, 700(sp)
	call print
	lw ra, 764(sp)
	lw t0, 760(sp)
	lw t1, 756(sp)
	lw t2, 752(sp)
	lw a0, 748(sp)
	lw a1, 744(sp)
	lw a2, 740(sp)
	lw a3, 736(sp)
	lw a4, 732(sp)
	lw a5, 728(sp)
	lw a6, 724(sp)
	lw a7, 720(sp)
	lw t3, 716(sp)
	lw t4, 712(sp)
	lw t5, 708(sp)
	lw t6, 704(sp)
	la s9, i
	sw s9, 696(sp)
	lw s9, 696(sp)
	lw s9, 0(s9)
	sw s9, 692(sp)
	sw ra, 688(sp)
	sw t0, 684(sp)
	sw t1, 680(sp)
	sw t2, 676(sp)
	sw a0, 672(sp)
	sw a1, 668(sp)
	sw a2, 664(sp)
	sw a3, 660(sp)
	sw a4, 656(sp)
	sw a5, 652(sp)
	sw a6, 648(sp)
	sw a7, 644(sp)
	sw t3, 640(sp)
	sw t4, 636(sp)
	sw t5, 632(sp)
	sw t6, 628(sp)
	lw a0, 692(sp)
	call toString
	lw ra, 688(sp)
	lw t0, 684(sp)
	lw t1, 680(sp)
	lw t2, 676(sp)
	lw a0, 672(sp)
	lw a1, 668(sp)
	lw a2, 664(sp)
	lw a3, 660(sp)
	lw a4, 656(sp)
	lw a5, 652(sp)
	lw a6, 648(sp)
	lw a7, 644(sp)
	lw t3, 640(sp)
	lw t4, 636(sp)
	lw t5, 632(sp)
	lw t6, 628(sp)
	sw ra, 624(sp)
	sw t0, 620(sp)
	sw t1, 616(sp)
	sw t2, 612(sp)
	sw a0, 608(sp)
	sw a1, 604(sp)
	sw a2, 600(sp)
	sw a3, 596(sp)
	sw a4, 592(sp)
	sw a5, 588(sp)
	sw a6, 584(sp)
	sw a7, 580(sp)
	sw t3, 576(sp)
	sw t4, 572(sp)
	sw t5, 568(sp)
	sw t6, 564(sp)
	li s9, 4
	sw s9, 560(sp)
	lw a0, 560(sp)
	call malloc
	lw ra, 624(sp)
	lw t0, 620(sp)
	lw t1, 616(sp)
	lw t2, 612(sp)
	lw a0, 608(sp)
	lw a1, 604(sp)
	lw a2, 600(sp)
	lw a3, 596(sp)
	lw a4, 592(sp)
	lw a5, 588(sp)
	lw a6, 584(sp)
	lw a7, 580(sp)
	lw t3, 576(sp)
	lw t4, 572(sp)
	lw t5, 568(sp)
	lw t6, 564(sp)
	sw s3, 556(sp)
	lw s3, 556(sp)
	sw a0, 0(s3)
	sw ra, 552(sp)
	sw t0, 548(sp)
	sw t1, 544(sp)
	sw t2, 540(sp)
	sw a0, 536(sp)
	sw a1, 532(sp)
	sw a2, 528(sp)
	sw a3, 524(sp)
	sw a4, 520(sp)
	sw a5, 516(sp)
	sw a6, 512(sp)
	sw a7, 508(sp)
	sw t3, 504(sp)
	sw t4, 500(sp)
	sw t5, 496(sp)
	sw t6, 492(sp)
	call print
	lw ra, 552(sp)
	lw t0, 548(sp)
	lw t1, 544(sp)
	lw t2, 540(sp)
	lw a0, 536(sp)
	lw a1, 532(sp)
	lw a2, 528(sp)
	lw a3, 524(sp)
	lw a4, 520(sp)
	lw a5, 516(sp)
	lw a6, 512(sp)
	lw a7, 508(sp)
	lw t3, 504(sp)
	lw t4, 500(sp)
	lw t5, 496(sp)
	lw t6, 492(sp)
	sw ra, 488(sp)
	sw t0, 484(sp)
	sw t1, 480(sp)
	sw t2, 476(sp)
	sw a0, 472(sp)
	sw a1, 468(sp)
	sw a2, 464(sp)
	sw a3, 460(sp)
	sw a4, 456(sp)
	sw a5, 452(sp)
	sw a6, 448(sp)
	sw a7, 444(sp)
	sw t3, 440(sp)
	sw t4, 436(sp)
	sw t5, 432(sp)
	sw t6, 428(sp)
	la s3, .str.4
	sw s3, 424(sp)
	lw a0, 424(sp)
	call print
	lw ra, 488(sp)
	lw t0, 484(sp)
	lw t1, 480(sp)
	lw t2, 476(sp)
	lw a0, 472(sp)
	lw a1, 468(sp)
	lw a2, 464(sp)
	lw a3, 460(sp)
	lw a4, 456(sp)
	lw a5, 452(sp)
	lw a6, 448(sp)
	lw a7, 444(sp)
	lw t3, 440(sp)
	lw t4, 436(sp)
	lw t5, 432(sp)
	lw t6, 428(sp)
	j .LBB18
.LBB16: 
	la s3, i
	sw s3, 304(sp)
	lw s3, 304(sp)
	lw s3, 0(s3)
	sw s3, 300(sp)
	sw ra, 296(sp)
	sw t0, 292(sp)
	sw t1, 288(sp)
	sw t2, 284(sp)
	sw a0, 280(sp)
	sw a1, 276(sp)
	sw a2, 272(sp)
	sw a3, 268(sp)
	sw a4, 264(sp)
	sw a5, 260(sp)
	sw a6, 256(sp)
	sw a7, 252(sp)
	sw t3, 248(sp)
	sw t4, 244(sp)
	sw t5, 240(sp)
	sw t6, 236(sp)
	lw a0, 300(sp)
	call printInt
	lw ra, 296(sp)
	lw t0, 292(sp)
	lw t1, 288(sp)
	lw t2, 284(sp)
	lw a0, 280(sp)
	lw a1, 276(sp)
	lw a2, 272(sp)
	lw a3, 268(sp)
	lw a4, 264(sp)
	lw a5, 260(sp)
	lw a6, 256(sp)
	lw a7, 252(sp)
	lw t3, 248(sp)
	lw t4, 244(sp)
	lw t5, 240(sp)
	lw t6, 236(sp)
	sw ra, 232(sp)
	sw t0, 228(sp)
	sw t1, 224(sp)
	sw t2, 220(sp)
	sw a0, 216(sp)
	sw a1, 212(sp)
	sw a2, 208(sp)
	sw a3, 204(sp)
	sw a4, 200(sp)
	sw a5, 196(sp)
	sw a6, 192(sp)
	sw a7, 188(sp)
	sw t3, 184(sp)
	sw t4, 180(sp)
	sw t5, 176(sp)
	sw t6, 172(sp)
	la s3, .str.2
	sw s3, 168(sp)
	lw a0, 168(sp)
	call print
	lw ra, 232(sp)
	lw t0, 228(sp)
	lw t1, 224(sp)
	lw t2, 220(sp)
	lw a0, 216(sp)
	lw a1, 212(sp)
	lw a2, 208(sp)
	lw a3, 204(sp)
	lw a4, 200(sp)
	lw a5, 196(sp)
	lw a6, 192(sp)
	lw a7, 188(sp)
	lw t3, 184(sp)
	lw t4, 180(sp)
	lw t5, 176(sp)
	lw t6, 172(sp)
	j .LBB18
.LBB17: 
	la s3, i
	sw s3, 116(sp)
	lw s3, 116(sp)
	lw s3, 0(s3)
	sw s3, 112(sp)
	lw s3, 112(sp)
	addi s3, s3, 1
	sw s3, 108(sp)
	la s3, i
	sw s3, 104(sp)
	lw s9, 108(sp)
	lw s3, 104(sp)
	sw s9, 0(s3)
	j .LBB5
.LBB18: 
	j .LBB14


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

