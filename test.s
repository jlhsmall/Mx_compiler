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
	addi sp, sp, -1384
	sw ra, 1380(sp)
	call init_main
	li a0, 4
	call malloc
	mv t2, a0
	sw t2, 0(sp)
	li a0, 4
	call malloc
	mv t2, a0
	sw t2, 4(sp)
	li a0, 4
	call malloc
	mv t2, a0
	sw t2, 8(sp)
	li a0, 4
	call malloc
	mv t2, a0
	sw t2, 12(sp)
	li a0, 4
	call malloc
	mv t2, a0
	sw t2, 16(sp)
	li a0, 4
	call malloc
	mv t2, a0
	sw t2, 20(sp)
	li a0, 4
	call malloc
	mv t2, a0
	sw t2, 24(sp)
	li a0, 4
	call malloc
	mv t2, a0
	sw t2, 28(sp)
	li a0, 4
	call malloc
	mv t2, a0
	sw t2, 32(sp)
	li a0, 4
	call malloc
	mv t2, a0
	sw t2, 36(sp)
	li a0, 4
	call malloc
	mv t2, a0
	sw t2, 40(sp)
	li a0, 4
	call malloc
	mv t2, a0
	sw t2, 44(sp)
	li a0, 4
	call malloc
	mv t2, a0
	sw t2, 48(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 52(sp)
	call getInt
	mv t2, a0
	sw t2, 56(sp)
	lw t0, 56(sp)
	lw t1, 0(sp)
	sw t0, 0(t1)
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 60(sp)
	lw t1, 4(sp)
	sw zero, 0(t1)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 64(sp)
	lw t1, 24(sp)
	sw zero, 0(t1)
	lw t0, 8(sp)
	lw t2, 0(t0)
	sw t2, 68(sp)
	lw t1, 8(sp)
	sw zero, 0(t1)
	lw t0, 12(sp)
	lw t2, 0(t0)
	sw t2, 72(sp)
	lw t1, 12(sp)
	sw zero, 0(t1)
	lw t0, 16(sp)
	lw t2, 0(t0)
	sw t2, 76(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 80(sp)
	lw t0, 80(sp)
	addi t2, t0, -1
	sw t2, 84(sp)
	lw t0, 84(sp)
	lw t1, 16(sp)
	sw t0, 0(t1)
	lw t0, 20(sp)
	lw t2, 0(t0)
	sw t2, 88(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 92(sp)
	lw t0, 92(sp)
	addi t2, t0, -1
	sw t2, 96(sp)
	lw t0, 96(sp)
	lw t1, 20(sp)
	sw t0, 0(t1)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 100(sp)
	lw t1, 36(sp)
	sw zero, 0(t1)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 104(sp)
	lw t1, 40(sp)
	sw zero, 0(t1)
	lw t0, 32(sp)
	lw t2, 0(t0)
	sw t2, 108(sp)
	lw t1, 32(sp)
	sw zero, 0(t1)
	lw t0, 28(sp)
	lw t2, 0(t0)
	sw t2, 112(sp)
	lw t1, 28(sp)
	sw zero, 0(t1)
	lw t0, 120(sp)
	lw t2, 0(t0)
	sw t2, 116(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 124(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 128(sp)
	lw t0, 124(sp)
	lw t1, 128(sp)
	mul t2, t0, t1
	sw t2, 132(sp)
	li t2, 4
	sw t2, 140(sp)
	lw t0, 132(sp)
	lw t1, 140(sp)
	mul t2, t0, t1
	sw t2, 136(sp)
	lw t0, 136(sp)
	addi t2, t0, 4
	sw t2, 144(sp)
	lw t0, 144(sp)
	mv a0, t0
	call malloc
	mv t2, a0
	sw t2, 148(sp)
	lw t0, 148(sp)
	mv t2, t0
	sw t2, 152(sp)
	lw t0, 132(sp)
	lw t1, 152(sp)
	sw t0, 0(t1)
	lw t0, 152(sp)
	addi t2, t0, 4
	sw t2, 156(sp)
	lw t0, 156(sp)
	mv t2, t0
	sw t2, 160(sp)
	lw t0, 160(sp)
	lw t1, 120(sp)
	sw t0, 0(t1)
	lw t0, 44(sp)
	lw t2, 0(t0)
	sw t2, 164(sp)
	lw t1, 44(sp)
	sw zero, 0(t1)
	j .LBB2
.LBB2: 
	lw t0, 44(sp)
	lw t2, 0(t0)
	sw t2, 168(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 172(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 176(sp)
	lw t0, 172(sp)
	lw t1, 176(sp)
	mul t2, t0, t1
	sw t2, 180(sp)
	lw t0, 168(sp)
	lw t1, 180(sp)
	blt t0, t1, .LBB3
	j .LBB4
.LBB3: 
	lw t0, 120(sp)
	lw t2, 0(t0)
	sw t2, 184(sp)
	lw t0, 44(sp)
	lw t2, 0(t0)
	sw t2, 188(sp)
	li t2, 4
	sw t2, 196(sp)
	lw t0, 188(sp)
	lw t1, 196(sp)
	mul t2, t0, t1
	sw t2, 192(sp)
	lw t0, 184(sp)
	lw t1, 192(sp)
	add t2, t0, t1
	sw t2, 200(sp)
	lw t0, 200(sp)
	lw t2, 0(t0)
	sw t2, 204(sp)
	lw t1, 200(sp)
	sw zero, 0(t1)
	lw t0, 44(sp)
	lw t2, 0(t0)
	sw t2, 208(sp)
	lw t0, 208(sp)
	addi t2, t0, 1
	sw t2, 212(sp)
	lw t0, 212(sp)
	lw t1, 44(sp)
	sw t0, 0(t1)
	j .LBB2
.LBB4: 
	lw t0, 220(sp)
	lw t2, 0(t0)
	sw t2, 216(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 224(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 228(sp)
	lw t0, 224(sp)
	lw t1, 228(sp)
	mul t2, t0, t1
	sw t2, 232(sp)
	li t2, 4
	sw t2, 240(sp)
	lw t0, 232(sp)
	lw t1, 240(sp)
	mul t2, t0, t1
	sw t2, 236(sp)
	lw t0, 236(sp)
	addi t2, t0, 4
	sw t2, 244(sp)
	lw t0, 244(sp)
	mv a0, t0
	call malloc
	mv t2, a0
	sw t2, 248(sp)
	lw t0, 248(sp)
	mv t2, t0
	sw t2, 252(sp)
	lw t0, 232(sp)
	lw t1, 252(sp)
	sw t0, 0(t1)
	lw t0, 252(sp)
	addi t2, t0, 4
	sw t2, 256(sp)
	lw t0, 256(sp)
	mv t2, t0
	sw t2, 260(sp)
	lw t0, 260(sp)
	lw t1, 220(sp)
	sw t0, 0(t1)
	lw t0, 44(sp)
	lw t2, 0(t0)
	sw t2, 264(sp)
	lw t1, 44(sp)
	sw zero, 0(t1)
	j .LBB5
.LBB5: 
	lw t0, 44(sp)
	lw t2, 0(t0)
	sw t2, 268(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 272(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 276(sp)
	lw t0, 272(sp)
	lw t1, 276(sp)
	mul t2, t0, t1
	sw t2, 280(sp)
	lw t0, 268(sp)
	lw t1, 280(sp)
	blt t0, t1, .LBB6
	j .LBB7
.LBB6: 
	lw t0, 220(sp)
	lw t2, 0(t0)
	sw t2, 284(sp)
	lw t0, 44(sp)
	lw t2, 0(t0)
	sw t2, 288(sp)
	li t2, 4
	sw t2, 296(sp)
	lw t0, 288(sp)
	lw t1, 296(sp)
	mul t2, t0, t1
	sw t2, 292(sp)
	lw t0, 284(sp)
	lw t1, 292(sp)
	add t2, t0, t1
	sw t2, 300(sp)
	lw t0, 300(sp)
	lw t2, 0(t0)
	sw t2, 304(sp)
	lw t1, 300(sp)
	sw zero, 0(t1)
	lw t0, 44(sp)
	lw t2, 0(t0)
	sw t2, 308(sp)
	lw t0, 308(sp)
	addi t2, t0, 1
	sw t2, 312(sp)
	lw t0, 312(sp)
	lw t1, 44(sp)
	sw t0, 0(t1)
	j .LBB5
.LBB7: 
	lw t0, 320(sp)
	lw t2, 0(t0)
	sw t2, 316(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 324(sp)
	li t2, 4
	sw t2, 332(sp)
	lw t0, 324(sp)
	lw t1, 332(sp)
	mul t2, t0, t1
	sw t2, 328(sp)
	lw t0, 328(sp)
	addi t2, t0, 4
	sw t2, 336(sp)
	lw t0, 336(sp)
	mv a0, t0
	call malloc
	mv t2, a0
	sw t2, 340(sp)
	lw t0, 340(sp)
	mv t2, t0
	sw t2, 344(sp)
	lw t0, 324(sp)
	lw t1, 344(sp)
	sw t0, 0(t1)
	lw t0, 344(sp)
	addi t2, t0, 4
	sw t2, 348(sp)
	lw t0, 348(sp)
	mv t2, t0
	sw t2, 352(sp)
	lw t0, 352(sp)
	lw t1, 320(sp)
	sw t0, 0(t1)
	lw t0, 44(sp)
	lw t2, 0(t0)
	sw t2, 356(sp)
	lw t1, 44(sp)
	sw zero, 0(t1)
	j .LBB8
.LBB8: 
	lw t0, 44(sp)
	lw t2, 0(t0)
	sw t2, 360(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 364(sp)
	lw t0, 360(sp)
	lw t1, 364(sp)
	blt t0, t1, .LBB9
	j .LBB13
.LBB9: 
	lw t0, 320(sp)
	lw t2, 0(t0)
	sw t2, 368(sp)
	lw t0, 44(sp)
	lw t2, 0(t0)
	sw t2, 372(sp)
	li t2, 4
	sw t2, 380(sp)
	lw t0, 372(sp)
	lw t1, 380(sp)
	mul t2, t0, t1
	sw t2, 376(sp)
	lw t0, 368(sp)
	lw t1, 376(sp)
	add t2, t0, t1
	sw t2, 384(sp)
	lw t0, 384(sp)
	lw t2, 0(t0)
	sw t2, 388(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 392(sp)
	li t2, 4
	sw t2, 400(sp)
	lw t0, 392(sp)
	lw t1, 400(sp)
	mul t2, t0, t1
	sw t2, 396(sp)
	lw t0, 396(sp)
	addi t2, t0, 4
	sw t2, 404(sp)
	lw t0, 404(sp)
	mv a0, t0
	call malloc
	mv t2, a0
	sw t2, 408(sp)
	lw t0, 408(sp)
	mv t2, t0
	sw t2, 412(sp)
	lw t0, 392(sp)
	lw t1, 412(sp)
	sw t0, 0(t1)
	lw t0, 412(sp)
	addi t2, t0, 4
	sw t2, 416(sp)
	lw t0, 416(sp)
	mv t2, t0
	sw t2, 420(sp)
	lw t0, 420(sp)
	lw t1, 384(sp)
	sw t0, 0(t1)
	lw t0, 48(sp)
	lw t2, 0(t0)
	sw t2, 424(sp)
	lw t1, 48(sp)
	sw zero, 0(t1)
	j .LBB10
.LBB10: 
	lw t0, 48(sp)
	lw t2, 0(t0)
	sw t2, 428(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 432(sp)
	lw t0, 428(sp)
	lw t1, 432(sp)
	blt t0, t1, .LBB11
	j .LBB12
.LBB11: 
	lw t0, 320(sp)
	lw t2, 0(t0)
	sw t2, 436(sp)
	lw t0, 44(sp)
	lw t2, 0(t0)
	sw t2, 440(sp)
	li t2, 4
	sw t2, 448(sp)
	lw t0, 440(sp)
	lw t1, 448(sp)
	mul t2, t0, t1
	sw t2, 444(sp)
	lw t0, 436(sp)
	lw t1, 444(sp)
	add t2, t0, t1
	sw t2, 452(sp)
	lw t0, 452(sp)
	lw t2, 0(t0)
	sw t2, 456(sp)
	lw t0, 48(sp)
	lw t2, 0(t0)
	sw t2, 460(sp)
	li t2, 4
	sw t2, 468(sp)
	lw t0, 460(sp)
	lw t1, 468(sp)
	mul t2, t0, t1
	sw t2, 464(sp)
	lw t0, 452(sp)
	lw t1, 464(sp)
	add t2, t0, t1
	sw t2, 472(sp)
	lw t0, 472(sp)
	lw t2, 0(t0)
	sw t2, 476(sp)
	addi t2, zero, -1
	sw t2, 480(sp)
	lw t0, 480(sp)
	lw t1, 472(sp)
	sw t0, 0(t1)
	lw t0, 48(sp)
	lw t2, 0(t0)
	sw t2, 484(sp)
	lw t0, 484(sp)
	addi t2, t0, 1
	sw t2, 488(sp)
	lw t0, 488(sp)
	lw t1, 48(sp)
	sw t0, 0(t1)
	j .LBB10
.LBB12: 
	lw t0, 44(sp)
	lw t2, 0(t0)
	sw t2, 492(sp)
	lw t0, 492(sp)
	addi t2, t0, 1
	sw t2, 496(sp)
	lw t0, 496(sp)
	lw t1, 44(sp)
	sw t0, 0(t1)
	j .LBB8
.LBB13: 
	lw t0, 120(sp)
	lw t2, 0(t0)
	sw t2, 500(sp)
	lw t0, 500(sp)
	addi t2, t0, 0
	sw t2, 504(sp)
	lw t0, 504(sp)
	lw t2, 0(t0)
	sw t2, 508(sp)
	lw t0, 8(sp)
	lw t2, 0(t0)
	sw t2, 512(sp)
	lw t0, 512(sp)
	lw t1, 504(sp)
	sw t0, 0(t1)
	lw t0, 220(sp)
	lw t2, 0(t0)
	sw t2, 516(sp)
	lw t0, 516(sp)
	addi t2, t0, 0
	sw t2, 520(sp)
	lw t0, 520(sp)
	lw t2, 0(t0)
	sw t2, 524(sp)
	lw t0, 12(sp)
	lw t2, 0(t0)
	sw t2, 528(sp)
	lw t0, 528(sp)
	lw t1, 520(sp)
	sw t0, 0(t1)
	lw t0, 320(sp)
	lw t2, 0(t0)
	sw t2, 532(sp)
	lw t0, 8(sp)
	lw t2, 0(t0)
	sw t2, 536(sp)
	li t2, 4
	sw t2, 544(sp)
	lw t0, 536(sp)
	lw t1, 544(sp)
	mul t2, t0, t1
	sw t2, 540(sp)
	lw t0, 532(sp)
	lw t1, 540(sp)
	add t2, t0, t1
	sw t2, 548(sp)
	lw t0, 548(sp)
	lw t2, 0(t0)
	sw t2, 552(sp)
	lw t0, 12(sp)
	lw t2, 0(t0)
	sw t2, 556(sp)
	li t2, 4
	sw t2, 564(sp)
	lw t0, 556(sp)
	lw t1, 564(sp)
	mul t2, t0, t1
	sw t2, 560(sp)
	lw t0, 548(sp)
	lw t1, 560(sp)
	add t2, t0, t1
	sw t2, 568(sp)
	lw t0, 568(sp)
	lw t2, 0(t0)
	sw t2, 572(sp)
	lw t1, 568(sp)
	sw zero, 0(t1)
	j .LBB14
.LBB14: 
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 576(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 580(sp)
	lw t0, 580(sp)
	lw t1, 576(sp)
	bge t0, t1, .LBB15
	j .LBB17
.LBB15: 
	lw t0, 32(sp)
	lw t2, 0(t0)
	sw t2, 584(sp)
	lw t0, 320(sp)
	lw t2, 0(t0)
	sw t2, 588(sp)
	lw t0, 120(sp)
	lw t2, 0(t0)
	sw t2, 592(sp)
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 596(sp)
	li t2, 4
	sw t2, 604(sp)
	lw t0, 596(sp)
	lw t1, 604(sp)
	mul t2, t0, t1
	sw t2, 600(sp)
	lw t0, 592(sp)
	lw t1, 600(sp)
	add t2, t0, t1
	sw t2, 608(sp)
	lw t0, 608(sp)
	lw t2, 0(t0)
	sw t2, 612(sp)
	li t2, 4
	sw t2, 620(sp)
	lw t0, 612(sp)
	lw t1, 620(sp)
	mul t2, t0, t1
	sw t2, 616(sp)
	lw t0, 588(sp)
	lw t1, 616(sp)
	add t2, t0, t1
	sw t2, 624(sp)
	lw t0, 624(sp)
	lw t2, 0(t0)
	sw t2, 628(sp)
	lw t0, 220(sp)
	lw t2, 0(t0)
	sw t2, 632(sp)
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 636(sp)
	li t2, 4
	sw t2, 644(sp)
	lw t0, 636(sp)
	lw t1, 644(sp)
	mul t2, t0, t1
	sw t2, 640(sp)
	lw t0, 632(sp)
	lw t1, 640(sp)
	add t2, t0, t1
	sw t2, 648(sp)
	lw t0, 648(sp)
	lw t2, 0(t0)
	sw t2, 652(sp)
	li t2, 4
	sw t2, 660(sp)
	lw t0, 652(sp)
	lw t1, 660(sp)
	mul t2, t0, t1
	sw t2, 656(sp)
	lw t0, 624(sp)
	lw t1, 656(sp)
	add t2, t0, t1
	sw t2, 664(sp)
	lw t0, 664(sp)
	lw t2, 0(t0)
	sw t2, 668(sp)
	lw t0, 668(sp)
	lw t1, 32(sp)
	sw t0, 0(t1)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 672(sp)
	lw t0, 120(sp)
	lw t2, 0(t0)
	sw t2, 676(sp)
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 680(sp)
	li t2, 4
	sw t2, 688(sp)
	lw t0, 680(sp)
	lw t1, 688(sp)
	mul t2, t0, t1
	sw t2, 684(sp)
	lw t0, 676(sp)
	lw t1, 684(sp)
	add t2, t0, t1
	sw t2, 692(sp)
	lw t0, 692(sp)
	lw t2, 0(t0)
	sw t2, 696(sp)
	lw t0, 696(sp)
	addi t2, t0, 1
	sw t2, 700(sp)
	lw t0, 700(sp)
	lw t1, 36(sp)
	sw t0, 0(t1)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 704(sp)
	lw t0, 220(sp)
	lw t2, 0(t0)
	sw t2, 708(sp)
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 712(sp)
	li t2, 4
	sw t2, 720(sp)
	lw t0, 712(sp)
	lw t1, 720(sp)
	mul t2, t0, t1
	sw t2, 716(sp)
	lw t0, 708(sp)
	lw t1, 716(sp)
	add t2, t0, t1
	sw t2, 724(sp)
	lw t0, 724(sp)
	lw t2, 0(t0)
	sw t2, 728(sp)
	lw t0, 728(sp)
	addi t2, t0, 2
	sw t2, 732(sp)
	lw t0, 732(sp)
	lw t1, 40(sp)
	sw t0, 0(t1)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 736(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 740(sp)
	lw t0, 736(sp)
	mv a0, t0
	lw t0, 740(sp)
	mv a1, t0
	call check
	mv t2, a0
	sw t2, 744(sp)
	lw t0, 744(sp)
	mv t2, t0
	sw t2, 748(sp)
	lw t0, 744(sp)
	bnez t0, .LBB16
	j .LBB18
.LBB16: 
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 760(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 764(sp)
	lw t0, 760(sp)
	mv a0, t0
	lw t0, 764(sp)
	mv a1, t0
	call check
	mv t2, a0
	sw t2, 768(sp)
	lw t0, 768(sp)
	mv t2, t0
	sw t2, 748(sp)
	j .LBB18
.LBB17: 
	lw t0, 28(sp)
	lw t2, 0(t0)
	sw t2, 752(sp)
	li t2, 1
	sw t2, 756(sp)
	lw t0, 752(sp)
	lw t1, 756(sp)
	beq t0, t1, .LBB19
	j .LBB21
.LBB18: 
	lw t0, 748(sp)
	mv t2, t0
	sw t2, 772(sp)
	lw t0, 748(sp)
	bnez t0, .LBB20
	j .LBB23
.LBB19: 
	lw t0, 320(sp)
	lw t2, 0(t0)
	sw t2, 1332(sp)
	lw t0, 16(sp)
	lw t2, 0(t0)
	sw t2, 1336(sp)
	li t2, 4
	sw t2, 1344(sp)
	lw t0, 1336(sp)
	lw t1, 1344(sp)
	mul t2, t0, t1
	sw t2, 1340(sp)
	lw t0, 1332(sp)
	lw t1, 1340(sp)
	add t2, t0, t1
	sw t2, 1348(sp)
	lw t0, 1348(sp)
	lw t2, 0(t0)
	sw t2, 1352(sp)
	lw t0, 20(sp)
	lw t2, 0(t0)
	sw t2, 1356(sp)
	li t2, 4
	sw t2, 1364(sp)
	lw t0, 1356(sp)
	lw t1, 1364(sp)
	mul t2, t0, t1
	sw t2, 1360(sp)
	lw t0, 1348(sp)
	lw t1, 1360(sp)
	add t2, t0, t1
	sw t2, 1368(sp)
	lw t0, 1368(sp)
	lw t2, 0(t0)
	sw t2, 1372(sp)
	lw t0, 1372(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 1376(sp)
	lw t0, 1376(sp)
	mv a0, t0
	call println
	j .LBB22
.LBB20: 
	lw t0, 320(sp)
	lw t2, 0(t0)
	sw t2, 776(sp)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 780(sp)
	li t2, 4
	sw t2, 788(sp)
	lw t0, 780(sp)
	lw t1, 788(sp)
	mul t2, t0, t1
	sw t2, 784(sp)
	lw t0, 776(sp)
	lw t1, 784(sp)
	add t2, t0, t1
	sw t2, 792(sp)
	lw t0, 792(sp)
	lw t2, 0(t0)
	sw t2, 796(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 800(sp)
	li t2, 4
	sw t2, 808(sp)
	lw t0, 800(sp)
	lw t1, 808(sp)
	mul t2, t0, t1
	sw t2, 804(sp)
	lw t0, 792(sp)
	lw t1, 804(sp)
	add t2, t0, t1
	sw t2, 812(sp)
	lw t0, 812(sp)
	lw t2, 0(t0)
	sw t2, 816(sp)
	addi t2, zero, -1
	sw t2, 820(sp)
	lw t0, 816(sp)
	lw t1, 820(sp)
	xor t2, t0, t1
	sw t2, 824(sp)
	lw t0, 824(sp)
	seqz t2, t0
	sw t2, 828(sp)
	lw t0, 828(sp)
	mv t2, t0
	sw t2, 772(sp)
	j .LBB23
.LBB21: 
	la t0, .str.0
	mv a0, t0
	call print
	j .LBB22
.LBB22: 
	mv a0, zero
	lw ra, 1380(sp)
	addi sp, sp, 1384
	ret
.LBB23: 
	lw t0, 772(sp)
	bnez t0, .LBB24
	j .LBB29
.LBB24: 
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 832(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 836(sp)
	lw t0, 836(sp)
	addi t2, t0, 1
	sw t2, 840(sp)
	lw t0, 840(sp)
	lw t1, 24(sp)
	sw t0, 0(t1)
	lw t0, 120(sp)
	lw t2, 0(t0)
	sw t2, 844(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 848(sp)
	li t2, 4
	sw t2, 856(sp)
	lw t0, 848(sp)
	lw t1, 856(sp)
	mul t2, t0, t1
	sw t2, 852(sp)
	lw t0, 844(sp)
	lw t1, 852(sp)
	add t2, t0, t1
	sw t2, 860(sp)
	lw t0, 860(sp)
	lw t2, 0(t0)
	sw t2, 864(sp)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 868(sp)
	lw t0, 868(sp)
	lw t1, 860(sp)
	sw t0, 0(t1)
	lw t0, 220(sp)
	lw t2, 0(t0)
	sw t2, 872(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 876(sp)
	li t2, 4
	sw t2, 884(sp)
	lw t0, 876(sp)
	lw t1, 884(sp)
	mul t2, t0, t1
	sw t2, 880(sp)
	lw t0, 872(sp)
	lw t1, 880(sp)
	add t2, t0, t1
	sw t2, 888(sp)
	lw t0, 888(sp)
	lw t2, 0(t0)
	sw t2, 892(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 896(sp)
	lw t0, 896(sp)
	lw t1, 888(sp)
	sw t0, 0(t1)
	lw t0, 320(sp)
	lw t2, 0(t0)
	sw t2, 900(sp)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 904(sp)
	li t2, 4
	sw t2, 912(sp)
	lw t0, 904(sp)
	lw t1, 912(sp)
	mul t2, t0, t1
	sw t2, 908(sp)
	lw t0, 900(sp)
	lw t1, 908(sp)
	add t2, t0, t1
	sw t2, 916(sp)
	lw t0, 916(sp)
	lw t2, 0(t0)
	sw t2, 920(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 924(sp)
	li t2, 4
	sw t2, 932(sp)
	lw t0, 924(sp)
	lw t1, 932(sp)
	mul t2, t0, t1
	sw t2, 928(sp)
	lw t0, 916(sp)
	lw t1, 928(sp)
	add t2, t0, t1
	sw t2, 936(sp)
	lw t0, 936(sp)
	lw t2, 0(t0)
	sw t2, 940(sp)
	lw t0, 32(sp)
	lw t2, 0(t0)
	sw t2, 944(sp)
	lw t0, 944(sp)
	addi t2, t0, 1
	sw t2, 948(sp)
	lw t0, 948(sp)
	lw t1, 936(sp)
	sw t0, 0(t1)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 952(sp)
	lw t0, 16(sp)
	lw t2, 0(t0)
	sw t2, 956(sp)
	lw t0, 952(sp)
	lw t1, 956(sp)
	xor t2, t0, t1
	sw t2, 960(sp)
	lw t0, 960(sp)
	seqz t2, t0
	sw t2, 964(sp)
	lw t0, 964(sp)
	mv t2, t0
	sw t2, 968(sp)
	lw t0, 952(sp)
	lw t1, 956(sp)
	beq t0, t1, .LBB25
	j .LBB26
.LBB25: 
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 972(sp)
	lw t0, 20(sp)
	lw t2, 0(t0)
	sw t2, 976(sp)
	lw t0, 972(sp)
	lw t1, 976(sp)
	xor t2, t0, t1
	sw t2, 980(sp)
	lw t0, 980(sp)
	seqz t2, t0
	sw t2, 984(sp)
	lw t0, 984(sp)
	mv t2, t0
	sw t2, 968(sp)
	j .LBB26
.LBB26: 
	lw t0, 968(sp)
	bnez t0, .LBB27
	j .LBB28
.LBB27: 
	lw t0, 28(sp)
	lw t2, 0(t0)
	sw t2, 988(sp)
	li t2, 1
	sw t2, 992(sp)
	lw t0, 992(sp)
	lw t1, 28(sp)
	sw t0, 0(t1)
	j .LBB28
.LBB28: 
	j .LBB29
.LBB29: 
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 996(sp)
	lw t0, 120(sp)
	lw t2, 0(t0)
	sw t2, 1000(sp)
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 1004(sp)
	li t2, 4
	sw t2, 1012(sp)
	lw t0, 1004(sp)
	lw t1, 1012(sp)
	mul t2, t0, t1
	sw t2, 1008(sp)
	lw t0, 1000(sp)
	lw t1, 1008(sp)
	add t2, t0, t1
	sw t2, 1016(sp)
	lw t0, 1016(sp)
	lw t2, 0(t0)
	sw t2, 1020(sp)
	lw t0, 1020(sp)
	addi t2, t0, 2
	sw t2, 1024(sp)
	lw t0, 1024(sp)
	lw t1, 36(sp)
	sw t0, 0(t1)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 1028(sp)
	lw t0, 220(sp)
	lw t2, 0(t0)
	sw t2, 1032(sp)
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 1036(sp)
	li t2, 4
	sw t2, 1044(sp)
	lw t0, 1036(sp)
	lw t1, 1044(sp)
	mul t2, t0, t1
	sw t2, 1040(sp)
	lw t0, 1032(sp)
	lw t1, 1040(sp)
	add t2, t0, t1
	sw t2, 1048(sp)
	lw t0, 1048(sp)
	lw t2, 0(t0)
	sw t2, 1052(sp)
	lw t0, 1052(sp)
	addi t2, t0, 1
	sw t2, 1056(sp)
	lw t0, 1056(sp)
	lw t1, 40(sp)
	sw t0, 0(t1)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 1060(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 1064(sp)
	lw t0, 1060(sp)
	mv a0, t0
	lw t0, 1064(sp)
	mv a1, t0
	call check
	mv t2, a0
	sw t2, 1068(sp)
	lw t0, 1068(sp)
	mv t2, t0
	sw t2, 1072(sp)
	lw t0, 1068(sp)
	bnez t0, .LBB30
	j .LBB31
.LBB30: 
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 1076(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 1080(sp)
	lw t0, 1076(sp)
	mv a0, t0
	lw t0, 1080(sp)
	mv a1, t0
	call check
	mv t2, a0
	sw t2, 1084(sp)
	lw t0, 1084(sp)
	mv t2, t0
	sw t2, 1072(sp)
	j .LBB31
.LBB31: 
	lw t0, 1072(sp)
	mv t2, t0
	sw t2, 1088(sp)
	lw t0, 1072(sp)
	bnez t0, .LBB32
	j .LBB33
.LBB32: 
	lw t0, 320(sp)
	lw t2, 0(t0)
	sw t2, 1092(sp)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 1096(sp)
	li t2, 4
	sw t2, 1104(sp)
	lw t0, 1096(sp)
	lw t1, 1104(sp)
	mul t2, t0, t1
	sw t2, 1100(sp)
	lw t0, 1092(sp)
	lw t1, 1100(sp)
	add t2, t0, t1
	sw t2, 1108(sp)
	lw t0, 1108(sp)
	lw t2, 0(t0)
	sw t2, 1112(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 1116(sp)
	li t2, 4
	sw t2, 1124(sp)
	lw t0, 1116(sp)
	lw t1, 1124(sp)
	mul t2, t0, t1
	sw t2, 1120(sp)
	lw t0, 1108(sp)
	lw t1, 1120(sp)
	add t2, t0, t1
	sw t2, 1128(sp)
	lw t0, 1128(sp)
	lw t2, 0(t0)
	sw t2, 1132(sp)
	addi t2, zero, -1
	sw t2, 1136(sp)
	lw t0, 1132(sp)
	lw t1, 1136(sp)
	xor t2, t0, t1
	sw t2, 1140(sp)
	lw t0, 1140(sp)
	seqz t2, t0
	sw t2, 1144(sp)
	lw t0, 1144(sp)
	mv t2, t0
	sw t2, 1088(sp)
	j .LBB33
.LBB33: 
	lw t0, 1088(sp)
	bnez t0, .LBB34
	j .LBB39
.LBB34: 
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 1148(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 1152(sp)
	lw t0, 1152(sp)
	addi t2, t0, 1
	sw t2, 1156(sp)
	lw t0, 1156(sp)
	lw t1, 24(sp)
	sw t0, 0(t1)
	lw t0, 120(sp)
	lw t2, 0(t0)
	sw t2, 1160(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 1164(sp)
	li t2, 4
	sw t2, 1172(sp)
	lw t0, 1164(sp)
	lw t1, 1172(sp)
	mul t2, t0, t1
	sw t2, 1168(sp)
	lw t0, 1160(sp)
	lw t1, 1168(sp)
	add t2, t0, t1
	sw t2, 1176(sp)
	lw t0, 1176(sp)
	lw t2, 0(t0)
	sw t2, 1180(sp)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 1184(sp)
	lw t0, 1184(sp)
	lw t1, 1176(sp)
	sw t0, 0(t1)
	lw t0, 220(sp)
	lw t2, 0(t0)
	sw t2, 1188(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 1192(sp)
	li t2, 4
	sw t2, 1200(sp)
	lw t0, 1192(sp)
	lw t1, 1200(sp)
	mul t2, t0, t1
	sw t2, 1196(sp)
	lw t0, 1188(sp)
	lw t1, 1196(sp)
	add t2, t0, t1
	sw t2, 1204(sp)
	lw t0, 1204(sp)
	lw t2, 0(t0)
	sw t2, 1208(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 1212(sp)
	lw t0, 1212(sp)
	lw t1, 1204(sp)
	sw t0, 0(t1)
	lw t0, 320(sp)
	lw t2, 0(t0)
	sw t2, 1216(sp)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 1220(sp)
	li t2, 4
	sw t2, 1228(sp)
	lw t0, 1220(sp)
	lw t1, 1228(sp)
	mul t2, t0, t1
	sw t2, 1224(sp)
	lw t0, 1216(sp)
	lw t1, 1224(sp)
	add t2, t0, t1
	sw t2, 1232(sp)
	lw t0, 1232(sp)
	lw t2, 0(t0)
	sw t2, 1236(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 1240(sp)
	li t2, 4
	sw t2, 1248(sp)
	lw t0, 1240(sp)
	lw t1, 1248(sp)
	mul t2, t0, t1
	sw t2, 1244(sp)
	lw t0, 1232(sp)
	lw t1, 1244(sp)
	add t2, t0, t1
	sw t2, 1252(sp)
	lw t0, 1252(sp)
	lw t2, 0(t0)
	sw t2, 1256(sp)
	lw t0, 32(sp)
	lw t2, 0(t0)
	sw t2, 1260(sp)
	lw t0, 1260(sp)
	addi t2, t0, 1
	sw t2, 1264(sp)
	lw t0, 1264(sp)
	lw t1, 1252(sp)
	sw t0, 0(t1)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 1268(sp)
	lw t0, 16(sp)
	lw t2, 0(t0)
	sw t2, 1272(sp)
	lw t0, 1268(sp)
	lw t1, 1272(sp)
	xor t2, t0, t1
	sw t2, 1276(sp)
	lw t0, 1276(sp)
	seqz t2, t0
	sw t2, 1280(sp)
	lw t0, 1280(sp)
	mv t2, t0
	sw t2, 1284(sp)
	lw t0, 1268(sp)
	lw t1, 1272(sp)
	beq t0, t1, .LBB35
	j .LBB36
.LBB35: 
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 1288(sp)
	lw t0, 20(sp)
	lw t2, 0(t0)
	sw t2, 1292(sp)
	lw t0, 1288(sp)
	lw t1, 1292(sp)
	xor t2, t0, t1
	sw t2, 1296(sp)
	lw t0, 1296(sp)
	seqz t2, t0
	sw t2, 1300(sp)
	lw t0, 1300(sp)
	mv t2, t0
	sw t2, 1284(sp)
	j .LBB36
.LBB36: 
	lw t0, 1284(sp)
	bnez t0, .LBB37
	j .LBB38
.LBB37: 
	lw t0, 28(sp)
	lw t2, 0(t0)
	sw t2, 1304(sp)
	li t2, 1
	sw t2, 1308(sp)
	lw t0, 1308(sp)
	lw t1, 28(sp)
	sw t0, 0(t1)
	j .LBB38
.LBB38: 
	j .LBB39
.LBB39: 
	lw t0, 28(sp)
	lw t2, 0(t0)
	sw t2, 1312(sp)
	li t2, 1
	sw t2, 1316(sp)
	lw t0, 1312(sp)
	lw t1, 1316(sp)
	beq t0, t1, .LBB40
	j .LBB41
.LBB40: 
	j .LBB17
	j .LBB41
.LBB41: 
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 1320(sp)
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 1324(sp)
	lw t0, 1324(sp)
	addi t2, t0, 1
	sw t2, 1328(sp)
	lw t0, 1328(sp)
	lw t1, 4(sp)
	sw t0, 0(t1)
	j .LBB14

	.globl	check
	.p2align	2
check:
.LBB42: 
	addi sp, sp, -44
	lw t1, 0(sp)
	sw a0, 0(t1)
	lw t1, 4(sp)
	sw a1, 0(t1)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 8(sp)
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 12(sp)
	lw t0, 8(sp)
	lw t1, 12(sp)
	slt t2, t0, t1
	sw t2, 16(sp)
	lw t0, 16(sp)
	mv t2, t0
	sw t2, 20(sp)
	lw t0, 8(sp)
	lw t1, 12(sp)
	blt t0, t1, .LBB43
	j .LBB44
.LBB43: 
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 24(sp)
	lw t0, 24(sp)
	slti t2, t0, 0
	sw t2, 28(sp)
	lw t0, 28(sp)
	xori t2, t0, 1
	sw t2, 28(sp)
	lw t0, 28(sp)
	mv t2, t0
	sw t2, 20(sp)
	j .LBB44
.LBB44: 
	lw t0, 20(sp)
	mv a0, t0
	addi sp, sp, 44
	ret


	.section	.data
.str.0:
	.asciz	"no solution!\n"

