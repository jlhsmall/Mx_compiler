	.text

	.globl	init_main
	.p2align	2
init_main:
.LBB0: 
	addi sp, sp, -16
	li t2, 1
	sw t2, 0(sp)
	lw t0, 0(sp)
	la t1, A
	sw t0, 0(t1)
	li t2, 1
	sw t2, 4(sp)
	lw t0, 4(sp)
	la t1, B
	sw t0, 0(t1)
	li t2, 1
	sw t2, 8(sp)
	lw t0, 8(sp)
	la t1, C
	sw t0, 0(t1)
	mv a0, zero
	addi sp, sp, 16
	ret

	.globl	main
	.p2align	2
main:
.LBB1: 
	addi sp, sp, -6244
	sw ra, 6240(sp)
	call init_main
	j .LBB2
.LBB2: 
	la t0, C
	lw t2, 0(t0)
	sw t2, 0(sp)
	li t2, 1
	sw t2, 8(sp)
	lw t0, 8(sp)
	slli t2, t0, 29
	sw t2, 4(sp)
	lw t0, 0(sp)
	lw t1, 4(sp)
	slt t2, t0, t1
	sw t2, 12(sp)
	lw t0, 12(sp)
	mv t2, t0
	sw t2, 16(sp)
	lw t0, 0(sp)
	lw t1, 4(sp)
	blt t0, t1, .LBB3
	j .LBB4
.LBB3: 
	la t0, C
	lw t2, 0(t0)
	sw t2, 20(sp)
	li t2, 1
	sw t2, 28(sp)
	lw t0, 28(sp)
	slli t2, t0, 29
	sw t2, 24(sp)
	lw t1, 24(sp)
	sub t2, zero, t1
	sw t2, 32(sp)
	lw t0, 32(sp)
	lw t1, 20(sp)
	slt t2, t0, t1
	sw t2, 36(sp)
	lw t0, 36(sp)
	mv t2, t0
	sw t2, 16(sp)
	j .LBB4
.LBB4: 
	lw t0, 16(sp)
	bnez t0, .LBB5
	j .LBB6
.LBB5: 
	la t0, A
	lw t2, 0(t0)
	sw t2, 40(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 44(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 48(sp)
	lw t0, 44(sp)
	lw t1, 48(sp)
	sub t2, t0, t1
	sw t2, 52(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 56(sp)
	lw t0, 52(sp)
	lw t1, 56(sp)
	add t2, t0, t1
	sw t2, 60(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 64(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 68(sp)
	lw t0, 64(sp)
	lw t1, 68(sp)
	add t2, t0, t1
	sw t2, 72(sp)
	lw t0, 60(sp)
	lw t1, 72(sp)
	sub t2, t0, t1
	sw t2, 76(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 80(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 84(sp)
	lw t0, 80(sp)
	lw t1, 84(sp)
	sub t2, t0, t1
	sw t2, 88(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 92(sp)
	lw t0, 88(sp)
	lw t1, 92(sp)
	add t2, t0, t1
	sw t2, 96(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 100(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 104(sp)
	lw t0, 100(sp)
	lw t1, 104(sp)
	add t2, t0, t1
	sw t2, 108(sp)
	lw t0, 96(sp)
	lw t1, 108(sp)
	sub t2, t0, t1
	sw t2, 112(sp)
	lw t0, 76(sp)
	lw t1, 112(sp)
	add t2, t0, t1
	sw t2, 116(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 120(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 124(sp)
	lw t0, 120(sp)
	lw t1, 124(sp)
	sub t2, t0, t1
	sw t2, 128(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 132(sp)
	lw t0, 128(sp)
	lw t1, 132(sp)
	add t2, t0, t1
	sw t2, 136(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 140(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 144(sp)
	lw t0, 140(sp)
	lw t1, 144(sp)
	add t2, t0, t1
	sw t2, 148(sp)
	lw t0, 136(sp)
	lw t1, 148(sp)
	sub t2, t0, t1
	sw t2, 152(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 156(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 160(sp)
	lw t0, 156(sp)
	lw t1, 160(sp)
	sub t2, t0, t1
	sw t2, 164(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 168(sp)
	lw t0, 164(sp)
	lw t1, 168(sp)
	add t2, t0, t1
	sw t2, 172(sp)
	lw t0, 152(sp)
	lw t1, 172(sp)
	add t2, t0, t1
	sw t2, 176(sp)
	lw t0, 116(sp)
	lw t1, 176(sp)
	add t2, t0, t1
	sw t2, 180(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 184(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 188(sp)
	lw t0, 184(sp)
	lw t1, 188(sp)
	add t2, t0, t1
	sw t2, 192(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 196(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 200(sp)
	lw t0, 196(sp)
	lw t1, 200(sp)
	sub t2, t0, t1
	sw t2, 204(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 208(sp)
	lw t0, 204(sp)
	lw t1, 208(sp)
	add t2, t0, t1
	sw t2, 212(sp)
	lw t0, 192(sp)
	lw t1, 212(sp)
	add t2, t0, t1
	sw t2, 216(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 220(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 224(sp)
	lw t0, 220(sp)
	lw t1, 224(sp)
	add t2, t0, t1
	sw t2, 228(sp)
	lw t0, 216(sp)
	lw t1, 228(sp)
	sub t2, t0, t1
	sw t2, 232(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 236(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 240(sp)
	lw t0, 236(sp)
	lw t1, 240(sp)
	sub t2, t0, t1
	sw t2, 244(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 248(sp)
	lw t0, 244(sp)
	lw t1, 248(sp)
	add t2, t0, t1
	sw t2, 252(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 256(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 260(sp)
	lw t0, 256(sp)
	lw t1, 260(sp)
	add t2, t0, t1
	sw t2, 264(sp)
	lw t0, 252(sp)
	lw t1, 264(sp)
	sub t2, t0, t1
	sw t2, 268(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 272(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 276(sp)
	lw t0, 272(sp)
	lw t1, 276(sp)
	sub t2, t0, t1
	sw t2, 280(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 284(sp)
	lw t0, 280(sp)
	lw t1, 284(sp)
	add t2, t0, t1
	sw t2, 288(sp)
	lw t0, 268(sp)
	lw t1, 288(sp)
	add t2, t0, t1
	sw t2, 292(sp)
	lw t0, 232(sp)
	lw t1, 292(sp)
	add t2, t0, t1
	sw t2, 296(sp)
	lw t0, 180(sp)
	lw t1, 296(sp)
	sub t2, t0, t1
	sw t2, 300(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 304(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 308(sp)
	lw t0, 304(sp)
	lw t1, 308(sp)
	add t2, t0, t1
	sw t2, 312(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 316(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 320(sp)
	lw t0, 316(sp)
	lw t1, 320(sp)
	sub t2, t0, t1
	sw t2, 324(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 328(sp)
	lw t0, 324(sp)
	lw t1, 328(sp)
	add t2, t0, t1
	sw t2, 332(sp)
	lw t0, 312(sp)
	lw t1, 332(sp)
	add t2, t0, t1
	sw t2, 336(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 340(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 344(sp)
	lw t0, 340(sp)
	lw t1, 344(sp)
	add t2, t0, t1
	sw t2, 348(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 352(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 356(sp)
	lw t0, 352(sp)
	lw t1, 356(sp)
	sub t2, t0, t1
	sw t2, 360(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 364(sp)
	lw t0, 360(sp)
	lw t1, 364(sp)
	add t2, t0, t1
	sw t2, 368(sp)
	lw t0, 348(sp)
	lw t1, 368(sp)
	add t2, t0, t1
	sw t2, 372(sp)
	lw t0, 336(sp)
	lw t1, 372(sp)
	sub t2, t0, t1
	sw t2, 376(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 380(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 384(sp)
	lw t0, 380(sp)
	lw t1, 384(sp)
	add t2, t0, t1
	sw t2, 388(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 392(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 396(sp)
	lw t0, 392(sp)
	lw t1, 396(sp)
	sub t2, t0, t1
	sw t2, 400(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 404(sp)
	lw t0, 400(sp)
	lw t1, 404(sp)
	add t2, t0, t1
	sw t2, 408(sp)
	lw t0, 388(sp)
	lw t1, 408(sp)
	add t2, t0, t1
	sw t2, 412(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 416(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 420(sp)
	lw t0, 416(sp)
	lw t1, 420(sp)
	add t2, t0, t1
	sw t2, 424(sp)
	lw t0, 412(sp)
	lw t1, 424(sp)
	sub t2, t0, t1
	sw t2, 428(sp)
	lw t0, 376(sp)
	lw t1, 428(sp)
	sub t2, t0, t1
	sw t2, 432(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 436(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 440(sp)
	lw t0, 436(sp)
	lw t1, 440(sp)
	sub t2, t0, t1
	sw t2, 444(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 448(sp)
	lw t0, 444(sp)
	lw t1, 448(sp)
	add t2, t0, t1
	sw t2, 452(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 456(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 460(sp)
	lw t0, 456(sp)
	lw t1, 460(sp)
	add t2, t0, t1
	sw t2, 464(sp)
	lw t0, 452(sp)
	lw t1, 464(sp)
	sub t2, t0, t1
	sw t2, 468(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 472(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 476(sp)
	lw t0, 472(sp)
	lw t1, 476(sp)
	sub t2, t0, t1
	sw t2, 480(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 484(sp)
	lw t0, 480(sp)
	lw t1, 484(sp)
	add t2, t0, t1
	sw t2, 488(sp)
	lw t0, 468(sp)
	lw t1, 488(sp)
	add t2, t0, t1
	sw t2, 492(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 496(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 500(sp)
	lw t0, 496(sp)
	lw t1, 500(sp)
	add t2, t0, t1
	sw t2, 504(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 508(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 512(sp)
	lw t0, 508(sp)
	lw t1, 512(sp)
	sub t2, t0, t1
	sw t2, 516(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 520(sp)
	lw t0, 516(sp)
	lw t1, 520(sp)
	add t2, t0, t1
	sw t2, 524(sp)
	lw t0, 504(sp)
	lw t1, 524(sp)
	add t2, t0, t1
	sw t2, 528(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 532(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 536(sp)
	lw t0, 532(sp)
	lw t1, 536(sp)
	add t2, t0, t1
	sw t2, 540(sp)
	lw t0, 528(sp)
	lw t1, 540(sp)
	sub t2, t0, t1
	sw t2, 544(sp)
	lw t0, 492(sp)
	lw t1, 544(sp)
	sub t2, t0, t1
	sw t2, 548(sp)
	lw t0, 432(sp)
	lw t1, 548(sp)
	add t2, t0, t1
	sw t2, 552(sp)
	lw t0, 300(sp)
	lw t1, 552(sp)
	sub t2, t0, t1
	sw t2, 556(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 560(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 564(sp)
	lw t0, 560(sp)
	lw t1, 564(sp)
	sub t2, t0, t1
	sw t2, 568(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 572(sp)
	lw t0, 568(sp)
	lw t1, 572(sp)
	add t2, t0, t1
	sw t2, 576(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 580(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 584(sp)
	lw t0, 580(sp)
	lw t1, 584(sp)
	add t2, t0, t1
	sw t2, 588(sp)
	lw t0, 576(sp)
	lw t1, 588(sp)
	sub t2, t0, t1
	sw t2, 592(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 596(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 600(sp)
	lw t0, 596(sp)
	lw t1, 600(sp)
	sub t2, t0, t1
	sw t2, 604(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 608(sp)
	lw t0, 604(sp)
	lw t1, 608(sp)
	add t2, t0, t1
	sw t2, 612(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 616(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 620(sp)
	lw t0, 616(sp)
	lw t1, 620(sp)
	add t2, t0, t1
	sw t2, 624(sp)
	lw t0, 612(sp)
	lw t1, 624(sp)
	sub t2, t0, t1
	sw t2, 628(sp)
	lw t0, 592(sp)
	lw t1, 628(sp)
	add t2, t0, t1
	sw t2, 632(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 636(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 640(sp)
	lw t0, 636(sp)
	lw t1, 640(sp)
	sub t2, t0, t1
	sw t2, 644(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 648(sp)
	lw t0, 644(sp)
	lw t1, 648(sp)
	add t2, t0, t1
	sw t2, 652(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 656(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 660(sp)
	lw t0, 656(sp)
	lw t1, 660(sp)
	add t2, t0, t1
	sw t2, 664(sp)
	lw t0, 652(sp)
	lw t1, 664(sp)
	sub t2, t0, t1
	sw t2, 668(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 672(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 676(sp)
	lw t0, 672(sp)
	lw t1, 676(sp)
	sub t2, t0, t1
	sw t2, 680(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 684(sp)
	lw t0, 680(sp)
	lw t1, 684(sp)
	add t2, t0, t1
	sw t2, 688(sp)
	lw t0, 668(sp)
	lw t1, 688(sp)
	add t2, t0, t1
	sw t2, 692(sp)
	lw t0, 632(sp)
	lw t1, 692(sp)
	add t2, t0, t1
	sw t2, 696(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 700(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 704(sp)
	lw t0, 700(sp)
	lw t1, 704(sp)
	add t2, t0, t1
	sw t2, 708(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 712(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 716(sp)
	lw t0, 712(sp)
	lw t1, 716(sp)
	sub t2, t0, t1
	sw t2, 720(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 724(sp)
	lw t0, 720(sp)
	lw t1, 724(sp)
	add t2, t0, t1
	sw t2, 728(sp)
	lw t0, 708(sp)
	lw t1, 728(sp)
	add t2, t0, t1
	sw t2, 732(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 736(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 740(sp)
	lw t0, 736(sp)
	lw t1, 740(sp)
	add t2, t0, t1
	sw t2, 744(sp)
	lw t0, 732(sp)
	lw t1, 744(sp)
	sub t2, t0, t1
	sw t2, 748(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 752(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 756(sp)
	lw t0, 752(sp)
	lw t1, 756(sp)
	sub t2, t0, t1
	sw t2, 760(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 764(sp)
	lw t0, 760(sp)
	lw t1, 764(sp)
	add t2, t0, t1
	sw t2, 768(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 772(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 776(sp)
	lw t0, 772(sp)
	lw t1, 776(sp)
	add t2, t0, t1
	sw t2, 780(sp)
	lw t0, 768(sp)
	lw t1, 780(sp)
	sub t2, t0, t1
	sw t2, 784(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 788(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 792(sp)
	lw t0, 788(sp)
	lw t1, 792(sp)
	sub t2, t0, t1
	sw t2, 796(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 800(sp)
	lw t0, 796(sp)
	lw t1, 800(sp)
	add t2, t0, t1
	sw t2, 804(sp)
	lw t0, 784(sp)
	lw t1, 804(sp)
	add t2, t0, t1
	sw t2, 808(sp)
	lw t0, 748(sp)
	lw t1, 808(sp)
	add t2, t0, t1
	sw t2, 812(sp)
	lw t0, 696(sp)
	lw t1, 812(sp)
	sub t2, t0, t1
	sw t2, 816(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 820(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 824(sp)
	lw t0, 820(sp)
	lw t1, 824(sp)
	add t2, t0, t1
	sw t2, 828(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 832(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 836(sp)
	lw t0, 832(sp)
	lw t1, 836(sp)
	sub t2, t0, t1
	sw t2, 840(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 844(sp)
	lw t0, 840(sp)
	lw t1, 844(sp)
	add t2, t0, t1
	sw t2, 848(sp)
	lw t0, 828(sp)
	lw t1, 848(sp)
	add t2, t0, t1
	sw t2, 852(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 856(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 860(sp)
	lw t0, 856(sp)
	lw t1, 860(sp)
	add t2, t0, t1
	sw t2, 864(sp)
	lw t0, 852(sp)
	lw t1, 864(sp)
	sub t2, t0, t1
	sw t2, 868(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 872(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 876(sp)
	lw t0, 872(sp)
	lw t1, 876(sp)
	sub t2, t0, t1
	sw t2, 880(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 884(sp)
	lw t0, 880(sp)
	lw t1, 884(sp)
	add t2, t0, t1
	sw t2, 888(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 892(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 896(sp)
	lw t0, 892(sp)
	lw t1, 896(sp)
	add t2, t0, t1
	sw t2, 900(sp)
	lw t0, 888(sp)
	lw t1, 900(sp)
	sub t2, t0, t1
	sw t2, 904(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 908(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 912(sp)
	lw t0, 908(sp)
	lw t1, 912(sp)
	sub t2, t0, t1
	sw t2, 916(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 920(sp)
	lw t0, 916(sp)
	lw t1, 920(sp)
	add t2, t0, t1
	sw t2, 924(sp)
	lw t0, 904(sp)
	lw t1, 924(sp)
	add t2, t0, t1
	sw t2, 928(sp)
	lw t0, 868(sp)
	lw t1, 928(sp)
	add t2, t0, t1
	sw t2, 932(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 936(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 940(sp)
	lw t0, 936(sp)
	lw t1, 940(sp)
	add t2, t0, t1
	sw t2, 944(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 948(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 952(sp)
	lw t0, 948(sp)
	lw t1, 952(sp)
	sub t2, t0, t1
	sw t2, 956(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 960(sp)
	lw t0, 956(sp)
	lw t1, 960(sp)
	add t2, t0, t1
	sw t2, 964(sp)
	lw t0, 944(sp)
	lw t1, 964(sp)
	add t2, t0, t1
	sw t2, 968(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 972(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 976(sp)
	lw t0, 972(sp)
	lw t1, 976(sp)
	add t2, t0, t1
	sw t2, 980(sp)
	lw t0, 968(sp)
	lw t1, 980(sp)
	sub t2, t0, t1
	sw t2, 984(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 988(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 992(sp)
	lw t0, 988(sp)
	lw t1, 992(sp)
	sub t2, t0, t1
	sw t2, 996(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 1000(sp)
	lw t0, 996(sp)
	lw t1, 1000(sp)
	add t2, t0, t1
	sw t2, 1004(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 1008(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 1012(sp)
	lw t0, 1008(sp)
	lw t1, 1012(sp)
	add t2, t0, t1
	sw t2, 1016(sp)
	lw t0, 1004(sp)
	lw t1, 1016(sp)
	sub t2, t0, t1
	sw t2, 1020(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 1024(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 1028(sp)
	lw t0, 1024(sp)
	lw t1, 1028(sp)
	sub t2, t0, t1
	sw t2, 1032(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 1036(sp)
	lw t0, 1032(sp)
	lw t1, 1036(sp)
	add t2, t0, t1
	sw t2, 1040(sp)
	lw t0, 1020(sp)
	lw t1, 1040(sp)
	add t2, t0, t1
	sw t2, 1044(sp)
	lw t0, 984(sp)
	lw t1, 1044(sp)
	add t2, t0, t1
	sw t2, 1048(sp)
	lw t0, 932(sp)
	lw t1, 1048(sp)
	sub t2, t0, t1
	sw t2, 1052(sp)
	lw t0, 816(sp)
	lw t1, 1052(sp)
	sub t2, t0, t1
	sw t2, 1056(sp)
	lw t0, 556(sp)
	lw t1, 1056(sp)
	add t2, t0, t1
	sw t2, 1060(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 1064(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 1068(sp)
	lw t0, 1064(sp)
	lw t1, 1068(sp)
	add t2, t0, t1
	sw t2, 1072(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 1076(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 1080(sp)
	lw t0, 1076(sp)
	lw t1, 1080(sp)
	sub t2, t0, t1
	sw t2, 1084(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 1088(sp)
	lw t0, 1084(sp)
	lw t1, 1088(sp)
	add t2, t0, t1
	sw t2, 1092(sp)
	lw t0, 1072(sp)
	lw t1, 1092(sp)
	add t2, t0, t1
	sw t2, 1096(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 1100(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 1104(sp)
	lw t0, 1100(sp)
	lw t1, 1104(sp)
	add t2, t0, t1
	sw t2, 1108(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 1112(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 1116(sp)
	lw t0, 1112(sp)
	lw t1, 1116(sp)
	sub t2, t0, t1
	sw t2, 1120(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 1124(sp)
	lw t0, 1120(sp)
	lw t1, 1124(sp)
	add t2, t0, t1
	sw t2, 1128(sp)
	lw t0, 1108(sp)
	lw t1, 1128(sp)
	add t2, t0, t1
	sw t2, 1132(sp)
	lw t0, 1096(sp)
	lw t1, 1132(sp)
	sub t2, t0, t1
	sw t2, 1136(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 1140(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 1144(sp)
	lw t0, 1140(sp)
	lw t1, 1144(sp)
	add t2, t0, t1
	sw t2, 1148(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 1152(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 1156(sp)
	lw t0, 1152(sp)
	lw t1, 1156(sp)
	sub t2, t0, t1
	sw t2, 1160(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 1164(sp)
	lw t0, 1160(sp)
	lw t1, 1164(sp)
	add t2, t0, t1
	sw t2, 1168(sp)
	lw t0, 1148(sp)
	lw t1, 1168(sp)
	add t2, t0, t1
	sw t2, 1172(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 1176(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 1180(sp)
	lw t0, 1176(sp)
	lw t1, 1180(sp)
	add t2, t0, t1
	sw t2, 1184(sp)
	lw t0, 1172(sp)
	lw t1, 1184(sp)
	sub t2, t0, t1
	sw t2, 1188(sp)
	lw t0, 1136(sp)
	lw t1, 1188(sp)
	sub t2, t0, t1
	sw t2, 1192(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 1196(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 1200(sp)
	lw t0, 1196(sp)
	lw t1, 1200(sp)
	sub t2, t0, t1
	sw t2, 1204(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 1208(sp)
	lw t0, 1204(sp)
	lw t1, 1208(sp)
	add t2, t0, t1
	sw t2, 1212(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 1216(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 1220(sp)
	lw t0, 1216(sp)
	lw t1, 1220(sp)
	add t2, t0, t1
	sw t2, 1224(sp)
	lw t0, 1212(sp)
	lw t1, 1224(sp)
	sub t2, t0, t1
	sw t2, 1228(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 1232(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 1236(sp)
	lw t0, 1232(sp)
	lw t1, 1236(sp)
	sub t2, t0, t1
	sw t2, 1240(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 1244(sp)
	lw t0, 1240(sp)
	lw t1, 1244(sp)
	add t2, t0, t1
	sw t2, 1248(sp)
	lw t0, 1228(sp)
	lw t1, 1248(sp)
	add t2, t0, t1
	sw t2, 1252(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 1256(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 1260(sp)
	lw t0, 1256(sp)
	lw t1, 1260(sp)
	add t2, t0, t1
	sw t2, 1264(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 1268(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 1272(sp)
	lw t0, 1268(sp)
	lw t1, 1272(sp)
	sub t2, t0, t1
	sw t2, 1276(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 1280(sp)
	lw t0, 1276(sp)
	lw t1, 1280(sp)
	add t2, t0, t1
	sw t2, 1284(sp)
	lw t0, 1264(sp)
	lw t1, 1284(sp)
	add t2, t0, t1
	sw t2, 1288(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 1292(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 1296(sp)
	lw t0, 1292(sp)
	lw t1, 1296(sp)
	add t2, t0, t1
	sw t2, 1300(sp)
	lw t0, 1288(sp)
	lw t1, 1300(sp)
	sub t2, t0, t1
	sw t2, 1304(sp)
	lw t0, 1252(sp)
	lw t1, 1304(sp)
	sub t2, t0, t1
	sw t2, 1308(sp)
	lw t0, 1192(sp)
	lw t1, 1308(sp)
	add t2, t0, t1
	sw t2, 1312(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 1316(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 1320(sp)
	lw t0, 1316(sp)
	lw t1, 1320(sp)
	sub t2, t0, t1
	sw t2, 1324(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 1328(sp)
	lw t0, 1324(sp)
	lw t1, 1328(sp)
	add t2, t0, t1
	sw t2, 1332(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 1336(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 1340(sp)
	lw t0, 1336(sp)
	lw t1, 1340(sp)
	add t2, t0, t1
	sw t2, 1344(sp)
	lw t0, 1332(sp)
	lw t1, 1344(sp)
	sub t2, t0, t1
	sw t2, 1348(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 1352(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 1356(sp)
	lw t0, 1352(sp)
	lw t1, 1356(sp)
	sub t2, t0, t1
	sw t2, 1360(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 1364(sp)
	lw t0, 1360(sp)
	lw t1, 1364(sp)
	add t2, t0, t1
	sw t2, 1368(sp)
	lw t0, 1348(sp)
	lw t1, 1368(sp)
	add t2, t0, t1
	sw t2, 1372(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 1376(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 1380(sp)
	lw t0, 1376(sp)
	lw t1, 1380(sp)
	add t2, t0, t1
	sw t2, 1384(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 1388(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 1392(sp)
	lw t0, 1388(sp)
	lw t1, 1392(sp)
	sub t2, t0, t1
	sw t2, 1396(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 1400(sp)
	lw t0, 1396(sp)
	lw t1, 1400(sp)
	add t2, t0, t1
	sw t2, 1404(sp)
	lw t0, 1384(sp)
	lw t1, 1404(sp)
	add t2, t0, t1
	sw t2, 1408(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 1412(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 1416(sp)
	lw t0, 1412(sp)
	lw t1, 1416(sp)
	add t2, t0, t1
	sw t2, 1420(sp)
	lw t0, 1408(sp)
	lw t1, 1420(sp)
	sub t2, t0, t1
	sw t2, 1424(sp)
	lw t0, 1372(sp)
	lw t1, 1424(sp)
	sub t2, t0, t1
	sw t2, 1428(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 1432(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 1436(sp)
	lw t0, 1432(sp)
	lw t1, 1436(sp)
	sub t2, t0, t1
	sw t2, 1440(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 1444(sp)
	lw t0, 1440(sp)
	lw t1, 1444(sp)
	add t2, t0, t1
	sw t2, 1448(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 1452(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 1456(sp)
	lw t0, 1452(sp)
	lw t1, 1456(sp)
	add t2, t0, t1
	sw t2, 1460(sp)
	lw t0, 1448(sp)
	lw t1, 1460(sp)
	sub t2, t0, t1
	sw t2, 1464(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 1468(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 1472(sp)
	lw t0, 1468(sp)
	lw t1, 1472(sp)
	sub t2, t0, t1
	sw t2, 1476(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 1480(sp)
	lw t0, 1476(sp)
	lw t1, 1480(sp)
	add t2, t0, t1
	sw t2, 1484(sp)
	lw t0, 1464(sp)
	lw t1, 1484(sp)
	add t2, t0, t1
	sw t2, 1488(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 1492(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 1496(sp)
	lw t0, 1492(sp)
	lw t1, 1496(sp)
	add t2, t0, t1
	sw t2, 1500(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 1504(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 1508(sp)
	lw t0, 1504(sp)
	lw t1, 1508(sp)
	sub t2, t0, t1
	sw t2, 1512(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 1516(sp)
	lw t0, 1512(sp)
	lw t1, 1516(sp)
	add t2, t0, t1
	sw t2, 1520(sp)
	lw t0, 1500(sp)
	lw t1, 1520(sp)
	add t2, t0, t1
	sw t2, 1524(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 1528(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 1532(sp)
	lw t0, 1528(sp)
	lw t1, 1532(sp)
	add t2, t0, t1
	sw t2, 1536(sp)
	lw t0, 1524(sp)
	lw t1, 1536(sp)
	sub t2, t0, t1
	sw t2, 1540(sp)
	lw t0, 1488(sp)
	lw t1, 1540(sp)
	sub t2, t0, t1
	sw t2, 1544(sp)
	lw t0, 1428(sp)
	lw t1, 1544(sp)
	add t2, t0, t1
	sw t2, 1548(sp)
	lw t0, 1312(sp)
	lw t1, 1548(sp)
	add t2, t0, t1
	sw t2, 1552(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 1556(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 1560(sp)
	lw t0, 1556(sp)
	lw t1, 1560(sp)
	sub t2, t0, t1
	sw t2, 1564(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 1568(sp)
	lw t0, 1564(sp)
	lw t1, 1568(sp)
	add t2, t0, t1
	sw t2, 1572(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 1576(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 1580(sp)
	lw t0, 1576(sp)
	lw t1, 1580(sp)
	add t2, t0, t1
	sw t2, 1584(sp)
	lw t0, 1572(sp)
	lw t1, 1584(sp)
	sub t2, t0, t1
	sw t2, 1588(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 1592(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 1596(sp)
	lw t0, 1592(sp)
	lw t1, 1596(sp)
	sub t2, t0, t1
	sw t2, 1600(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 1604(sp)
	lw t0, 1600(sp)
	lw t1, 1604(sp)
	add t2, t0, t1
	sw t2, 1608(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 1612(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 1616(sp)
	lw t0, 1612(sp)
	lw t1, 1616(sp)
	add t2, t0, t1
	sw t2, 1620(sp)
	lw t0, 1608(sp)
	lw t1, 1620(sp)
	sub t2, t0, t1
	sw t2, 1624(sp)
	lw t0, 1588(sp)
	lw t1, 1624(sp)
	add t2, t0, t1
	sw t2, 1628(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 1632(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 1636(sp)
	lw t0, 1632(sp)
	lw t1, 1636(sp)
	sub t2, t0, t1
	sw t2, 1640(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 1644(sp)
	lw t0, 1640(sp)
	lw t1, 1644(sp)
	add t2, t0, t1
	sw t2, 1648(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 1652(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 1656(sp)
	lw t0, 1652(sp)
	lw t1, 1656(sp)
	add t2, t0, t1
	sw t2, 1660(sp)
	lw t0, 1648(sp)
	lw t1, 1660(sp)
	sub t2, t0, t1
	sw t2, 1664(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 1668(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 1672(sp)
	lw t0, 1668(sp)
	lw t1, 1672(sp)
	sub t2, t0, t1
	sw t2, 1676(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 1680(sp)
	lw t0, 1676(sp)
	lw t1, 1680(sp)
	add t2, t0, t1
	sw t2, 1684(sp)
	lw t0, 1664(sp)
	lw t1, 1684(sp)
	add t2, t0, t1
	sw t2, 1688(sp)
	lw t0, 1628(sp)
	lw t1, 1688(sp)
	add t2, t0, t1
	sw t2, 1692(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 1696(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 1700(sp)
	lw t0, 1696(sp)
	lw t1, 1700(sp)
	add t2, t0, t1
	sw t2, 1704(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 1708(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 1712(sp)
	lw t0, 1708(sp)
	lw t1, 1712(sp)
	sub t2, t0, t1
	sw t2, 1716(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 1720(sp)
	lw t0, 1716(sp)
	lw t1, 1720(sp)
	add t2, t0, t1
	sw t2, 1724(sp)
	lw t0, 1704(sp)
	lw t1, 1724(sp)
	add t2, t0, t1
	sw t2, 1728(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 1732(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 1736(sp)
	lw t0, 1732(sp)
	lw t1, 1736(sp)
	add t2, t0, t1
	sw t2, 1740(sp)
	lw t0, 1728(sp)
	lw t1, 1740(sp)
	sub t2, t0, t1
	sw t2, 1744(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 1748(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 1752(sp)
	lw t0, 1748(sp)
	lw t1, 1752(sp)
	sub t2, t0, t1
	sw t2, 1756(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 1760(sp)
	lw t0, 1756(sp)
	lw t1, 1760(sp)
	add t2, t0, t1
	sw t2, 1764(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 1768(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 1772(sp)
	lw t0, 1768(sp)
	lw t1, 1772(sp)
	add t2, t0, t1
	sw t2, 1776(sp)
	lw t0, 1764(sp)
	lw t1, 1776(sp)
	sub t2, t0, t1
	sw t2, 1780(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 1784(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 1788(sp)
	lw t0, 1784(sp)
	lw t1, 1788(sp)
	sub t2, t0, t1
	sw t2, 1792(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 1796(sp)
	lw t0, 1792(sp)
	lw t1, 1796(sp)
	add t2, t0, t1
	sw t2, 1800(sp)
	lw t0, 1780(sp)
	lw t1, 1800(sp)
	add t2, t0, t1
	sw t2, 1804(sp)
	lw t0, 1744(sp)
	lw t1, 1804(sp)
	add t2, t0, t1
	sw t2, 1808(sp)
	lw t0, 1692(sp)
	lw t1, 1808(sp)
	sub t2, t0, t1
	sw t2, 1812(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 1816(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 1820(sp)
	lw t0, 1816(sp)
	lw t1, 1820(sp)
	add t2, t0, t1
	sw t2, 1824(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 1828(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 1832(sp)
	lw t0, 1828(sp)
	lw t1, 1832(sp)
	sub t2, t0, t1
	sw t2, 1836(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 1840(sp)
	lw t0, 1836(sp)
	lw t1, 1840(sp)
	add t2, t0, t1
	sw t2, 1844(sp)
	lw t0, 1824(sp)
	lw t1, 1844(sp)
	add t2, t0, t1
	sw t2, 1848(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 1852(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 1856(sp)
	lw t0, 1852(sp)
	lw t1, 1856(sp)
	add t2, t0, t1
	sw t2, 1860(sp)
	lw t0, 1848(sp)
	lw t1, 1860(sp)
	sub t2, t0, t1
	sw t2, 1864(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 1868(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 1872(sp)
	lw t0, 1868(sp)
	lw t1, 1872(sp)
	sub t2, t0, t1
	sw t2, 1876(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 1880(sp)
	lw t0, 1876(sp)
	lw t1, 1880(sp)
	add t2, t0, t1
	sw t2, 1884(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 1888(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 1892(sp)
	lw t0, 1888(sp)
	lw t1, 1892(sp)
	add t2, t0, t1
	sw t2, 1896(sp)
	lw t0, 1884(sp)
	lw t1, 1896(sp)
	sub t2, t0, t1
	sw t2, 1900(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 1904(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 1908(sp)
	lw t0, 1904(sp)
	lw t1, 1908(sp)
	sub t2, t0, t1
	sw t2, 1912(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 1916(sp)
	lw t0, 1912(sp)
	lw t1, 1916(sp)
	add t2, t0, t1
	sw t2, 1920(sp)
	lw t0, 1900(sp)
	lw t1, 1920(sp)
	add t2, t0, t1
	sw t2, 1924(sp)
	lw t0, 1864(sp)
	lw t1, 1924(sp)
	add t2, t0, t1
	sw t2, 1928(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 1932(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 1936(sp)
	lw t0, 1932(sp)
	lw t1, 1936(sp)
	add t2, t0, t1
	sw t2, 1940(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 1944(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 1948(sp)
	lw t0, 1944(sp)
	lw t1, 1948(sp)
	sub t2, t0, t1
	sw t2, 1952(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 1956(sp)
	lw t0, 1952(sp)
	lw t1, 1956(sp)
	add t2, t0, t1
	sw t2, 1960(sp)
	lw t0, 1940(sp)
	lw t1, 1960(sp)
	add t2, t0, t1
	sw t2, 1964(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 1968(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 1972(sp)
	lw t0, 1968(sp)
	lw t1, 1972(sp)
	add t2, t0, t1
	sw t2, 1976(sp)
	lw t0, 1964(sp)
	lw t1, 1976(sp)
	sub t2, t0, t1
	sw t2, 1980(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 1984(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 1988(sp)
	lw t0, 1984(sp)
	lw t1, 1988(sp)
	sub t2, t0, t1
	sw t2, 1992(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 1996(sp)
	lw t0, 1992(sp)
	lw t1, 1996(sp)
	add t2, t0, t1
	sw t2, 2000(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 2004(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 2008(sp)
	lw t0, 2004(sp)
	lw t1, 2008(sp)
	add t2, t0, t1
	sw t2, 2012(sp)
	lw t0, 2000(sp)
	lw t1, 2012(sp)
	sub t2, t0, t1
	sw t2, 2016(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 2020(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 2024(sp)
	lw t0, 2020(sp)
	lw t1, 2024(sp)
	sub t2, t0, t1
	sw t2, 2028(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 2032(sp)
	lw t0, 2028(sp)
	lw t1, 2032(sp)
	add t2, t0, t1
	sw t2, 2036(sp)
	lw t0, 2016(sp)
	lw t1, 2036(sp)
	add t2, t0, t1
	sw t2, 2040(sp)
	lw t0, 1980(sp)
	lw t1, 2040(sp)
	add t2, t0, t1
	sw t2, 2044(sp)
	lw t0, 1928(sp)
	lw t1, 2044(sp)
	sub t2, t0, t1
	sw t2, 2048(sp)
	lw t0, 1812(sp)
	lw t1, 2048(sp)
	sub t2, t0, t1
	sw t2, 2052(sp)
	lw t0, 1552(sp)
	lw t1, 2052(sp)
	add t2, t0, t1
	sw t2, 2056(sp)
	lw t0, 1060(sp)
	lw t1, 2056(sp)
	sub t2, t0, t1
	sw t2, 2060(sp)
	lw t0, 2060(sp)
	la t1, A
	sw t0, 0(t1)
	la t0, B
	lw t2, 0(t0)
	sw t2, 2064(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 2068(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 2072(sp)
	lw t0, 2068(sp)
	lw t1, 2072(sp)
	sub t2, t0, t1
	sw t2, 2076(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 2080(sp)
	lw t0, 2076(sp)
	lw t1, 2080(sp)
	add t2, t0, t1
	sw t2, 2084(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 2088(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 2092(sp)
	lw t0, 2088(sp)
	lw t1, 2092(sp)
	add t2, t0, t1
	sw t2, 2096(sp)
	lw t0, 2084(sp)
	lw t1, 2096(sp)
	sub t2, t0, t1
	sw t2, 2100(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 2104(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 2108(sp)
	lw t0, 2104(sp)
	lw t1, 2108(sp)
	sub t2, t0, t1
	sw t2, 2112(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 2116(sp)
	lw t0, 2112(sp)
	lw t1, 2116(sp)
	add t2, t0, t1
	sw t2, 2120(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 2124(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 2128(sp)
	lw t0, 2124(sp)
	lw t1, 2128(sp)
	add t2, t0, t1
	sw t2, 2132(sp)
	lw t0, 2120(sp)
	lw t1, 2132(sp)
	sub t2, t0, t1
	sw t2, 2136(sp)
	lw t0, 2100(sp)
	lw t1, 2136(sp)
	add t2, t0, t1
	sw t2, 2140(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 2144(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 2148(sp)
	lw t0, 2144(sp)
	lw t1, 2148(sp)
	sub t2, t0, t1
	sw t2, 2152(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 2156(sp)
	lw t0, 2152(sp)
	lw t1, 2156(sp)
	add t2, t0, t1
	sw t2, 2160(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 2164(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 2168(sp)
	lw t0, 2164(sp)
	lw t1, 2168(sp)
	add t2, t0, t1
	sw t2, 2172(sp)
	lw t0, 2160(sp)
	lw t1, 2172(sp)
	sub t2, t0, t1
	sw t2, 2176(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 2180(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 2184(sp)
	lw t0, 2180(sp)
	lw t1, 2184(sp)
	sub t2, t0, t1
	sw t2, 2188(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 2192(sp)
	lw t0, 2188(sp)
	lw t1, 2192(sp)
	add t2, t0, t1
	sw t2, 2196(sp)
	lw t0, 2176(sp)
	lw t1, 2196(sp)
	add t2, t0, t1
	sw t2, 2200(sp)
	lw t0, 2140(sp)
	lw t1, 2200(sp)
	add t2, t0, t1
	sw t2, 2204(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 2208(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 2212(sp)
	lw t0, 2208(sp)
	lw t1, 2212(sp)
	add t2, t0, t1
	sw t2, 2216(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 2220(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 2224(sp)
	lw t0, 2220(sp)
	lw t1, 2224(sp)
	sub t2, t0, t1
	sw t2, 2228(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 2232(sp)
	lw t0, 2228(sp)
	lw t1, 2232(sp)
	add t2, t0, t1
	sw t2, 2236(sp)
	lw t0, 2216(sp)
	lw t1, 2236(sp)
	add t2, t0, t1
	sw t2, 2240(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 2244(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 2248(sp)
	lw t0, 2244(sp)
	lw t1, 2248(sp)
	add t2, t0, t1
	sw t2, 2252(sp)
	lw t0, 2240(sp)
	lw t1, 2252(sp)
	sub t2, t0, t1
	sw t2, 2256(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 2260(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 2264(sp)
	lw t0, 2260(sp)
	lw t1, 2264(sp)
	sub t2, t0, t1
	sw t2, 2268(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 2272(sp)
	lw t0, 2268(sp)
	lw t1, 2272(sp)
	add t2, t0, t1
	sw t2, 2276(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 2280(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 2284(sp)
	lw t0, 2280(sp)
	lw t1, 2284(sp)
	add t2, t0, t1
	sw t2, 2288(sp)
	lw t0, 2276(sp)
	lw t1, 2288(sp)
	sub t2, t0, t1
	sw t2, 2292(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 2296(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 2300(sp)
	lw t0, 2296(sp)
	lw t1, 2300(sp)
	sub t2, t0, t1
	sw t2, 2304(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 2308(sp)
	lw t0, 2304(sp)
	lw t1, 2308(sp)
	add t2, t0, t1
	sw t2, 2312(sp)
	lw t0, 2292(sp)
	lw t1, 2312(sp)
	add t2, t0, t1
	sw t2, 2316(sp)
	lw t0, 2256(sp)
	lw t1, 2316(sp)
	add t2, t0, t1
	sw t2, 2320(sp)
	lw t0, 2204(sp)
	lw t1, 2320(sp)
	sub t2, t0, t1
	sw t2, 2324(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 2328(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 2332(sp)
	lw t0, 2328(sp)
	lw t1, 2332(sp)
	add t2, t0, t1
	sw t2, 2336(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 2340(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 2344(sp)
	lw t0, 2340(sp)
	lw t1, 2344(sp)
	sub t2, t0, t1
	sw t2, 2348(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 2352(sp)
	lw t0, 2348(sp)
	lw t1, 2352(sp)
	add t2, t0, t1
	sw t2, 2356(sp)
	lw t0, 2336(sp)
	lw t1, 2356(sp)
	add t2, t0, t1
	sw t2, 2360(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 2364(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 2368(sp)
	lw t0, 2364(sp)
	lw t1, 2368(sp)
	add t2, t0, t1
	sw t2, 2372(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 2376(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 2380(sp)
	lw t0, 2376(sp)
	lw t1, 2380(sp)
	sub t2, t0, t1
	sw t2, 2384(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 2388(sp)
	lw t0, 2384(sp)
	lw t1, 2388(sp)
	add t2, t0, t1
	sw t2, 2392(sp)
	lw t0, 2372(sp)
	lw t1, 2392(sp)
	add t2, t0, t1
	sw t2, 2396(sp)
	lw t0, 2360(sp)
	lw t1, 2396(sp)
	sub t2, t0, t1
	sw t2, 2400(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 2404(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 2408(sp)
	lw t0, 2404(sp)
	lw t1, 2408(sp)
	add t2, t0, t1
	sw t2, 2412(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 2416(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 2420(sp)
	lw t0, 2416(sp)
	lw t1, 2420(sp)
	sub t2, t0, t1
	sw t2, 2424(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 2428(sp)
	lw t0, 2424(sp)
	lw t1, 2428(sp)
	add t2, t0, t1
	sw t2, 2432(sp)
	lw t0, 2412(sp)
	lw t1, 2432(sp)
	add t2, t0, t1
	sw t2, 2436(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 2440(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 2444(sp)
	lw t0, 2440(sp)
	lw t1, 2444(sp)
	add t2, t0, t1
	sw t2, 2448(sp)
	lw t0, 2436(sp)
	lw t1, 2448(sp)
	sub t2, t0, t1
	sw t2, 2452(sp)
	lw t0, 2400(sp)
	lw t1, 2452(sp)
	sub t2, t0, t1
	sw t2, 2456(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 2460(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 2464(sp)
	lw t0, 2460(sp)
	lw t1, 2464(sp)
	sub t2, t0, t1
	sw t2, 2468(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 2472(sp)
	lw t0, 2468(sp)
	lw t1, 2472(sp)
	add t2, t0, t1
	sw t2, 2476(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 2480(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 2484(sp)
	lw t0, 2480(sp)
	lw t1, 2484(sp)
	add t2, t0, t1
	sw t2, 2488(sp)
	lw t0, 2476(sp)
	lw t1, 2488(sp)
	sub t2, t0, t1
	sw t2, 2492(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 2496(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 2500(sp)
	lw t0, 2496(sp)
	lw t1, 2500(sp)
	sub t2, t0, t1
	sw t2, 2504(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 2508(sp)
	lw t0, 2504(sp)
	lw t1, 2508(sp)
	add t2, t0, t1
	sw t2, 2512(sp)
	lw t0, 2492(sp)
	lw t1, 2512(sp)
	add t2, t0, t1
	sw t2, 2516(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 2520(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 2524(sp)
	lw t0, 2520(sp)
	lw t1, 2524(sp)
	add t2, t0, t1
	sw t2, 2528(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 2532(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 2536(sp)
	lw t0, 2532(sp)
	lw t1, 2536(sp)
	sub t2, t0, t1
	sw t2, 2540(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 2544(sp)
	lw t0, 2540(sp)
	lw t1, 2544(sp)
	add t2, t0, t1
	sw t2, 2548(sp)
	lw t0, 2528(sp)
	lw t1, 2548(sp)
	add t2, t0, t1
	sw t2, 2552(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 2556(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 2560(sp)
	lw t0, 2556(sp)
	lw t1, 2560(sp)
	add t2, t0, t1
	sw t2, 2564(sp)
	lw t0, 2552(sp)
	lw t1, 2564(sp)
	sub t2, t0, t1
	sw t2, 2568(sp)
	lw t0, 2516(sp)
	lw t1, 2568(sp)
	sub t2, t0, t1
	sw t2, 2572(sp)
	lw t0, 2456(sp)
	lw t1, 2572(sp)
	add t2, t0, t1
	sw t2, 2576(sp)
	lw t0, 2324(sp)
	lw t1, 2576(sp)
	sub t2, t0, t1
	sw t2, 2580(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 2584(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 2588(sp)
	lw t0, 2584(sp)
	lw t1, 2588(sp)
	sub t2, t0, t1
	sw t2, 2592(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 2596(sp)
	lw t0, 2592(sp)
	lw t1, 2596(sp)
	add t2, t0, t1
	sw t2, 2600(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 2604(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 2608(sp)
	lw t0, 2604(sp)
	lw t1, 2608(sp)
	add t2, t0, t1
	sw t2, 2612(sp)
	lw t0, 2600(sp)
	lw t1, 2612(sp)
	sub t2, t0, t1
	sw t2, 2616(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 2620(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 2624(sp)
	lw t0, 2620(sp)
	lw t1, 2624(sp)
	sub t2, t0, t1
	sw t2, 2628(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 2632(sp)
	lw t0, 2628(sp)
	lw t1, 2632(sp)
	add t2, t0, t1
	sw t2, 2636(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 2640(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 2644(sp)
	lw t0, 2640(sp)
	lw t1, 2644(sp)
	add t2, t0, t1
	sw t2, 2648(sp)
	lw t0, 2636(sp)
	lw t1, 2648(sp)
	sub t2, t0, t1
	sw t2, 2652(sp)
	lw t0, 2616(sp)
	lw t1, 2652(sp)
	add t2, t0, t1
	sw t2, 2656(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 2660(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 2664(sp)
	lw t0, 2660(sp)
	lw t1, 2664(sp)
	sub t2, t0, t1
	sw t2, 2668(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 2672(sp)
	lw t0, 2668(sp)
	lw t1, 2672(sp)
	add t2, t0, t1
	sw t2, 2676(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 2680(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 2684(sp)
	lw t0, 2680(sp)
	lw t1, 2684(sp)
	add t2, t0, t1
	sw t2, 2688(sp)
	lw t0, 2676(sp)
	lw t1, 2688(sp)
	sub t2, t0, t1
	sw t2, 2692(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 2696(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 2700(sp)
	lw t0, 2696(sp)
	lw t1, 2700(sp)
	sub t2, t0, t1
	sw t2, 2704(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 2708(sp)
	lw t0, 2704(sp)
	lw t1, 2708(sp)
	add t2, t0, t1
	sw t2, 2712(sp)
	lw t0, 2692(sp)
	lw t1, 2712(sp)
	add t2, t0, t1
	sw t2, 2716(sp)
	lw t0, 2656(sp)
	lw t1, 2716(sp)
	add t2, t0, t1
	sw t2, 2720(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 2724(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 2728(sp)
	lw t0, 2724(sp)
	lw t1, 2728(sp)
	add t2, t0, t1
	sw t2, 2732(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 2736(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 2740(sp)
	lw t0, 2736(sp)
	lw t1, 2740(sp)
	sub t2, t0, t1
	sw t2, 2744(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 2748(sp)
	lw t0, 2744(sp)
	lw t1, 2748(sp)
	add t2, t0, t1
	sw t2, 2752(sp)
	lw t0, 2732(sp)
	lw t1, 2752(sp)
	add t2, t0, t1
	sw t2, 2756(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 2760(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 2764(sp)
	lw t0, 2760(sp)
	lw t1, 2764(sp)
	add t2, t0, t1
	sw t2, 2768(sp)
	lw t0, 2756(sp)
	lw t1, 2768(sp)
	sub t2, t0, t1
	sw t2, 2772(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 2776(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 2780(sp)
	lw t0, 2776(sp)
	lw t1, 2780(sp)
	sub t2, t0, t1
	sw t2, 2784(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 2788(sp)
	lw t0, 2784(sp)
	lw t1, 2788(sp)
	add t2, t0, t1
	sw t2, 2792(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 2796(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 2800(sp)
	lw t0, 2796(sp)
	lw t1, 2800(sp)
	add t2, t0, t1
	sw t2, 2804(sp)
	lw t0, 2792(sp)
	lw t1, 2804(sp)
	sub t2, t0, t1
	sw t2, 2808(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 2812(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 2816(sp)
	lw t0, 2812(sp)
	lw t1, 2816(sp)
	sub t2, t0, t1
	sw t2, 2820(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 2824(sp)
	lw t0, 2820(sp)
	lw t1, 2824(sp)
	add t2, t0, t1
	sw t2, 2828(sp)
	lw t0, 2808(sp)
	lw t1, 2828(sp)
	add t2, t0, t1
	sw t2, 2832(sp)
	lw t0, 2772(sp)
	lw t1, 2832(sp)
	add t2, t0, t1
	sw t2, 2836(sp)
	lw t0, 2720(sp)
	lw t1, 2836(sp)
	sub t2, t0, t1
	sw t2, 2840(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 2844(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 2848(sp)
	lw t0, 2844(sp)
	lw t1, 2848(sp)
	add t2, t0, t1
	sw t2, 2852(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 2856(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 2860(sp)
	lw t0, 2856(sp)
	lw t1, 2860(sp)
	sub t2, t0, t1
	sw t2, 2864(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 2868(sp)
	lw t0, 2864(sp)
	lw t1, 2868(sp)
	add t2, t0, t1
	sw t2, 2872(sp)
	lw t0, 2852(sp)
	lw t1, 2872(sp)
	add t2, t0, t1
	sw t2, 2876(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 2880(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 2884(sp)
	lw t0, 2880(sp)
	lw t1, 2884(sp)
	add t2, t0, t1
	sw t2, 2888(sp)
	lw t0, 2876(sp)
	lw t1, 2888(sp)
	sub t2, t0, t1
	sw t2, 2892(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 2896(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 2900(sp)
	lw t0, 2896(sp)
	lw t1, 2900(sp)
	sub t2, t0, t1
	sw t2, 2904(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 2908(sp)
	lw t0, 2904(sp)
	lw t1, 2908(sp)
	add t2, t0, t1
	sw t2, 2912(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 2916(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 2920(sp)
	lw t0, 2916(sp)
	lw t1, 2920(sp)
	add t2, t0, t1
	sw t2, 2924(sp)
	lw t0, 2912(sp)
	lw t1, 2924(sp)
	sub t2, t0, t1
	sw t2, 2928(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 2932(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 2936(sp)
	lw t0, 2932(sp)
	lw t1, 2936(sp)
	sub t2, t0, t1
	sw t2, 2940(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 2944(sp)
	lw t0, 2940(sp)
	lw t1, 2944(sp)
	add t2, t0, t1
	sw t2, 2948(sp)
	lw t0, 2928(sp)
	lw t1, 2948(sp)
	add t2, t0, t1
	sw t2, 2952(sp)
	lw t0, 2892(sp)
	lw t1, 2952(sp)
	add t2, t0, t1
	sw t2, 2956(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 2960(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 2964(sp)
	lw t0, 2960(sp)
	lw t1, 2964(sp)
	add t2, t0, t1
	sw t2, 2968(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 2972(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 2976(sp)
	lw t0, 2972(sp)
	lw t1, 2976(sp)
	sub t2, t0, t1
	sw t2, 2980(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 2984(sp)
	lw t0, 2980(sp)
	lw t1, 2984(sp)
	add t2, t0, t1
	sw t2, 2988(sp)
	lw t0, 2968(sp)
	lw t1, 2988(sp)
	add t2, t0, t1
	sw t2, 2992(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 2996(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 3000(sp)
	lw t0, 2996(sp)
	lw t1, 3000(sp)
	add t2, t0, t1
	sw t2, 3004(sp)
	lw t0, 2992(sp)
	lw t1, 3004(sp)
	sub t2, t0, t1
	sw t2, 3008(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 3012(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 3016(sp)
	lw t0, 3012(sp)
	lw t1, 3016(sp)
	sub t2, t0, t1
	sw t2, 3020(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 3024(sp)
	lw t0, 3020(sp)
	lw t1, 3024(sp)
	add t2, t0, t1
	sw t2, 3028(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 3032(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 3036(sp)
	lw t0, 3032(sp)
	lw t1, 3036(sp)
	add t2, t0, t1
	sw t2, 3040(sp)
	lw t0, 3028(sp)
	lw t1, 3040(sp)
	sub t2, t0, t1
	sw t2, 3044(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 3048(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 3052(sp)
	lw t0, 3048(sp)
	lw t1, 3052(sp)
	sub t2, t0, t1
	sw t2, 3056(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 3060(sp)
	lw t0, 3056(sp)
	lw t1, 3060(sp)
	add t2, t0, t1
	sw t2, 3064(sp)
	lw t0, 3044(sp)
	lw t1, 3064(sp)
	add t2, t0, t1
	sw t2, 3068(sp)
	lw t0, 3008(sp)
	lw t1, 3068(sp)
	add t2, t0, t1
	sw t2, 3072(sp)
	lw t0, 2956(sp)
	lw t1, 3072(sp)
	sub t2, t0, t1
	sw t2, 3076(sp)
	lw t0, 2840(sp)
	lw t1, 3076(sp)
	sub t2, t0, t1
	sw t2, 3080(sp)
	lw t0, 2580(sp)
	lw t1, 3080(sp)
	add t2, t0, t1
	sw t2, 3084(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 3088(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 3092(sp)
	lw t0, 3088(sp)
	lw t1, 3092(sp)
	add t2, t0, t1
	sw t2, 3096(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 3100(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 3104(sp)
	lw t0, 3100(sp)
	lw t1, 3104(sp)
	sub t2, t0, t1
	sw t2, 3108(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 3112(sp)
	lw t0, 3108(sp)
	lw t1, 3112(sp)
	add t2, t0, t1
	sw t2, 3116(sp)
	lw t0, 3096(sp)
	lw t1, 3116(sp)
	add t2, t0, t1
	sw t2, 3120(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 3124(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 3128(sp)
	lw t0, 3124(sp)
	lw t1, 3128(sp)
	add t2, t0, t1
	sw t2, 3132(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 3136(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 3140(sp)
	lw t0, 3136(sp)
	lw t1, 3140(sp)
	sub t2, t0, t1
	sw t2, 3144(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 3148(sp)
	lw t0, 3144(sp)
	lw t1, 3148(sp)
	add t2, t0, t1
	sw t2, 3152(sp)
	lw t0, 3132(sp)
	lw t1, 3152(sp)
	add t2, t0, t1
	sw t2, 3156(sp)
	lw t0, 3120(sp)
	lw t1, 3156(sp)
	sub t2, t0, t1
	sw t2, 3160(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 3164(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 3168(sp)
	lw t0, 3164(sp)
	lw t1, 3168(sp)
	add t2, t0, t1
	sw t2, 3172(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 3176(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 3180(sp)
	lw t0, 3176(sp)
	lw t1, 3180(sp)
	sub t2, t0, t1
	sw t2, 3184(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 3188(sp)
	lw t0, 3184(sp)
	lw t1, 3188(sp)
	add t2, t0, t1
	sw t2, 3192(sp)
	lw t0, 3172(sp)
	lw t1, 3192(sp)
	add t2, t0, t1
	sw t2, 3196(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 3200(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 3204(sp)
	lw t0, 3200(sp)
	lw t1, 3204(sp)
	add t2, t0, t1
	sw t2, 3208(sp)
	lw t0, 3196(sp)
	lw t1, 3208(sp)
	sub t2, t0, t1
	sw t2, 3212(sp)
	lw t0, 3160(sp)
	lw t1, 3212(sp)
	sub t2, t0, t1
	sw t2, 3216(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 3220(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 3224(sp)
	lw t0, 3220(sp)
	lw t1, 3224(sp)
	sub t2, t0, t1
	sw t2, 3228(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 3232(sp)
	lw t0, 3228(sp)
	lw t1, 3232(sp)
	add t2, t0, t1
	sw t2, 3236(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 3240(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 3244(sp)
	lw t0, 3240(sp)
	lw t1, 3244(sp)
	add t2, t0, t1
	sw t2, 3248(sp)
	lw t0, 3236(sp)
	lw t1, 3248(sp)
	sub t2, t0, t1
	sw t2, 3252(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 3256(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 3260(sp)
	lw t0, 3256(sp)
	lw t1, 3260(sp)
	sub t2, t0, t1
	sw t2, 3264(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 3268(sp)
	lw t0, 3264(sp)
	lw t1, 3268(sp)
	add t2, t0, t1
	sw t2, 3272(sp)
	lw t0, 3252(sp)
	lw t1, 3272(sp)
	add t2, t0, t1
	sw t2, 3276(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 3280(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 3284(sp)
	lw t0, 3280(sp)
	lw t1, 3284(sp)
	add t2, t0, t1
	sw t2, 3288(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 3292(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 3296(sp)
	lw t0, 3292(sp)
	lw t1, 3296(sp)
	sub t2, t0, t1
	sw t2, 3300(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 3304(sp)
	lw t0, 3300(sp)
	lw t1, 3304(sp)
	add t2, t0, t1
	sw t2, 3308(sp)
	lw t0, 3288(sp)
	lw t1, 3308(sp)
	add t2, t0, t1
	sw t2, 3312(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 3316(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 3320(sp)
	lw t0, 3316(sp)
	lw t1, 3320(sp)
	add t2, t0, t1
	sw t2, 3324(sp)
	lw t0, 3312(sp)
	lw t1, 3324(sp)
	sub t2, t0, t1
	sw t2, 3328(sp)
	lw t0, 3276(sp)
	lw t1, 3328(sp)
	sub t2, t0, t1
	sw t2, 3332(sp)
	lw t0, 3216(sp)
	lw t1, 3332(sp)
	add t2, t0, t1
	sw t2, 3336(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 3340(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 3344(sp)
	lw t0, 3340(sp)
	lw t1, 3344(sp)
	sub t2, t0, t1
	sw t2, 3348(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 3352(sp)
	lw t0, 3348(sp)
	lw t1, 3352(sp)
	add t2, t0, t1
	sw t2, 3356(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 3360(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 3364(sp)
	lw t0, 3360(sp)
	lw t1, 3364(sp)
	add t2, t0, t1
	sw t2, 3368(sp)
	lw t0, 3356(sp)
	lw t1, 3368(sp)
	sub t2, t0, t1
	sw t2, 3372(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 3376(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 3380(sp)
	lw t0, 3376(sp)
	lw t1, 3380(sp)
	sub t2, t0, t1
	sw t2, 3384(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 3388(sp)
	lw t0, 3384(sp)
	lw t1, 3388(sp)
	add t2, t0, t1
	sw t2, 3392(sp)
	lw t0, 3372(sp)
	lw t1, 3392(sp)
	add t2, t0, t1
	sw t2, 3396(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 3400(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 3404(sp)
	lw t0, 3400(sp)
	lw t1, 3404(sp)
	add t2, t0, t1
	sw t2, 3408(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 3412(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 3416(sp)
	lw t0, 3412(sp)
	lw t1, 3416(sp)
	sub t2, t0, t1
	sw t2, 3420(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 3424(sp)
	lw t0, 3420(sp)
	lw t1, 3424(sp)
	add t2, t0, t1
	sw t2, 3428(sp)
	lw t0, 3408(sp)
	lw t1, 3428(sp)
	add t2, t0, t1
	sw t2, 3432(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 3436(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 3440(sp)
	lw t0, 3436(sp)
	lw t1, 3440(sp)
	add t2, t0, t1
	sw t2, 3444(sp)
	lw t0, 3432(sp)
	lw t1, 3444(sp)
	sub t2, t0, t1
	sw t2, 3448(sp)
	lw t0, 3396(sp)
	lw t1, 3448(sp)
	sub t2, t0, t1
	sw t2, 3452(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 3456(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 3460(sp)
	lw t0, 3456(sp)
	lw t1, 3460(sp)
	sub t2, t0, t1
	sw t2, 3464(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 3468(sp)
	lw t0, 3464(sp)
	lw t1, 3468(sp)
	add t2, t0, t1
	sw t2, 3472(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 3476(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 3480(sp)
	lw t0, 3476(sp)
	lw t1, 3480(sp)
	add t2, t0, t1
	sw t2, 3484(sp)
	lw t0, 3472(sp)
	lw t1, 3484(sp)
	sub t2, t0, t1
	sw t2, 3488(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 3492(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 3496(sp)
	lw t0, 3492(sp)
	lw t1, 3496(sp)
	sub t2, t0, t1
	sw t2, 3500(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 3504(sp)
	lw t0, 3500(sp)
	lw t1, 3504(sp)
	add t2, t0, t1
	sw t2, 3508(sp)
	lw t0, 3488(sp)
	lw t1, 3508(sp)
	add t2, t0, t1
	sw t2, 3512(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 3516(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 3520(sp)
	lw t0, 3516(sp)
	lw t1, 3520(sp)
	add t2, t0, t1
	sw t2, 3524(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 3528(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 3532(sp)
	lw t0, 3528(sp)
	lw t1, 3532(sp)
	sub t2, t0, t1
	sw t2, 3536(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 3540(sp)
	lw t0, 3536(sp)
	lw t1, 3540(sp)
	add t2, t0, t1
	sw t2, 3544(sp)
	lw t0, 3524(sp)
	lw t1, 3544(sp)
	add t2, t0, t1
	sw t2, 3548(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 3552(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 3556(sp)
	lw t0, 3552(sp)
	lw t1, 3556(sp)
	add t2, t0, t1
	sw t2, 3560(sp)
	lw t0, 3548(sp)
	lw t1, 3560(sp)
	sub t2, t0, t1
	sw t2, 3564(sp)
	lw t0, 3512(sp)
	lw t1, 3564(sp)
	sub t2, t0, t1
	sw t2, 3568(sp)
	lw t0, 3452(sp)
	lw t1, 3568(sp)
	add t2, t0, t1
	sw t2, 3572(sp)
	lw t0, 3336(sp)
	lw t1, 3572(sp)
	add t2, t0, t1
	sw t2, 3576(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 3580(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 3584(sp)
	lw t0, 3580(sp)
	lw t1, 3584(sp)
	sub t2, t0, t1
	sw t2, 3588(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 3592(sp)
	lw t0, 3588(sp)
	lw t1, 3592(sp)
	add t2, t0, t1
	sw t2, 3596(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 3600(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 3604(sp)
	lw t0, 3600(sp)
	lw t1, 3604(sp)
	add t2, t0, t1
	sw t2, 3608(sp)
	lw t0, 3596(sp)
	lw t1, 3608(sp)
	sub t2, t0, t1
	sw t2, 3612(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 3616(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 3620(sp)
	lw t0, 3616(sp)
	lw t1, 3620(sp)
	sub t2, t0, t1
	sw t2, 3624(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 3628(sp)
	lw t0, 3624(sp)
	lw t1, 3628(sp)
	add t2, t0, t1
	sw t2, 3632(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 3636(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 3640(sp)
	lw t0, 3636(sp)
	lw t1, 3640(sp)
	add t2, t0, t1
	sw t2, 3644(sp)
	lw t0, 3632(sp)
	lw t1, 3644(sp)
	sub t2, t0, t1
	sw t2, 3648(sp)
	lw t0, 3612(sp)
	lw t1, 3648(sp)
	add t2, t0, t1
	sw t2, 3652(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 3656(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 3660(sp)
	lw t0, 3656(sp)
	lw t1, 3660(sp)
	sub t2, t0, t1
	sw t2, 3664(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 3668(sp)
	lw t0, 3664(sp)
	lw t1, 3668(sp)
	add t2, t0, t1
	sw t2, 3672(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 3676(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 3680(sp)
	lw t0, 3676(sp)
	lw t1, 3680(sp)
	add t2, t0, t1
	sw t2, 3684(sp)
	lw t0, 3672(sp)
	lw t1, 3684(sp)
	sub t2, t0, t1
	sw t2, 3688(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 3692(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 3696(sp)
	lw t0, 3692(sp)
	lw t1, 3696(sp)
	sub t2, t0, t1
	sw t2, 3700(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 3704(sp)
	lw t0, 3700(sp)
	lw t1, 3704(sp)
	add t2, t0, t1
	sw t2, 3708(sp)
	lw t0, 3688(sp)
	lw t1, 3708(sp)
	add t2, t0, t1
	sw t2, 3712(sp)
	lw t0, 3652(sp)
	lw t1, 3712(sp)
	add t2, t0, t1
	sw t2, 3716(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 3720(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 3724(sp)
	lw t0, 3720(sp)
	lw t1, 3724(sp)
	add t2, t0, t1
	sw t2, 3728(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 3732(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 3736(sp)
	lw t0, 3732(sp)
	lw t1, 3736(sp)
	sub t2, t0, t1
	sw t2, 3740(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 3744(sp)
	lw t0, 3740(sp)
	lw t1, 3744(sp)
	add t2, t0, t1
	sw t2, 3748(sp)
	lw t0, 3728(sp)
	lw t1, 3748(sp)
	add t2, t0, t1
	sw t2, 3752(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 3756(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 3760(sp)
	lw t0, 3756(sp)
	lw t1, 3760(sp)
	add t2, t0, t1
	sw t2, 3764(sp)
	lw t0, 3752(sp)
	lw t1, 3764(sp)
	sub t2, t0, t1
	sw t2, 3768(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 3772(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 3776(sp)
	lw t0, 3772(sp)
	lw t1, 3776(sp)
	sub t2, t0, t1
	sw t2, 3780(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 3784(sp)
	lw t0, 3780(sp)
	lw t1, 3784(sp)
	add t2, t0, t1
	sw t2, 3788(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 3792(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 3796(sp)
	lw t0, 3792(sp)
	lw t1, 3796(sp)
	add t2, t0, t1
	sw t2, 3800(sp)
	lw t0, 3788(sp)
	lw t1, 3800(sp)
	sub t2, t0, t1
	sw t2, 3804(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 3808(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 3812(sp)
	lw t0, 3808(sp)
	lw t1, 3812(sp)
	sub t2, t0, t1
	sw t2, 3816(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 3820(sp)
	lw t0, 3816(sp)
	lw t1, 3820(sp)
	add t2, t0, t1
	sw t2, 3824(sp)
	lw t0, 3804(sp)
	lw t1, 3824(sp)
	add t2, t0, t1
	sw t2, 3828(sp)
	lw t0, 3768(sp)
	lw t1, 3828(sp)
	add t2, t0, t1
	sw t2, 3832(sp)
	lw t0, 3716(sp)
	lw t1, 3832(sp)
	sub t2, t0, t1
	sw t2, 3836(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 3840(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 3844(sp)
	lw t0, 3840(sp)
	lw t1, 3844(sp)
	add t2, t0, t1
	sw t2, 3848(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 3852(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 3856(sp)
	lw t0, 3852(sp)
	lw t1, 3856(sp)
	sub t2, t0, t1
	sw t2, 3860(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 3864(sp)
	lw t0, 3860(sp)
	lw t1, 3864(sp)
	add t2, t0, t1
	sw t2, 3868(sp)
	lw t0, 3848(sp)
	lw t1, 3868(sp)
	add t2, t0, t1
	sw t2, 3872(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 3876(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 3880(sp)
	lw t0, 3876(sp)
	lw t1, 3880(sp)
	add t2, t0, t1
	sw t2, 3884(sp)
	lw t0, 3872(sp)
	lw t1, 3884(sp)
	sub t2, t0, t1
	sw t2, 3888(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 3892(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 3896(sp)
	lw t0, 3892(sp)
	lw t1, 3896(sp)
	sub t2, t0, t1
	sw t2, 3900(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 3904(sp)
	lw t0, 3900(sp)
	lw t1, 3904(sp)
	add t2, t0, t1
	sw t2, 3908(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 3912(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 3916(sp)
	lw t0, 3912(sp)
	lw t1, 3916(sp)
	add t2, t0, t1
	sw t2, 3920(sp)
	lw t0, 3908(sp)
	lw t1, 3920(sp)
	sub t2, t0, t1
	sw t2, 3924(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 3928(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 3932(sp)
	lw t0, 3928(sp)
	lw t1, 3932(sp)
	sub t2, t0, t1
	sw t2, 3936(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 3940(sp)
	lw t0, 3936(sp)
	lw t1, 3940(sp)
	add t2, t0, t1
	sw t2, 3944(sp)
	lw t0, 3924(sp)
	lw t1, 3944(sp)
	add t2, t0, t1
	sw t2, 3948(sp)
	lw t0, 3888(sp)
	lw t1, 3948(sp)
	add t2, t0, t1
	sw t2, 3952(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 3956(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 3960(sp)
	lw t0, 3956(sp)
	lw t1, 3960(sp)
	add t2, t0, t1
	sw t2, 3964(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 3968(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 3972(sp)
	lw t0, 3968(sp)
	lw t1, 3972(sp)
	sub t2, t0, t1
	sw t2, 3976(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 3980(sp)
	lw t0, 3976(sp)
	lw t1, 3980(sp)
	add t2, t0, t1
	sw t2, 3984(sp)
	lw t0, 3964(sp)
	lw t1, 3984(sp)
	add t2, t0, t1
	sw t2, 3988(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 3992(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 3996(sp)
	lw t0, 3992(sp)
	lw t1, 3996(sp)
	add t2, t0, t1
	sw t2, 4000(sp)
	lw t0, 3988(sp)
	lw t1, 4000(sp)
	sub t2, t0, t1
	sw t2, 4004(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 4008(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 4012(sp)
	lw t0, 4008(sp)
	lw t1, 4012(sp)
	sub t2, t0, t1
	sw t2, 4016(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 4020(sp)
	lw t0, 4016(sp)
	lw t1, 4020(sp)
	add t2, t0, t1
	sw t2, 4024(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 4028(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 4032(sp)
	lw t0, 4028(sp)
	lw t1, 4032(sp)
	add t2, t0, t1
	sw t2, 4036(sp)
	lw t0, 4024(sp)
	lw t1, 4036(sp)
	sub t2, t0, t1
	sw t2, 4040(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 4044(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 4048(sp)
	lw t0, 4044(sp)
	lw t1, 4048(sp)
	sub t2, t0, t1
	sw t2, 4052(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 4056(sp)
	lw t0, 4052(sp)
	lw t1, 4056(sp)
	add t2, t0, t1
	sw t2, 4060(sp)
	lw t0, 4040(sp)
	lw t1, 4060(sp)
	add t2, t0, t1
	sw t2, 4064(sp)
	lw t0, 4004(sp)
	lw t1, 4064(sp)
	add t2, t0, t1
	sw t2, 4068(sp)
	lw t0, 3952(sp)
	lw t1, 4068(sp)
	sub t2, t0, t1
	sw t2, 4072(sp)
	lw t0, 3836(sp)
	lw t1, 4072(sp)
	sub t2, t0, t1
	sw t2, 4076(sp)
	lw t0, 3576(sp)
	lw t1, 4076(sp)
	add t2, t0, t1
	sw t2, 4080(sp)
	lw t0, 3084(sp)
	lw t1, 4080(sp)
	sub t2, t0, t1
	sw t2, 4084(sp)
	lw t0, 4084(sp)
	la t1, B
	sw t0, 0(t1)
	la t0, C
	lw t2, 0(t0)
	sw t2, 4088(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 4092(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 4096(sp)
	lw t0, 4092(sp)
	lw t1, 4096(sp)
	sub t2, t0, t1
	sw t2, 4100(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 4104(sp)
	lw t0, 4100(sp)
	lw t1, 4104(sp)
	add t2, t0, t1
	sw t2, 4108(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 4112(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 4116(sp)
	lw t0, 4112(sp)
	lw t1, 4116(sp)
	add t2, t0, t1
	sw t2, 4120(sp)
	lw t0, 4108(sp)
	lw t1, 4120(sp)
	sub t2, t0, t1
	sw t2, 4124(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 4128(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 4132(sp)
	lw t0, 4128(sp)
	lw t1, 4132(sp)
	sub t2, t0, t1
	sw t2, 4136(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 4140(sp)
	lw t0, 4136(sp)
	lw t1, 4140(sp)
	add t2, t0, t1
	sw t2, 4144(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 4148(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 4152(sp)
	lw t0, 4148(sp)
	lw t1, 4152(sp)
	add t2, t0, t1
	sw t2, 4156(sp)
	lw t0, 4144(sp)
	lw t1, 4156(sp)
	sub t2, t0, t1
	sw t2, 4160(sp)
	lw t0, 4124(sp)
	lw t1, 4160(sp)
	add t2, t0, t1
	sw t2, 4164(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 4168(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 4172(sp)
	lw t0, 4168(sp)
	lw t1, 4172(sp)
	sub t2, t0, t1
	sw t2, 4176(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 4180(sp)
	lw t0, 4176(sp)
	lw t1, 4180(sp)
	add t2, t0, t1
	sw t2, 4184(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 4188(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 4192(sp)
	lw t0, 4188(sp)
	lw t1, 4192(sp)
	add t2, t0, t1
	sw t2, 4196(sp)
	lw t0, 4184(sp)
	lw t1, 4196(sp)
	sub t2, t0, t1
	sw t2, 4200(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 4204(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 4208(sp)
	lw t0, 4204(sp)
	lw t1, 4208(sp)
	sub t2, t0, t1
	sw t2, 4212(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 4216(sp)
	lw t0, 4212(sp)
	lw t1, 4216(sp)
	add t2, t0, t1
	sw t2, 4220(sp)
	lw t0, 4200(sp)
	lw t1, 4220(sp)
	add t2, t0, t1
	sw t2, 4224(sp)
	lw t0, 4164(sp)
	lw t1, 4224(sp)
	add t2, t0, t1
	sw t2, 4228(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 4232(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 4236(sp)
	lw t0, 4232(sp)
	lw t1, 4236(sp)
	add t2, t0, t1
	sw t2, 4240(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 4244(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 4248(sp)
	lw t0, 4244(sp)
	lw t1, 4248(sp)
	sub t2, t0, t1
	sw t2, 4252(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 4256(sp)
	lw t0, 4252(sp)
	lw t1, 4256(sp)
	add t2, t0, t1
	sw t2, 4260(sp)
	lw t0, 4240(sp)
	lw t1, 4260(sp)
	add t2, t0, t1
	sw t2, 4264(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 4268(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 4272(sp)
	lw t0, 4268(sp)
	lw t1, 4272(sp)
	add t2, t0, t1
	sw t2, 4276(sp)
	lw t0, 4264(sp)
	lw t1, 4276(sp)
	sub t2, t0, t1
	sw t2, 4280(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 4284(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 4288(sp)
	lw t0, 4284(sp)
	lw t1, 4288(sp)
	sub t2, t0, t1
	sw t2, 4292(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 4296(sp)
	lw t0, 4292(sp)
	lw t1, 4296(sp)
	add t2, t0, t1
	sw t2, 4300(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 4304(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 4308(sp)
	lw t0, 4304(sp)
	lw t1, 4308(sp)
	add t2, t0, t1
	sw t2, 4312(sp)
	lw t0, 4300(sp)
	lw t1, 4312(sp)
	sub t2, t0, t1
	sw t2, 4316(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 4320(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 4324(sp)
	lw t0, 4320(sp)
	lw t1, 4324(sp)
	sub t2, t0, t1
	sw t2, 4328(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 4332(sp)
	lw t0, 4328(sp)
	lw t1, 4332(sp)
	add t2, t0, t1
	sw t2, 4336(sp)
	lw t0, 4316(sp)
	lw t1, 4336(sp)
	add t2, t0, t1
	sw t2, 4340(sp)
	lw t0, 4280(sp)
	lw t1, 4340(sp)
	add t2, t0, t1
	sw t2, 4344(sp)
	lw t0, 4228(sp)
	lw t1, 4344(sp)
	sub t2, t0, t1
	sw t2, 4348(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 4352(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 4356(sp)
	lw t0, 4352(sp)
	lw t1, 4356(sp)
	add t2, t0, t1
	sw t2, 4360(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 4364(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 4368(sp)
	lw t0, 4364(sp)
	lw t1, 4368(sp)
	sub t2, t0, t1
	sw t2, 4372(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 4376(sp)
	lw t0, 4372(sp)
	lw t1, 4376(sp)
	add t2, t0, t1
	sw t2, 4380(sp)
	lw t0, 4360(sp)
	lw t1, 4380(sp)
	add t2, t0, t1
	sw t2, 4384(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 4388(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 4392(sp)
	lw t0, 4388(sp)
	lw t1, 4392(sp)
	add t2, t0, t1
	sw t2, 4396(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 4400(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 4404(sp)
	lw t0, 4400(sp)
	lw t1, 4404(sp)
	sub t2, t0, t1
	sw t2, 4408(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 4412(sp)
	lw t0, 4408(sp)
	lw t1, 4412(sp)
	add t2, t0, t1
	sw t2, 4416(sp)
	lw t0, 4396(sp)
	lw t1, 4416(sp)
	add t2, t0, t1
	sw t2, 4420(sp)
	lw t0, 4384(sp)
	lw t1, 4420(sp)
	sub t2, t0, t1
	sw t2, 4424(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 4428(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 4432(sp)
	lw t0, 4428(sp)
	lw t1, 4432(sp)
	add t2, t0, t1
	sw t2, 4436(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 4440(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 4444(sp)
	lw t0, 4440(sp)
	lw t1, 4444(sp)
	sub t2, t0, t1
	sw t2, 4448(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 4452(sp)
	lw t0, 4448(sp)
	lw t1, 4452(sp)
	add t2, t0, t1
	sw t2, 4456(sp)
	lw t0, 4436(sp)
	lw t1, 4456(sp)
	add t2, t0, t1
	sw t2, 4460(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 4464(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 4468(sp)
	lw t0, 4464(sp)
	lw t1, 4468(sp)
	add t2, t0, t1
	sw t2, 4472(sp)
	lw t0, 4460(sp)
	lw t1, 4472(sp)
	sub t2, t0, t1
	sw t2, 4476(sp)
	lw t0, 4424(sp)
	lw t1, 4476(sp)
	sub t2, t0, t1
	sw t2, 4480(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 4484(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 4488(sp)
	lw t0, 4484(sp)
	lw t1, 4488(sp)
	sub t2, t0, t1
	sw t2, 4492(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 4496(sp)
	lw t0, 4492(sp)
	lw t1, 4496(sp)
	add t2, t0, t1
	sw t2, 4500(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 4504(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 4508(sp)
	lw t0, 4504(sp)
	lw t1, 4508(sp)
	add t2, t0, t1
	sw t2, 4512(sp)
	lw t0, 4500(sp)
	lw t1, 4512(sp)
	sub t2, t0, t1
	sw t2, 4516(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 4520(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 4524(sp)
	lw t0, 4520(sp)
	lw t1, 4524(sp)
	sub t2, t0, t1
	sw t2, 4528(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 4532(sp)
	lw t0, 4528(sp)
	lw t1, 4532(sp)
	add t2, t0, t1
	sw t2, 4536(sp)
	lw t0, 4516(sp)
	lw t1, 4536(sp)
	add t2, t0, t1
	sw t2, 4540(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 4544(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 4548(sp)
	lw t0, 4544(sp)
	lw t1, 4548(sp)
	add t2, t0, t1
	sw t2, 4552(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 4556(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 4560(sp)
	lw t0, 4556(sp)
	lw t1, 4560(sp)
	sub t2, t0, t1
	sw t2, 4564(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 4568(sp)
	lw t0, 4564(sp)
	lw t1, 4568(sp)
	add t2, t0, t1
	sw t2, 4572(sp)
	lw t0, 4552(sp)
	lw t1, 4572(sp)
	add t2, t0, t1
	sw t2, 4576(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 4580(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 4584(sp)
	lw t0, 4580(sp)
	lw t1, 4584(sp)
	add t2, t0, t1
	sw t2, 4588(sp)
	lw t0, 4576(sp)
	lw t1, 4588(sp)
	sub t2, t0, t1
	sw t2, 4592(sp)
	lw t0, 4540(sp)
	lw t1, 4592(sp)
	sub t2, t0, t1
	sw t2, 4596(sp)
	lw t0, 4480(sp)
	lw t1, 4596(sp)
	add t2, t0, t1
	sw t2, 4600(sp)
	lw t0, 4348(sp)
	lw t1, 4600(sp)
	sub t2, t0, t1
	sw t2, 4604(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 4608(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 4612(sp)
	lw t0, 4608(sp)
	lw t1, 4612(sp)
	sub t2, t0, t1
	sw t2, 4616(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 4620(sp)
	lw t0, 4616(sp)
	lw t1, 4620(sp)
	add t2, t0, t1
	sw t2, 4624(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 4628(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 4632(sp)
	lw t0, 4628(sp)
	lw t1, 4632(sp)
	add t2, t0, t1
	sw t2, 4636(sp)
	lw t0, 4624(sp)
	lw t1, 4636(sp)
	sub t2, t0, t1
	sw t2, 4640(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 4644(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 4648(sp)
	lw t0, 4644(sp)
	lw t1, 4648(sp)
	sub t2, t0, t1
	sw t2, 4652(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 4656(sp)
	lw t0, 4652(sp)
	lw t1, 4656(sp)
	add t2, t0, t1
	sw t2, 4660(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 4664(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 4668(sp)
	lw t0, 4664(sp)
	lw t1, 4668(sp)
	add t2, t0, t1
	sw t2, 4672(sp)
	lw t0, 4660(sp)
	lw t1, 4672(sp)
	sub t2, t0, t1
	sw t2, 4676(sp)
	lw t0, 4640(sp)
	lw t1, 4676(sp)
	add t2, t0, t1
	sw t2, 4680(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 4684(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 4688(sp)
	lw t0, 4684(sp)
	lw t1, 4688(sp)
	sub t2, t0, t1
	sw t2, 4692(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 4696(sp)
	lw t0, 4692(sp)
	lw t1, 4696(sp)
	add t2, t0, t1
	sw t2, 4700(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 4704(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 4708(sp)
	lw t0, 4704(sp)
	lw t1, 4708(sp)
	add t2, t0, t1
	sw t2, 4712(sp)
	lw t0, 4700(sp)
	lw t1, 4712(sp)
	sub t2, t0, t1
	sw t2, 4716(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 4720(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 4724(sp)
	lw t0, 4720(sp)
	lw t1, 4724(sp)
	sub t2, t0, t1
	sw t2, 4728(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 4732(sp)
	lw t0, 4728(sp)
	lw t1, 4732(sp)
	add t2, t0, t1
	sw t2, 4736(sp)
	lw t0, 4716(sp)
	lw t1, 4736(sp)
	add t2, t0, t1
	sw t2, 4740(sp)
	lw t0, 4680(sp)
	lw t1, 4740(sp)
	add t2, t0, t1
	sw t2, 4744(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 4748(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 4752(sp)
	lw t0, 4748(sp)
	lw t1, 4752(sp)
	add t2, t0, t1
	sw t2, 4756(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 4760(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 4764(sp)
	lw t0, 4760(sp)
	lw t1, 4764(sp)
	sub t2, t0, t1
	sw t2, 4768(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 4772(sp)
	lw t0, 4768(sp)
	lw t1, 4772(sp)
	add t2, t0, t1
	sw t2, 4776(sp)
	lw t0, 4756(sp)
	lw t1, 4776(sp)
	add t2, t0, t1
	sw t2, 4780(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 4784(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 4788(sp)
	lw t0, 4784(sp)
	lw t1, 4788(sp)
	add t2, t0, t1
	sw t2, 4792(sp)
	lw t0, 4780(sp)
	lw t1, 4792(sp)
	sub t2, t0, t1
	sw t2, 4796(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 4800(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 4804(sp)
	lw t0, 4800(sp)
	lw t1, 4804(sp)
	sub t2, t0, t1
	sw t2, 4808(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 4812(sp)
	lw t0, 4808(sp)
	lw t1, 4812(sp)
	add t2, t0, t1
	sw t2, 4816(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 4820(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 4824(sp)
	lw t0, 4820(sp)
	lw t1, 4824(sp)
	add t2, t0, t1
	sw t2, 4828(sp)
	lw t0, 4816(sp)
	lw t1, 4828(sp)
	sub t2, t0, t1
	sw t2, 4832(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 4836(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 4840(sp)
	lw t0, 4836(sp)
	lw t1, 4840(sp)
	sub t2, t0, t1
	sw t2, 4844(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 4848(sp)
	lw t0, 4844(sp)
	lw t1, 4848(sp)
	add t2, t0, t1
	sw t2, 4852(sp)
	lw t0, 4832(sp)
	lw t1, 4852(sp)
	add t2, t0, t1
	sw t2, 4856(sp)
	lw t0, 4796(sp)
	lw t1, 4856(sp)
	add t2, t0, t1
	sw t2, 4860(sp)
	lw t0, 4744(sp)
	lw t1, 4860(sp)
	sub t2, t0, t1
	sw t2, 4864(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 4868(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 4872(sp)
	lw t0, 4868(sp)
	lw t1, 4872(sp)
	add t2, t0, t1
	sw t2, 4876(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 4880(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 4884(sp)
	lw t0, 4880(sp)
	lw t1, 4884(sp)
	sub t2, t0, t1
	sw t2, 4888(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 4892(sp)
	lw t0, 4888(sp)
	lw t1, 4892(sp)
	add t2, t0, t1
	sw t2, 4896(sp)
	lw t0, 4876(sp)
	lw t1, 4896(sp)
	add t2, t0, t1
	sw t2, 4900(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 4904(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 4908(sp)
	lw t0, 4904(sp)
	lw t1, 4908(sp)
	add t2, t0, t1
	sw t2, 4912(sp)
	lw t0, 4900(sp)
	lw t1, 4912(sp)
	sub t2, t0, t1
	sw t2, 4916(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 4920(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 4924(sp)
	lw t0, 4920(sp)
	lw t1, 4924(sp)
	sub t2, t0, t1
	sw t2, 4928(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 4932(sp)
	lw t0, 4928(sp)
	lw t1, 4932(sp)
	add t2, t0, t1
	sw t2, 4936(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 4940(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 4944(sp)
	lw t0, 4940(sp)
	lw t1, 4944(sp)
	add t2, t0, t1
	sw t2, 4948(sp)
	lw t0, 4936(sp)
	lw t1, 4948(sp)
	sub t2, t0, t1
	sw t2, 4952(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 4956(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 4960(sp)
	lw t0, 4956(sp)
	lw t1, 4960(sp)
	sub t2, t0, t1
	sw t2, 4964(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 4968(sp)
	lw t0, 4964(sp)
	lw t1, 4968(sp)
	add t2, t0, t1
	sw t2, 4972(sp)
	lw t0, 4952(sp)
	lw t1, 4972(sp)
	add t2, t0, t1
	sw t2, 4976(sp)
	lw t0, 4916(sp)
	lw t1, 4976(sp)
	add t2, t0, t1
	sw t2, 4980(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 4984(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 4988(sp)
	lw t0, 4984(sp)
	lw t1, 4988(sp)
	add t2, t0, t1
	sw t2, 4992(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 4996(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 5000(sp)
	lw t0, 4996(sp)
	lw t1, 5000(sp)
	sub t2, t0, t1
	sw t2, 5004(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 5008(sp)
	lw t0, 5004(sp)
	lw t1, 5008(sp)
	add t2, t0, t1
	sw t2, 5012(sp)
	lw t0, 4992(sp)
	lw t1, 5012(sp)
	add t2, t0, t1
	sw t2, 5016(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 5020(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 5024(sp)
	lw t0, 5020(sp)
	lw t1, 5024(sp)
	add t2, t0, t1
	sw t2, 5028(sp)
	lw t0, 5016(sp)
	lw t1, 5028(sp)
	sub t2, t0, t1
	sw t2, 5032(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 5036(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 5040(sp)
	lw t0, 5036(sp)
	lw t1, 5040(sp)
	sub t2, t0, t1
	sw t2, 5044(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 5048(sp)
	lw t0, 5044(sp)
	lw t1, 5048(sp)
	add t2, t0, t1
	sw t2, 5052(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 5056(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 5060(sp)
	lw t0, 5056(sp)
	lw t1, 5060(sp)
	add t2, t0, t1
	sw t2, 5064(sp)
	lw t0, 5052(sp)
	lw t1, 5064(sp)
	sub t2, t0, t1
	sw t2, 5068(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 5072(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 5076(sp)
	lw t0, 5072(sp)
	lw t1, 5076(sp)
	sub t2, t0, t1
	sw t2, 5080(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 5084(sp)
	lw t0, 5080(sp)
	lw t1, 5084(sp)
	add t2, t0, t1
	sw t2, 5088(sp)
	lw t0, 5068(sp)
	lw t1, 5088(sp)
	add t2, t0, t1
	sw t2, 5092(sp)
	lw t0, 5032(sp)
	lw t1, 5092(sp)
	add t2, t0, t1
	sw t2, 5096(sp)
	lw t0, 4980(sp)
	lw t1, 5096(sp)
	sub t2, t0, t1
	sw t2, 5100(sp)
	lw t0, 4864(sp)
	lw t1, 5100(sp)
	sub t2, t0, t1
	sw t2, 5104(sp)
	lw t0, 4604(sp)
	lw t1, 5104(sp)
	add t2, t0, t1
	sw t2, 5108(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 5112(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 5116(sp)
	lw t0, 5112(sp)
	lw t1, 5116(sp)
	add t2, t0, t1
	sw t2, 5120(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 5124(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 5128(sp)
	lw t0, 5124(sp)
	lw t1, 5128(sp)
	sub t2, t0, t1
	sw t2, 5132(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 5136(sp)
	lw t0, 5132(sp)
	lw t1, 5136(sp)
	add t2, t0, t1
	sw t2, 5140(sp)
	lw t0, 5120(sp)
	lw t1, 5140(sp)
	add t2, t0, t1
	sw t2, 5144(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 5148(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 5152(sp)
	lw t0, 5148(sp)
	lw t1, 5152(sp)
	add t2, t0, t1
	sw t2, 5156(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 5160(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 5164(sp)
	lw t0, 5160(sp)
	lw t1, 5164(sp)
	sub t2, t0, t1
	sw t2, 5168(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 5172(sp)
	lw t0, 5168(sp)
	lw t1, 5172(sp)
	add t2, t0, t1
	sw t2, 5176(sp)
	lw t0, 5156(sp)
	lw t1, 5176(sp)
	add t2, t0, t1
	sw t2, 5180(sp)
	lw t0, 5144(sp)
	lw t1, 5180(sp)
	sub t2, t0, t1
	sw t2, 5184(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 5188(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 5192(sp)
	lw t0, 5188(sp)
	lw t1, 5192(sp)
	add t2, t0, t1
	sw t2, 5196(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 5200(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 5204(sp)
	lw t0, 5200(sp)
	lw t1, 5204(sp)
	sub t2, t0, t1
	sw t2, 5208(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 5212(sp)
	lw t0, 5208(sp)
	lw t1, 5212(sp)
	add t2, t0, t1
	sw t2, 5216(sp)
	lw t0, 5196(sp)
	lw t1, 5216(sp)
	add t2, t0, t1
	sw t2, 5220(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 5224(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 5228(sp)
	lw t0, 5224(sp)
	lw t1, 5228(sp)
	add t2, t0, t1
	sw t2, 5232(sp)
	lw t0, 5220(sp)
	lw t1, 5232(sp)
	sub t2, t0, t1
	sw t2, 5236(sp)
	lw t0, 5184(sp)
	lw t1, 5236(sp)
	sub t2, t0, t1
	sw t2, 5240(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 5244(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 5248(sp)
	lw t0, 5244(sp)
	lw t1, 5248(sp)
	sub t2, t0, t1
	sw t2, 5252(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 5256(sp)
	lw t0, 5252(sp)
	lw t1, 5256(sp)
	add t2, t0, t1
	sw t2, 5260(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 5264(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 5268(sp)
	lw t0, 5264(sp)
	lw t1, 5268(sp)
	add t2, t0, t1
	sw t2, 5272(sp)
	lw t0, 5260(sp)
	lw t1, 5272(sp)
	sub t2, t0, t1
	sw t2, 5276(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 5280(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 5284(sp)
	lw t0, 5280(sp)
	lw t1, 5284(sp)
	sub t2, t0, t1
	sw t2, 5288(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 5292(sp)
	lw t0, 5288(sp)
	lw t1, 5292(sp)
	add t2, t0, t1
	sw t2, 5296(sp)
	lw t0, 5276(sp)
	lw t1, 5296(sp)
	add t2, t0, t1
	sw t2, 5300(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 5304(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 5308(sp)
	lw t0, 5304(sp)
	lw t1, 5308(sp)
	add t2, t0, t1
	sw t2, 5312(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 5316(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 5320(sp)
	lw t0, 5316(sp)
	lw t1, 5320(sp)
	sub t2, t0, t1
	sw t2, 5324(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 5328(sp)
	lw t0, 5324(sp)
	lw t1, 5328(sp)
	add t2, t0, t1
	sw t2, 5332(sp)
	lw t0, 5312(sp)
	lw t1, 5332(sp)
	add t2, t0, t1
	sw t2, 5336(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 5340(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 5344(sp)
	lw t0, 5340(sp)
	lw t1, 5344(sp)
	add t2, t0, t1
	sw t2, 5348(sp)
	lw t0, 5336(sp)
	lw t1, 5348(sp)
	sub t2, t0, t1
	sw t2, 5352(sp)
	lw t0, 5300(sp)
	lw t1, 5352(sp)
	sub t2, t0, t1
	sw t2, 5356(sp)
	lw t0, 5240(sp)
	lw t1, 5356(sp)
	add t2, t0, t1
	sw t2, 5360(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 5364(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 5368(sp)
	lw t0, 5364(sp)
	lw t1, 5368(sp)
	sub t2, t0, t1
	sw t2, 5372(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 5376(sp)
	lw t0, 5372(sp)
	lw t1, 5376(sp)
	add t2, t0, t1
	sw t2, 5380(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 5384(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 5388(sp)
	lw t0, 5384(sp)
	lw t1, 5388(sp)
	add t2, t0, t1
	sw t2, 5392(sp)
	lw t0, 5380(sp)
	lw t1, 5392(sp)
	sub t2, t0, t1
	sw t2, 5396(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 5400(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 5404(sp)
	lw t0, 5400(sp)
	lw t1, 5404(sp)
	sub t2, t0, t1
	sw t2, 5408(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 5412(sp)
	lw t0, 5408(sp)
	lw t1, 5412(sp)
	add t2, t0, t1
	sw t2, 5416(sp)
	lw t0, 5396(sp)
	lw t1, 5416(sp)
	add t2, t0, t1
	sw t2, 5420(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 5424(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 5428(sp)
	lw t0, 5424(sp)
	lw t1, 5428(sp)
	add t2, t0, t1
	sw t2, 5432(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 5436(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 5440(sp)
	lw t0, 5436(sp)
	lw t1, 5440(sp)
	sub t2, t0, t1
	sw t2, 5444(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 5448(sp)
	lw t0, 5444(sp)
	lw t1, 5448(sp)
	add t2, t0, t1
	sw t2, 5452(sp)
	lw t0, 5432(sp)
	lw t1, 5452(sp)
	add t2, t0, t1
	sw t2, 5456(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 5460(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 5464(sp)
	lw t0, 5460(sp)
	lw t1, 5464(sp)
	add t2, t0, t1
	sw t2, 5468(sp)
	lw t0, 5456(sp)
	lw t1, 5468(sp)
	sub t2, t0, t1
	sw t2, 5472(sp)
	lw t0, 5420(sp)
	lw t1, 5472(sp)
	sub t2, t0, t1
	sw t2, 5476(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 5480(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 5484(sp)
	lw t0, 5480(sp)
	lw t1, 5484(sp)
	sub t2, t0, t1
	sw t2, 5488(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 5492(sp)
	lw t0, 5488(sp)
	lw t1, 5492(sp)
	add t2, t0, t1
	sw t2, 5496(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 5500(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 5504(sp)
	lw t0, 5500(sp)
	lw t1, 5504(sp)
	add t2, t0, t1
	sw t2, 5508(sp)
	lw t0, 5496(sp)
	lw t1, 5508(sp)
	sub t2, t0, t1
	sw t2, 5512(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 5516(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 5520(sp)
	lw t0, 5516(sp)
	lw t1, 5520(sp)
	sub t2, t0, t1
	sw t2, 5524(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 5528(sp)
	lw t0, 5524(sp)
	lw t1, 5528(sp)
	add t2, t0, t1
	sw t2, 5532(sp)
	lw t0, 5512(sp)
	lw t1, 5532(sp)
	add t2, t0, t1
	sw t2, 5536(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 5540(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 5544(sp)
	lw t0, 5540(sp)
	lw t1, 5544(sp)
	add t2, t0, t1
	sw t2, 5548(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 5552(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 5556(sp)
	lw t0, 5552(sp)
	lw t1, 5556(sp)
	sub t2, t0, t1
	sw t2, 5560(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 5564(sp)
	lw t0, 5560(sp)
	lw t1, 5564(sp)
	add t2, t0, t1
	sw t2, 5568(sp)
	lw t0, 5548(sp)
	lw t1, 5568(sp)
	add t2, t0, t1
	sw t2, 5572(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 5576(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 5580(sp)
	lw t0, 5576(sp)
	lw t1, 5580(sp)
	add t2, t0, t1
	sw t2, 5584(sp)
	lw t0, 5572(sp)
	lw t1, 5584(sp)
	sub t2, t0, t1
	sw t2, 5588(sp)
	lw t0, 5536(sp)
	lw t1, 5588(sp)
	sub t2, t0, t1
	sw t2, 5592(sp)
	lw t0, 5476(sp)
	lw t1, 5592(sp)
	add t2, t0, t1
	sw t2, 5596(sp)
	lw t0, 5360(sp)
	lw t1, 5596(sp)
	add t2, t0, t1
	sw t2, 5600(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 5604(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 5608(sp)
	lw t0, 5604(sp)
	lw t1, 5608(sp)
	sub t2, t0, t1
	sw t2, 5612(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 5616(sp)
	lw t0, 5612(sp)
	lw t1, 5616(sp)
	add t2, t0, t1
	sw t2, 5620(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 5624(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 5628(sp)
	lw t0, 5624(sp)
	lw t1, 5628(sp)
	add t2, t0, t1
	sw t2, 5632(sp)
	lw t0, 5620(sp)
	lw t1, 5632(sp)
	sub t2, t0, t1
	sw t2, 5636(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 5640(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 5644(sp)
	lw t0, 5640(sp)
	lw t1, 5644(sp)
	sub t2, t0, t1
	sw t2, 5648(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 5652(sp)
	lw t0, 5648(sp)
	lw t1, 5652(sp)
	add t2, t0, t1
	sw t2, 5656(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 5660(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 5664(sp)
	lw t0, 5660(sp)
	lw t1, 5664(sp)
	add t2, t0, t1
	sw t2, 5668(sp)
	lw t0, 5656(sp)
	lw t1, 5668(sp)
	sub t2, t0, t1
	sw t2, 5672(sp)
	lw t0, 5636(sp)
	lw t1, 5672(sp)
	add t2, t0, t1
	sw t2, 5676(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 5680(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 5684(sp)
	lw t0, 5680(sp)
	lw t1, 5684(sp)
	sub t2, t0, t1
	sw t2, 5688(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 5692(sp)
	lw t0, 5688(sp)
	lw t1, 5692(sp)
	add t2, t0, t1
	sw t2, 5696(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 5700(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 5704(sp)
	lw t0, 5700(sp)
	lw t1, 5704(sp)
	add t2, t0, t1
	sw t2, 5708(sp)
	lw t0, 5696(sp)
	lw t1, 5708(sp)
	sub t2, t0, t1
	sw t2, 5712(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 5716(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 5720(sp)
	lw t0, 5716(sp)
	lw t1, 5720(sp)
	sub t2, t0, t1
	sw t2, 5724(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 5728(sp)
	lw t0, 5724(sp)
	lw t1, 5728(sp)
	add t2, t0, t1
	sw t2, 5732(sp)
	lw t0, 5712(sp)
	lw t1, 5732(sp)
	add t2, t0, t1
	sw t2, 5736(sp)
	lw t0, 5676(sp)
	lw t1, 5736(sp)
	add t2, t0, t1
	sw t2, 5740(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 5744(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 5748(sp)
	lw t0, 5744(sp)
	lw t1, 5748(sp)
	add t2, t0, t1
	sw t2, 5752(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 5756(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 5760(sp)
	lw t0, 5756(sp)
	lw t1, 5760(sp)
	sub t2, t0, t1
	sw t2, 5764(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 5768(sp)
	lw t0, 5764(sp)
	lw t1, 5768(sp)
	add t2, t0, t1
	sw t2, 5772(sp)
	lw t0, 5752(sp)
	lw t1, 5772(sp)
	add t2, t0, t1
	sw t2, 5776(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 5780(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 5784(sp)
	lw t0, 5780(sp)
	lw t1, 5784(sp)
	add t2, t0, t1
	sw t2, 5788(sp)
	lw t0, 5776(sp)
	lw t1, 5788(sp)
	sub t2, t0, t1
	sw t2, 5792(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 5796(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 5800(sp)
	lw t0, 5796(sp)
	lw t1, 5800(sp)
	sub t2, t0, t1
	sw t2, 5804(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 5808(sp)
	lw t0, 5804(sp)
	lw t1, 5808(sp)
	add t2, t0, t1
	sw t2, 5812(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 5816(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 5820(sp)
	lw t0, 5816(sp)
	lw t1, 5820(sp)
	add t2, t0, t1
	sw t2, 5824(sp)
	lw t0, 5812(sp)
	lw t1, 5824(sp)
	sub t2, t0, t1
	sw t2, 5828(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 5832(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 5836(sp)
	lw t0, 5832(sp)
	lw t1, 5836(sp)
	sub t2, t0, t1
	sw t2, 5840(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 5844(sp)
	lw t0, 5840(sp)
	lw t1, 5844(sp)
	add t2, t0, t1
	sw t2, 5848(sp)
	lw t0, 5828(sp)
	lw t1, 5848(sp)
	add t2, t0, t1
	sw t2, 5852(sp)
	lw t0, 5792(sp)
	lw t1, 5852(sp)
	add t2, t0, t1
	sw t2, 5856(sp)
	lw t0, 5740(sp)
	lw t1, 5856(sp)
	sub t2, t0, t1
	sw t2, 5860(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 5864(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 5868(sp)
	lw t0, 5864(sp)
	lw t1, 5868(sp)
	add t2, t0, t1
	sw t2, 5872(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 5876(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 5880(sp)
	lw t0, 5876(sp)
	lw t1, 5880(sp)
	sub t2, t0, t1
	sw t2, 5884(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 5888(sp)
	lw t0, 5884(sp)
	lw t1, 5888(sp)
	add t2, t0, t1
	sw t2, 5892(sp)
	lw t0, 5872(sp)
	lw t1, 5892(sp)
	add t2, t0, t1
	sw t2, 5896(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 5900(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 5904(sp)
	lw t0, 5900(sp)
	lw t1, 5904(sp)
	add t2, t0, t1
	sw t2, 5908(sp)
	lw t0, 5896(sp)
	lw t1, 5908(sp)
	sub t2, t0, t1
	sw t2, 5912(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 5916(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 5920(sp)
	lw t0, 5916(sp)
	lw t1, 5920(sp)
	sub t2, t0, t1
	sw t2, 5924(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 5928(sp)
	lw t0, 5924(sp)
	lw t1, 5928(sp)
	add t2, t0, t1
	sw t2, 5932(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 5936(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 5940(sp)
	lw t0, 5936(sp)
	lw t1, 5940(sp)
	add t2, t0, t1
	sw t2, 5944(sp)
	lw t0, 5932(sp)
	lw t1, 5944(sp)
	sub t2, t0, t1
	sw t2, 5948(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 5952(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 5956(sp)
	lw t0, 5952(sp)
	lw t1, 5956(sp)
	sub t2, t0, t1
	sw t2, 5960(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 5964(sp)
	lw t0, 5960(sp)
	lw t1, 5964(sp)
	add t2, t0, t1
	sw t2, 5968(sp)
	lw t0, 5948(sp)
	lw t1, 5968(sp)
	add t2, t0, t1
	sw t2, 5972(sp)
	lw t0, 5912(sp)
	lw t1, 5972(sp)
	add t2, t0, t1
	sw t2, 5976(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 5980(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 5984(sp)
	lw t0, 5980(sp)
	lw t1, 5984(sp)
	add t2, t0, t1
	sw t2, 5988(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 5992(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 5996(sp)
	lw t0, 5992(sp)
	lw t1, 5996(sp)
	sub t2, t0, t1
	sw t2, 6000(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 6004(sp)
	lw t0, 6000(sp)
	lw t1, 6004(sp)
	add t2, t0, t1
	sw t2, 6008(sp)
	lw t0, 5988(sp)
	lw t1, 6008(sp)
	add t2, t0, t1
	sw t2, 6012(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 6016(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 6020(sp)
	lw t0, 6016(sp)
	lw t1, 6020(sp)
	add t2, t0, t1
	sw t2, 6024(sp)
	lw t0, 6012(sp)
	lw t1, 6024(sp)
	sub t2, t0, t1
	sw t2, 6028(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 6032(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 6036(sp)
	lw t0, 6032(sp)
	lw t1, 6036(sp)
	sub t2, t0, t1
	sw t2, 6040(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 6044(sp)
	lw t0, 6040(sp)
	lw t1, 6044(sp)
	add t2, t0, t1
	sw t2, 6048(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 6052(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 6056(sp)
	lw t0, 6052(sp)
	lw t1, 6056(sp)
	add t2, t0, t1
	sw t2, 6060(sp)
	lw t0, 6048(sp)
	lw t1, 6060(sp)
	sub t2, t0, t1
	sw t2, 6064(sp)
	la t0, C
	lw t2, 0(t0)
	sw t2, 6068(sp)
	la t0, A
	lw t2, 0(t0)
	sw t2, 6072(sp)
	lw t0, 6068(sp)
	lw t1, 6072(sp)
	sub t2, t0, t1
	sw t2, 6076(sp)
	la t0, B
	lw t2, 0(t0)
	sw t2, 6080(sp)
	lw t0, 6076(sp)
	lw t1, 6080(sp)
	add t2, t0, t1
	sw t2, 6084(sp)
	lw t0, 6064(sp)
	lw t1, 6084(sp)
	add t2, t0, t1
	sw t2, 6088(sp)
	lw t0, 6028(sp)
	lw t1, 6088(sp)
	add t2, t0, t1
	sw t2, 6092(sp)
	lw t0, 5976(sp)
	lw t1, 6092(sp)
	sub t2, t0, t1
	sw t2, 6096(sp)
	lw t0, 5860(sp)
	lw t1, 6096(sp)
	sub t2, t0, t1
	sw t2, 6100(sp)
	lw t0, 5600(sp)
	lw t1, 6100(sp)
	add t2, t0, t1
	sw t2, 6104(sp)
	lw t0, 5108(sp)
	lw t1, 6104(sp)
	sub t2, t0, t1
	sw t2, 6108(sp)
	lw t0, 6108(sp)
	la t1, C
	sw t0, 0(t1)
	j .LBB2
.LBB6: 
	la t0, A
	lw t2, 0(t0)
	sw t2, 6112(sp)
	lw t0, 6112(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 6116(sp)
	li t2, 4
	sw t2, 6120(sp)
	lw t0, 6120(sp)
	mv a0, t0
	call malloc
	mv t2, a0
	sw t2, 6124(sp)
	lw t0, 6124(sp)
	mv t2, t0
	sw t2, 6128(sp)
	lw t0, 6116(sp)
	lw t1, 6128(sp)
	sw t0, 0(t1)
	lw t0, 6116(sp)
	mv a0, t0
	la t0, .str.0
	mv a1, t0
	call stringAdd
	mv t2, a0
	sw t2, 6132(sp)
	li t2, 4
	sw t2, 6136(sp)
	lw t0, 6136(sp)
	mv a0, t0
	call malloc
	mv t2, a0
	sw t2, 6140(sp)
	lw t0, 6140(sp)
	mv t2, t0
	sw t2, 6144(sp)
	lw t0, 6132(sp)
	lw t1, 6144(sp)
	sw t0, 0(t1)
	la t0, B
	lw t2, 0(t0)
	sw t2, 6148(sp)
	lw t0, 6148(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 6152(sp)
	li t2, 4
	sw t2, 6156(sp)
	lw t0, 6156(sp)
	mv a0, t0
	call malloc
	mv t2, a0
	sw t2, 6160(sp)
	lw t0, 6160(sp)
	mv t2, t0
	sw t2, 6164(sp)
	lw t0, 6152(sp)
	lw t1, 6164(sp)
	sw t0, 0(t1)
	lw t0, 6132(sp)
	mv a0, t0
	lw t0, 6152(sp)
	mv a1, t0
	call stringAdd
	mv t2, a0
	sw t2, 6168(sp)
	li t2, 4
	sw t2, 6172(sp)
	lw t0, 6172(sp)
	mv a0, t0
	call malloc
	mv t2, a0
	sw t2, 6176(sp)
	lw t0, 6176(sp)
	mv t2, t0
	sw t2, 6180(sp)
	lw t0, 6168(sp)
	lw t1, 6180(sp)
	sw t0, 0(t1)
	lw t0, 6168(sp)
	mv a0, t0
	la t0, .str.0
	mv a1, t0
	call stringAdd
	mv t2, a0
	sw t2, 6184(sp)
	li t2, 4
	sw t2, 6188(sp)
	lw t0, 6188(sp)
	mv a0, t0
	call malloc
	mv t2, a0
	sw t2, 6192(sp)
	lw t0, 6192(sp)
	mv t2, t0
	sw t2, 6196(sp)
	lw t0, 6184(sp)
	lw t1, 6196(sp)
	sw t0, 0(t1)
	la t0, C
	lw t2, 0(t0)
	sw t2, 6200(sp)
	lw t0, 6200(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 6204(sp)
	li t2, 4
	sw t2, 6208(sp)
	lw t0, 6208(sp)
	mv a0, t0
	call malloc
	mv t2, a0
	sw t2, 6212(sp)
	lw t0, 6212(sp)
	mv t2, t0
	sw t2, 6216(sp)
	lw t0, 6204(sp)
	lw t1, 6216(sp)
	sw t0, 0(t1)
	lw t0, 6184(sp)
	mv a0, t0
	lw t0, 6204(sp)
	mv a1, t0
	call stringAdd
	mv t2, a0
	sw t2, 6220(sp)
	li t2, 4
	sw t2, 6224(sp)
	lw t0, 6224(sp)
	mv a0, t0
	call malloc
	mv t2, a0
	sw t2, 6228(sp)
	lw t0, 6228(sp)
	mv t2, t0
	sw t2, 6232(sp)
	lw t0, 6220(sp)
	lw t1, 6232(sp)
	sw t0, 0(t1)
	lw t0, 6220(sp)
	mv a0, t0
	call println
	mv t2, a0
	sw t2, 6236(sp)
	mv a0, zero
	lw ra, 6240(sp)
	addi sp, sp, 6244
	ret


	.section	.data
.str.0:
	.asciz	" "

	.globl	A
	.p2align	2
A:
	.word	0

	.globl	B
	.p2align	2
B:
	.word	0

	.globl	C
	.p2align	2
C:
	.word	0

.str.4:
	.asciz	" "

