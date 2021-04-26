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
	addi sp, sp, -3280
	sw ra, 3276(sp)
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
	addi t2, t0, -1
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
	addi t2, t0, -2
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
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 748(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 752(sp)
	lw t0, 748(sp)
	mv a0, t0
	lw t0, 752(sp)
	mv a1, t0
	call check
	mv t2, a0
	sw t2, 756(sp)
	lw t0, 744(sp)
	lw t1, 756(sp)
	and t2, t0, t1
	sw t2, 760(sp)
	lw t0, 320(sp)
	lw t2, 0(t0)
	sw t2, 764(sp)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 768(sp)
	li t2, 4
	sw t2, 776(sp)
	lw t0, 768(sp)
	lw t1, 776(sp)
	mul t2, t0, t1
	sw t2, 772(sp)
	lw t0, 764(sp)
	lw t1, 772(sp)
	add t2, t0, t1
	sw t2, 780(sp)
	lw t0, 780(sp)
	lw t2, 0(t0)
	sw t2, 784(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 788(sp)
	li t2, 4
	sw t2, 796(sp)
	lw t0, 788(sp)
	lw t1, 796(sp)
	mul t2, t0, t1
	sw t2, 792(sp)
	lw t0, 780(sp)
	lw t1, 792(sp)
	add t2, t0, t1
	sw t2, 800(sp)
	lw t0, 800(sp)
	lw t2, 0(t0)
	sw t2, 804(sp)
	addi t2, zero, -1
	sw t2, 808(sp)
	lw t0, 804(sp)
	lw t1, 808(sp)
	xor t2, t0, t1
	sw t2, 812(sp)
	lw t0, 812(sp)
	seqz t2, t0
	sw t2, 816(sp)
	lw t0, 760(sp)
	lw t1, 816(sp)
	and t2, t0, t1
	sw t2, 820(sp)
	lw t0, 820(sp)
	bnez t0, .LBB16
	j .LBB23
.LBB16: 
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
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 968(sp)
	lw t0, 20(sp)
	lw t2, 0(t0)
	sw t2, 972(sp)
	lw t0, 968(sp)
	lw t1, 972(sp)
	xor t2, t0, t1
	sw t2, 976(sp)
	lw t0, 976(sp)
	seqz t2, t0
	sw t2, 980(sp)
	lw t0, 964(sp)
	lw t1, 980(sp)
	and t2, t0, t1
	sw t2, 984(sp)
	lw t0, 984(sp)
	bnez t0, .LBB18
	j .LBB20
.LBB17: 
	lw t0, 28(sp)
	lw t2, 0(t0)
	sw t2, 824(sp)
	li t2, 1
	sw t2, 828(sp)
	lw t0, 824(sp)
	lw t1, 828(sp)
	beq t0, t1, .LBB19
	j .LBB21
.LBB18: 
	lw t0, 28(sp)
	lw t2, 0(t0)
	sw t2, 988(sp)
	li t2, 1
	sw t2, 992(sp)
	lw t0, 992(sp)
	lw t1, 28(sp)
	sw t0, 0(t1)
	j .LBB20
.LBB19: 
	lw t0, 320(sp)
	lw t2, 0(t0)
	sw t2, 3228(sp)
	lw t0, 16(sp)
	lw t2, 0(t0)
	sw t2, 3232(sp)
	li t2, 4
	sw t2, 3240(sp)
	lw t0, 3232(sp)
	lw t1, 3240(sp)
	mul t2, t0, t1
	sw t2, 3236(sp)
	lw t0, 3228(sp)
	lw t1, 3236(sp)
	add t2, t0, t1
	sw t2, 3244(sp)
	lw t0, 3244(sp)
	lw t2, 0(t0)
	sw t2, 3248(sp)
	lw t0, 20(sp)
	lw t2, 0(t0)
	sw t2, 3252(sp)
	li t2, 4
	sw t2, 3260(sp)
	lw t0, 3252(sp)
	lw t1, 3260(sp)
	mul t2, t0, t1
	sw t2, 3256(sp)
	lw t0, 3244(sp)
	lw t1, 3256(sp)
	add t2, t0, t1
	sw t2, 3264(sp)
	lw t0, 3264(sp)
	lw t2, 0(t0)
	sw t2, 3268(sp)
	lw t0, 3268(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 3272(sp)
	lw t0, 3272(sp)
	mv a0, t0
	call println
	j .LBB22
.LBB20: 
	j .LBB23
.LBB21: 
	la t0, .str.0
	mv a0, t0
	call print
	j .LBB22
.LBB22: 
	mv a0, zero
	lw ra, 3276(sp)
	addi sp, sp, 3280
	ret
.LBB23: 
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
	addi t2, t0, -1
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
	addi t2, t0, 2
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
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 1072(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 1076(sp)
	lw t0, 1072(sp)
	mv a0, t0
	lw t0, 1076(sp)
	mv a1, t0
	call check
	mv t2, a0
	sw t2, 1080(sp)
	lw t0, 1068(sp)
	lw t1, 1080(sp)
	and t2, t0, t1
	sw t2, 1084(sp)
	lw t0, 320(sp)
	lw t2, 0(t0)
	sw t2, 1088(sp)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 1092(sp)
	li t2, 4
	sw t2, 1100(sp)
	lw t0, 1092(sp)
	lw t1, 1100(sp)
	mul t2, t0, t1
	sw t2, 1096(sp)
	lw t0, 1088(sp)
	lw t1, 1096(sp)
	add t2, t0, t1
	sw t2, 1104(sp)
	lw t0, 1104(sp)
	lw t2, 0(t0)
	sw t2, 1108(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 1112(sp)
	li t2, 4
	sw t2, 1120(sp)
	lw t0, 1112(sp)
	lw t1, 1120(sp)
	mul t2, t0, t1
	sw t2, 1116(sp)
	lw t0, 1104(sp)
	lw t1, 1116(sp)
	add t2, t0, t1
	sw t2, 1124(sp)
	lw t0, 1124(sp)
	lw t2, 0(t0)
	sw t2, 1128(sp)
	addi t2, zero, -1
	sw t2, 1132(sp)
	lw t0, 1128(sp)
	lw t1, 1132(sp)
	xor t2, t0, t1
	sw t2, 1136(sp)
	lw t0, 1136(sp)
	seqz t2, t0
	sw t2, 1140(sp)
	lw t0, 1084(sp)
	lw t1, 1140(sp)
	and t2, t0, t1
	sw t2, 1144(sp)
	lw t0, 1144(sp)
	bnez t0, .LBB24
	j .LBB27
.LBB24: 
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
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 1284(sp)
	lw t0, 20(sp)
	lw t2, 0(t0)
	sw t2, 1288(sp)
	lw t0, 1284(sp)
	lw t1, 1288(sp)
	xor t2, t0, t1
	sw t2, 1292(sp)
	lw t0, 1292(sp)
	seqz t2, t0
	sw t2, 1296(sp)
	lw t0, 1280(sp)
	lw t1, 1296(sp)
	and t2, t0, t1
	sw t2, 1300(sp)
	lw t0, 1300(sp)
	bnez t0, .LBB25
	j .LBB26
.LBB25: 
	lw t0, 28(sp)
	lw t2, 0(t0)
	sw t2, 1304(sp)
	li t2, 1
	sw t2, 1308(sp)
	lw t0, 1308(sp)
	lw t1, 28(sp)
	sw t0, 0(t1)
	j .LBB26
.LBB26: 
	j .LBB27
.LBB27: 
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 1312(sp)
	lw t0, 120(sp)
	lw t2, 0(t0)
	sw t2, 1316(sp)
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 1320(sp)
	li t2, 4
	sw t2, 1328(sp)
	lw t0, 1320(sp)
	lw t1, 1328(sp)
	mul t2, t0, t1
	sw t2, 1324(sp)
	lw t0, 1316(sp)
	lw t1, 1324(sp)
	add t2, t0, t1
	sw t2, 1332(sp)
	lw t0, 1332(sp)
	lw t2, 0(t0)
	sw t2, 1336(sp)
	lw t0, 1336(sp)
	addi t2, t0, 1
	sw t2, 1340(sp)
	lw t0, 1340(sp)
	lw t1, 36(sp)
	sw t0, 0(t1)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 1344(sp)
	lw t0, 220(sp)
	lw t2, 0(t0)
	sw t2, 1348(sp)
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 1352(sp)
	li t2, 4
	sw t2, 1360(sp)
	lw t0, 1352(sp)
	lw t1, 1360(sp)
	mul t2, t0, t1
	sw t2, 1356(sp)
	lw t0, 1348(sp)
	lw t1, 1356(sp)
	add t2, t0, t1
	sw t2, 1364(sp)
	lw t0, 1364(sp)
	lw t2, 0(t0)
	sw t2, 1368(sp)
	lw t0, 1368(sp)
	addi t2, t0, -2
	sw t2, 1372(sp)
	lw t0, 1372(sp)
	lw t1, 40(sp)
	sw t0, 0(t1)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 1376(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 1380(sp)
	lw t0, 1376(sp)
	mv a0, t0
	lw t0, 1380(sp)
	mv a1, t0
	call check
	mv t2, a0
	sw t2, 1384(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 1388(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 1392(sp)
	lw t0, 1388(sp)
	mv a0, t0
	lw t0, 1392(sp)
	mv a1, t0
	call check
	mv t2, a0
	sw t2, 1396(sp)
	lw t0, 1384(sp)
	lw t1, 1396(sp)
	and t2, t0, t1
	sw t2, 1400(sp)
	lw t0, 320(sp)
	lw t2, 0(t0)
	sw t2, 1404(sp)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 1408(sp)
	li t2, 4
	sw t2, 1416(sp)
	lw t0, 1408(sp)
	lw t1, 1416(sp)
	mul t2, t0, t1
	sw t2, 1412(sp)
	lw t0, 1404(sp)
	lw t1, 1412(sp)
	add t2, t0, t1
	sw t2, 1420(sp)
	lw t0, 1420(sp)
	lw t2, 0(t0)
	sw t2, 1424(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 1428(sp)
	li t2, 4
	sw t2, 1436(sp)
	lw t0, 1428(sp)
	lw t1, 1436(sp)
	mul t2, t0, t1
	sw t2, 1432(sp)
	lw t0, 1420(sp)
	lw t1, 1432(sp)
	add t2, t0, t1
	sw t2, 1440(sp)
	lw t0, 1440(sp)
	lw t2, 0(t0)
	sw t2, 1444(sp)
	addi t2, zero, -1
	sw t2, 1448(sp)
	lw t0, 1444(sp)
	lw t1, 1448(sp)
	xor t2, t0, t1
	sw t2, 1452(sp)
	lw t0, 1452(sp)
	seqz t2, t0
	sw t2, 1456(sp)
	lw t0, 1400(sp)
	lw t1, 1456(sp)
	and t2, t0, t1
	sw t2, 1460(sp)
	lw t0, 1460(sp)
	bnez t0, .LBB28
	j .LBB31
.LBB28: 
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 1464(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 1468(sp)
	lw t0, 1468(sp)
	addi t2, t0, 1
	sw t2, 1472(sp)
	lw t0, 1472(sp)
	lw t1, 24(sp)
	sw t0, 0(t1)
	lw t0, 120(sp)
	lw t2, 0(t0)
	sw t2, 1476(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 1480(sp)
	li t2, 4
	sw t2, 1488(sp)
	lw t0, 1480(sp)
	lw t1, 1488(sp)
	mul t2, t0, t1
	sw t2, 1484(sp)
	lw t0, 1476(sp)
	lw t1, 1484(sp)
	add t2, t0, t1
	sw t2, 1492(sp)
	lw t0, 1492(sp)
	lw t2, 0(t0)
	sw t2, 1496(sp)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 1500(sp)
	lw t0, 1500(sp)
	lw t1, 1492(sp)
	sw t0, 0(t1)
	lw t0, 220(sp)
	lw t2, 0(t0)
	sw t2, 1504(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 1508(sp)
	li t2, 4
	sw t2, 1516(sp)
	lw t0, 1508(sp)
	lw t1, 1516(sp)
	mul t2, t0, t1
	sw t2, 1512(sp)
	lw t0, 1504(sp)
	lw t1, 1512(sp)
	add t2, t0, t1
	sw t2, 1520(sp)
	lw t0, 1520(sp)
	lw t2, 0(t0)
	sw t2, 1524(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 1528(sp)
	lw t0, 1528(sp)
	lw t1, 1520(sp)
	sw t0, 0(t1)
	lw t0, 320(sp)
	lw t2, 0(t0)
	sw t2, 1532(sp)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 1536(sp)
	li t2, 4
	sw t2, 1544(sp)
	lw t0, 1536(sp)
	lw t1, 1544(sp)
	mul t2, t0, t1
	sw t2, 1540(sp)
	lw t0, 1532(sp)
	lw t1, 1540(sp)
	add t2, t0, t1
	sw t2, 1548(sp)
	lw t0, 1548(sp)
	lw t2, 0(t0)
	sw t2, 1552(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 1556(sp)
	li t2, 4
	sw t2, 1564(sp)
	lw t0, 1556(sp)
	lw t1, 1564(sp)
	mul t2, t0, t1
	sw t2, 1560(sp)
	lw t0, 1548(sp)
	lw t1, 1560(sp)
	add t2, t0, t1
	sw t2, 1568(sp)
	lw t0, 1568(sp)
	lw t2, 0(t0)
	sw t2, 1572(sp)
	lw t0, 32(sp)
	lw t2, 0(t0)
	sw t2, 1576(sp)
	lw t0, 1576(sp)
	addi t2, t0, 1
	sw t2, 1580(sp)
	lw t0, 1580(sp)
	lw t1, 1568(sp)
	sw t0, 0(t1)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 1584(sp)
	lw t0, 16(sp)
	lw t2, 0(t0)
	sw t2, 1588(sp)
	lw t0, 1584(sp)
	lw t1, 1588(sp)
	xor t2, t0, t1
	sw t2, 1592(sp)
	lw t0, 1592(sp)
	seqz t2, t0
	sw t2, 1596(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 1600(sp)
	lw t0, 20(sp)
	lw t2, 0(t0)
	sw t2, 1604(sp)
	lw t0, 1600(sp)
	lw t1, 1604(sp)
	xor t2, t0, t1
	sw t2, 1608(sp)
	lw t0, 1608(sp)
	seqz t2, t0
	sw t2, 1612(sp)
	lw t0, 1596(sp)
	lw t1, 1612(sp)
	and t2, t0, t1
	sw t2, 1616(sp)
	lw t0, 1616(sp)
	bnez t0, .LBB29
	j .LBB30
.LBB29: 
	lw t0, 28(sp)
	lw t2, 0(t0)
	sw t2, 1620(sp)
	li t2, 1
	sw t2, 1624(sp)
	lw t0, 1624(sp)
	lw t1, 28(sp)
	sw t0, 0(t1)
	j .LBB30
.LBB30: 
	j .LBB31
.LBB31: 
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 1628(sp)
	lw t0, 120(sp)
	lw t2, 0(t0)
	sw t2, 1632(sp)
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 1636(sp)
	li t2, 4
	sw t2, 1644(sp)
	lw t0, 1636(sp)
	lw t1, 1644(sp)
	mul t2, t0, t1
	sw t2, 1640(sp)
	lw t0, 1632(sp)
	lw t1, 1640(sp)
	add t2, t0, t1
	sw t2, 1648(sp)
	lw t0, 1648(sp)
	lw t2, 0(t0)
	sw t2, 1652(sp)
	lw t0, 1652(sp)
	addi t2, t0, 1
	sw t2, 1656(sp)
	lw t0, 1656(sp)
	lw t1, 36(sp)
	sw t0, 0(t1)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 1660(sp)
	lw t0, 220(sp)
	lw t2, 0(t0)
	sw t2, 1664(sp)
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 1668(sp)
	li t2, 4
	sw t2, 1676(sp)
	lw t0, 1668(sp)
	lw t1, 1676(sp)
	mul t2, t0, t1
	sw t2, 1672(sp)
	lw t0, 1664(sp)
	lw t1, 1672(sp)
	add t2, t0, t1
	sw t2, 1680(sp)
	lw t0, 1680(sp)
	lw t2, 0(t0)
	sw t2, 1684(sp)
	lw t0, 1684(sp)
	addi t2, t0, 2
	sw t2, 1688(sp)
	lw t0, 1688(sp)
	lw t1, 40(sp)
	sw t0, 0(t1)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 1692(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 1696(sp)
	lw t0, 1692(sp)
	mv a0, t0
	lw t0, 1696(sp)
	mv a1, t0
	call check
	mv t2, a0
	sw t2, 1700(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 1704(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 1708(sp)
	lw t0, 1704(sp)
	mv a0, t0
	lw t0, 1708(sp)
	mv a1, t0
	call check
	mv t2, a0
	sw t2, 1712(sp)
	lw t0, 1700(sp)
	lw t1, 1712(sp)
	and t2, t0, t1
	sw t2, 1716(sp)
	lw t0, 320(sp)
	lw t2, 0(t0)
	sw t2, 1720(sp)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 1724(sp)
	li t2, 4
	sw t2, 1732(sp)
	lw t0, 1724(sp)
	lw t1, 1732(sp)
	mul t2, t0, t1
	sw t2, 1728(sp)
	lw t0, 1720(sp)
	lw t1, 1728(sp)
	add t2, t0, t1
	sw t2, 1736(sp)
	lw t0, 1736(sp)
	lw t2, 0(t0)
	sw t2, 1740(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 1744(sp)
	li t2, 4
	sw t2, 1752(sp)
	lw t0, 1744(sp)
	lw t1, 1752(sp)
	mul t2, t0, t1
	sw t2, 1748(sp)
	lw t0, 1736(sp)
	lw t1, 1748(sp)
	add t2, t0, t1
	sw t2, 1756(sp)
	lw t0, 1756(sp)
	lw t2, 0(t0)
	sw t2, 1760(sp)
	addi t2, zero, -1
	sw t2, 1764(sp)
	lw t0, 1760(sp)
	lw t1, 1764(sp)
	xor t2, t0, t1
	sw t2, 1768(sp)
	lw t0, 1768(sp)
	seqz t2, t0
	sw t2, 1772(sp)
	lw t0, 1716(sp)
	lw t1, 1772(sp)
	and t2, t0, t1
	sw t2, 1776(sp)
	lw t0, 1776(sp)
	bnez t0, .LBB32
	j .LBB35
.LBB32: 
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 1780(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 1784(sp)
	lw t0, 1784(sp)
	addi t2, t0, 1
	sw t2, 1788(sp)
	lw t0, 1788(sp)
	lw t1, 24(sp)
	sw t0, 0(t1)
	lw t0, 120(sp)
	lw t2, 0(t0)
	sw t2, 1792(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 1796(sp)
	li t2, 4
	sw t2, 1804(sp)
	lw t0, 1796(sp)
	lw t1, 1804(sp)
	mul t2, t0, t1
	sw t2, 1800(sp)
	lw t0, 1792(sp)
	lw t1, 1800(sp)
	add t2, t0, t1
	sw t2, 1808(sp)
	lw t0, 1808(sp)
	lw t2, 0(t0)
	sw t2, 1812(sp)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 1816(sp)
	lw t0, 1816(sp)
	lw t1, 1808(sp)
	sw t0, 0(t1)
	lw t0, 220(sp)
	lw t2, 0(t0)
	sw t2, 1820(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 1824(sp)
	li t2, 4
	sw t2, 1832(sp)
	lw t0, 1824(sp)
	lw t1, 1832(sp)
	mul t2, t0, t1
	sw t2, 1828(sp)
	lw t0, 1820(sp)
	lw t1, 1828(sp)
	add t2, t0, t1
	sw t2, 1836(sp)
	lw t0, 1836(sp)
	lw t2, 0(t0)
	sw t2, 1840(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 1844(sp)
	lw t0, 1844(sp)
	lw t1, 1836(sp)
	sw t0, 0(t1)
	lw t0, 320(sp)
	lw t2, 0(t0)
	sw t2, 1848(sp)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 1852(sp)
	li t2, 4
	sw t2, 1860(sp)
	lw t0, 1852(sp)
	lw t1, 1860(sp)
	mul t2, t0, t1
	sw t2, 1856(sp)
	lw t0, 1848(sp)
	lw t1, 1856(sp)
	add t2, t0, t1
	sw t2, 1864(sp)
	lw t0, 1864(sp)
	lw t2, 0(t0)
	sw t2, 1868(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 1872(sp)
	li t2, 4
	sw t2, 1880(sp)
	lw t0, 1872(sp)
	lw t1, 1880(sp)
	mul t2, t0, t1
	sw t2, 1876(sp)
	lw t0, 1864(sp)
	lw t1, 1876(sp)
	add t2, t0, t1
	sw t2, 1884(sp)
	lw t0, 1884(sp)
	lw t2, 0(t0)
	sw t2, 1888(sp)
	lw t0, 32(sp)
	lw t2, 0(t0)
	sw t2, 1892(sp)
	lw t0, 1892(sp)
	addi t2, t0, 1
	sw t2, 1896(sp)
	lw t0, 1896(sp)
	lw t1, 1884(sp)
	sw t0, 0(t1)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 1900(sp)
	lw t0, 16(sp)
	lw t2, 0(t0)
	sw t2, 1904(sp)
	lw t0, 1900(sp)
	lw t1, 1904(sp)
	xor t2, t0, t1
	sw t2, 1908(sp)
	lw t0, 1908(sp)
	seqz t2, t0
	sw t2, 1912(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 1916(sp)
	lw t0, 20(sp)
	lw t2, 0(t0)
	sw t2, 1920(sp)
	lw t0, 1916(sp)
	lw t1, 1920(sp)
	xor t2, t0, t1
	sw t2, 1924(sp)
	lw t0, 1924(sp)
	seqz t2, t0
	sw t2, 1928(sp)
	lw t0, 1912(sp)
	lw t1, 1928(sp)
	and t2, t0, t1
	sw t2, 1932(sp)
	lw t0, 1932(sp)
	bnez t0, .LBB33
	j .LBB34
.LBB33: 
	lw t0, 28(sp)
	lw t2, 0(t0)
	sw t2, 1936(sp)
	li t2, 1
	sw t2, 1940(sp)
	lw t0, 1940(sp)
	lw t1, 28(sp)
	sw t0, 0(t1)
	j .LBB34
.LBB34: 
	j .LBB35
.LBB35: 
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 1944(sp)
	lw t0, 120(sp)
	lw t2, 0(t0)
	sw t2, 1948(sp)
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 1952(sp)
	li t2, 4
	sw t2, 1960(sp)
	lw t0, 1952(sp)
	lw t1, 1960(sp)
	mul t2, t0, t1
	sw t2, 1956(sp)
	lw t0, 1948(sp)
	lw t1, 1956(sp)
	add t2, t0, t1
	sw t2, 1964(sp)
	lw t0, 1964(sp)
	lw t2, 0(t0)
	sw t2, 1968(sp)
	lw t0, 1968(sp)
	addi t2, t0, -2
	sw t2, 1972(sp)
	lw t0, 1972(sp)
	lw t1, 36(sp)
	sw t0, 0(t1)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 1976(sp)
	lw t0, 220(sp)
	lw t2, 0(t0)
	sw t2, 1980(sp)
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 1984(sp)
	li t2, 4
	sw t2, 1992(sp)
	lw t0, 1984(sp)
	lw t1, 1992(sp)
	mul t2, t0, t1
	sw t2, 1988(sp)
	lw t0, 1980(sp)
	lw t1, 1988(sp)
	add t2, t0, t1
	sw t2, 1996(sp)
	lw t0, 1996(sp)
	lw t2, 0(t0)
	sw t2, 2000(sp)
	lw t0, 2000(sp)
	addi t2, t0, -1
	sw t2, 2004(sp)
	lw t0, 2004(sp)
	lw t1, 40(sp)
	sw t0, 0(t1)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 2008(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 2012(sp)
	lw t0, 2008(sp)
	mv a0, t0
	lw t0, 2012(sp)
	mv a1, t0
	call check
	mv t2, a0
	sw t2, 2016(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 2020(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 2024(sp)
	lw t0, 2020(sp)
	mv a0, t0
	lw t0, 2024(sp)
	mv a1, t0
	call check
	mv t2, a0
	sw t2, 2028(sp)
	lw t0, 2016(sp)
	lw t1, 2028(sp)
	and t2, t0, t1
	sw t2, 2032(sp)
	lw t0, 320(sp)
	lw t2, 0(t0)
	sw t2, 2036(sp)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 2040(sp)
	li t2, 4
	sw t2, 2048(sp)
	lw t0, 2040(sp)
	lw t1, 2048(sp)
	mul t2, t0, t1
	sw t2, 2044(sp)
	lw t0, 2036(sp)
	lw t1, 2044(sp)
	add t2, t0, t1
	sw t2, 2052(sp)
	lw t0, 2052(sp)
	lw t2, 0(t0)
	sw t2, 2056(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 2060(sp)
	li t2, 4
	sw t2, 2068(sp)
	lw t0, 2060(sp)
	lw t1, 2068(sp)
	mul t2, t0, t1
	sw t2, 2064(sp)
	lw t0, 2052(sp)
	lw t1, 2064(sp)
	add t2, t0, t1
	sw t2, 2072(sp)
	lw t0, 2072(sp)
	lw t2, 0(t0)
	sw t2, 2076(sp)
	addi t2, zero, -1
	sw t2, 2080(sp)
	lw t0, 2076(sp)
	lw t1, 2080(sp)
	xor t2, t0, t1
	sw t2, 2084(sp)
	lw t0, 2084(sp)
	seqz t2, t0
	sw t2, 2088(sp)
	lw t0, 2032(sp)
	lw t1, 2088(sp)
	and t2, t0, t1
	sw t2, 2092(sp)
	lw t0, 2092(sp)
	bnez t0, .LBB36
	j .LBB39
.LBB36: 
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 2096(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 2100(sp)
	lw t0, 2100(sp)
	addi t2, t0, 1
	sw t2, 2104(sp)
	lw t0, 2104(sp)
	lw t1, 24(sp)
	sw t0, 0(t1)
	lw t0, 120(sp)
	lw t2, 0(t0)
	sw t2, 2108(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 2112(sp)
	li t2, 4
	sw t2, 2120(sp)
	lw t0, 2112(sp)
	lw t1, 2120(sp)
	mul t2, t0, t1
	sw t2, 2116(sp)
	lw t0, 2108(sp)
	lw t1, 2116(sp)
	add t2, t0, t1
	sw t2, 2124(sp)
	lw t0, 2124(sp)
	lw t2, 0(t0)
	sw t2, 2128(sp)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 2132(sp)
	lw t0, 2132(sp)
	lw t1, 2124(sp)
	sw t0, 0(t1)
	lw t0, 220(sp)
	lw t2, 0(t0)
	sw t2, 2136(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 2140(sp)
	li t2, 4
	sw t2, 2148(sp)
	lw t0, 2140(sp)
	lw t1, 2148(sp)
	mul t2, t0, t1
	sw t2, 2144(sp)
	lw t0, 2136(sp)
	lw t1, 2144(sp)
	add t2, t0, t1
	sw t2, 2152(sp)
	lw t0, 2152(sp)
	lw t2, 0(t0)
	sw t2, 2156(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 2160(sp)
	lw t0, 2160(sp)
	lw t1, 2152(sp)
	sw t0, 0(t1)
	lw t0, 320(sp)
	lw t2, 0(t0)
	sw t2, 2164(sp)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 2168(sp)
	li t2, 4
	sw t2, 2176(sp)
	lw t0, 2168(sp)
	lw t1, 2176(sp)
	mul t2, t0, t1
	sw t2, 2172(sp)
	lw t0, 2164(sp)
	lw t1, 2172(sp)
	add t2, t0, t1
	sw t2, 2180(sp)
	lw t0, 2180(sp)
	lw t2, 0(t0)
	sw t2, 2184(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 2188(sp)
	li t2, 4
	sw t2, 2196(sp)
	lw t0, 2188(sp)
	lw t1, 2196(sp)
	mul t2, t0, t1
	sw t2, 2192(sp)
	lw t0, 2180(sp)
	lw t1, 2192(sp)
	add t2, t0, t1
	sw t2, 2200(sp)
	lw t0, 2200(sp)
	lw t2, 0(t0)
	sw t2, 2204(sp)
	lw t0, 32(sp)
	lw t2, 0(t0)
	sw t2, 2208(sp)
	lw t0, 2208(sp)
	addi t2, t0, 1
	sw t2, 2212(sp)
	lw t0, 2212(sp)
	lw t1, 2200(sp)
	sw t0, 0(t1)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 2216(sp)
	lw t0, 16(sp)
	lw t2, 0(t0)
	sw t2, 2220(sp)
	lw t0, 2216(sp)
	lw t1, 2220(sp)
	xor t2, t0, t1
	sw t2, 2224(sp)
	lw t0, 2224(sp)
	seqz t2, t0
	sw t2, 2228(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 2232(sp)
	lw t0, 20(sp)
	lw t2, 0(t0)
	sw t2, 2236(sp)
	lw t0, 2232(sp)
	lw t1, 2236(sp)
	xor t2, t0, t1
	sw t2, 2240(sp)
	lw t0, 2240(sp)
	seqz t2, t0
	sw t2, 2244(sp)
	lw t0, 2228(sp)
	lw t1, 2244(sp)
	and t2, t0, t1
	sw t2, 2248(sp)
	lw t0, 2248(sp)
	bnez t0, .LBB37
	j .LBB38
.LBB37: 
	lw t0, 28(sp)
	lw t2, 0(t0)
	sw t2, 2252(sp)
	li t2, 1
	sw t2, 2256(sp)
	lw t0, 2256(sp)
	lw t1, 28(sp)
	sw t0, 0(t1)
	j .LBB38
.LBB38: 
	j .LBB39
.LBB39: 
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 2260(sp)
	lw t0, 120(sp)
	lw t2, 0(t0)
	sw t2, 2264(sp)
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 2268(sp)
	li t2, 4
	sw t2, 2276(sp)
	lw t0, 2268(sp)
	lw t1, 2276(sp)
	mul t2, t0, t1
	sw t2, 2272(sp)
	lw t0, 2264(sp)
	lw t1, 2272(sp)
	add t2, t0, t1
	sw t2, 2280(sp)
	lw t0, 2280(sp)
	lw t2, 0(t0)
	sw t2, 2284(sp)
	lw t0, 2284(sp)
	addi t2, t0, -2
	sw t2, 2288(sp)
	lw t0, 2288(sp)
	lw t1, 36(sp)
	sw t0, 0(t1)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 2292(sp)
	lw t0, 220(sp)
	lw t2, 0(t0)
	sw t2, 2296(sp)
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 2300(sp)
	li t2, 4
	sw t2, 2308(sp)
	lw t0, 2300(sp)
	lw t1, 2308(sp)
	mul t2, t0, t1
	sw t2, 2304(sp)
	lw t0, 2296(sp)
	lw t1, 2304(sp)
	add t2, t0, t1
	sw t2, 2312(sp)
	lw t0, 2312(sp)
	lw t2, 0(t0)
	sw t2, 2316(sp)
	lw t0, 2316(sp)
	addi t2, t0, 1
	sw t2, 2320(sp)
	lw t0, 2320(sp)
	lw t1, 40(sp)
	sw t0, 0(t1)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 2324(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 2328(sp)
	lw t0, 2324(sp)
	mv a0, t0
	lw t0, 2328(sp)
	mv a1, t0
	call check
	mv t2, a0
	sw t2, 2332(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 2336(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 2340(sp)
	lw t0, 2336(sp)
	mv a0, t0
	lw t0, 2340(sp)
	mv a1, t0
	call check
	mv t2, a0
	sw t2, 2344(sp)
	lw t0, 2332(sp)
	lw t1, 2344(sp)
	and t2, t0, t1
	sw t2, 2348(sp)
	lw t0, 320(sp)
	lw t2, 0(t0)
	sw t2, 2352(sp)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 2356(sp)
	li t2, 4
	sw t2, 2364(sp)
	lw t0, 2356(sp)
	lw t1, 2364(sp)
	mul t2, t0, t1
	sw t2, 2360(sp)
	lw t0, 2352(sp)
	lw t1, 2360(sp)
	add t2, t0, t1
	sw t2, 2368(sp)
	lw t0, 2368(sp)
	lw t2, 0(t0)
	sw t2, 2372(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 2376(sp)
	li t2, 4
	sw t2, 2384(sp)
	lw t0, 2376(sp)
	lw t1, 2384(sp)
	mul t2, t0, t1
	sw t2, 2380(sp)
	lw t0, 2368(sp)
	lw t1, 2380(sp)
	add t2, t0, t1
	sw t2, 2388(sp)
	lw t0, 2388(sp)
	lw t2, 0(t0)
	sw t2, 2392(sp)
	addi t2, zero, -1
	sw t2, 2396(sp)
	lw t0, 2392(sp)
	lw t1, 2396(sp)
	xor t2, t0, t1
	sw t2, 2400(sp)
	lw t0, 2400(sp)
	seqz t2, t0
	sw t2, 2404(sp)
	lw t0, 2348(sp)
	lw t1, 2404(sp)
	and t2, t0, t1
	sw t2, 2408(sp)
	lw t0, 2408(sp)
	bnez t0, .LBB40
	j .LBB43
.LBB40: 
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 2412(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 2416(sp)
	lw t0, 2416(sp)
	addi t2, t0, 1
	sw t2, 2420(sp)
	lw t0, 2420(sp)
	lw t1, 24(sp)
	sw t0, 0(t1)
	lw t0, 120(sp)
	lw t2, 0(t0)
	sw t2, 2424(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 2428(sp)
	li t2, 4
	sw t2, 2436(sp)
	lw t0, 2428(sp)
	lw t1, 2436(sp)
	mul t2, t0, t1
	sw t2, 2432(sp)
	lw t0, 2424(sp)
	lw t1, 2432(sp)
	add t2, t0, t1
	sw t2, 2440(sp)
	lw t0, 2440(sp)
	lw t2, 0(t0)
	sw t2, 2444(sp)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 2448(sp)
	lw t0, 2448(sp)
	lw t1, 2440(sp)
	sw t0, 0(t1)
	lw t0, 220(sp)
	lw t2, 0(t0)
	sw t2, 2452(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 2456(sp)
	li t2, 4
	sw t2, 2464(sp)
	lw t0, 2456(sp)
	lw t1, 2464(sp)
	mul t2, t0, t1
	sw t2, 2460(sp)
	lw t0, 2452(sp)
	lw t1, 2460(sp)
	add t2, t0, t1
	sw t2, 2468(sp)
	lw t0, 2468(sp)
	lw t2, 0(t0)
	sw t2, 2472(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 2476(sp)
	lw t0, 2476(sp)
	lw t1, 2468(sp)
	sw t0, 0(t1)
	lw t0, 320(sp)
	lw t2, 0(t0)
	sw t2, 2480(sp)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 2484(sp)
	li t2, 4
	sw t2, 2492(sp)
	lw t0, 2484(sp)
	lw t1, 2492(sp)
	mul t2, t0, t1
	sw t2, 2488(sp)
	lw t0, 2480(sp)
	lw t1, 2488(sp)
	add t2, t0, t1
	sw t2, 2496(sp)
	lw t0, 2496(sp)
	lw t2, 0(t0)
	sw t2, 2500(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 2504(sp)
	li t2, 4
	sw t2, 2512(sp)
	lw t0, 2504(sp)
	lw t1, 2512(sp)
	mul t2, t0, t1
	sw t2, 2508(sp)
	lw t0, 2496(sp)
	lw t1, 2508(sp)
	add t2, t0, t1
	sw t2, 2516(sp)
	lw t0, 2516(sp)
	lw t2, 0(t0)
	sw t2, 2520(sp)
	lw t0, 32(sp)
	lw t2, 0(t0)
	sw t2, 2524(sp)
	lw t0, 2524(sp)
	addi t2, t0, 1
	sw t2, 2528(sp)
	lw t0, 2528(sp)
	lw t1, 2516(sp)
	sw t0, 0(t1)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 2532(sp)
	lw t0, 16(sp)
	lw t2, 0(t0)
	sw t2, 2536(sp)
	lw t0, 2532(sp)
	lw t1, 2536(sp)
	xor t2, t0, t1
	sw t2, 2540(sp)
	lw t0, 2540(sp)
	seqz t2, t0
	sw t2, 2544(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 2548(sp)
	lw t0, 20(sp)
	lw t2, 0(t0)
	sw t2, 2552(sp)
	lw t0, 2548(sp)
	lw t1, 2552(sp)
	xor t2, t0, t1
	sw t2, 2556(sp)
	lw t0, 2556(sp)
	seqz t2, t0
	sw t2, 2560(sp)
	lw t0, 2544(sp)
	lw t1, 2560(sp)
	and t2, t0, t1
	sw t2, 2564(sp)
	lw t0, 2564(sp)
	bnez t0, .LBB41
	j .LBB42
.LBB41: 
	lw t0, 28(sp)
	lw t2, 0(t0)
	sw t2, 2568(sp)
	li t2, 1
	sw t2, 2572(sp)
	lw t0, 2572(sp)
	lw t1, 28(sp)
	sw t0, 0(t1)
	j .LBB42
.LBB42: 
	j .LBB43
.LBB43: 
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 2576(sp)
	lw t0, 120(sp)
	lw t2, 0(t0)
	sw t2, 2580(sp)
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 2584(sp)
	li t2, 4
	sw t2, 2592(sp)
	lw t0, 2584(sp)
	lw t1, 2592(sp)
	mul t2, t0, t1
	sw t2, 2588(sp)
	lw t0, 2580(sp)
	lw t1, 2588(sp)
	add t2, t0, t1
	sw t2, 2596(sp)
	lw t0, 2596(sp)
	lw t2, 0(t0)
	sw t2, 2600(sp)
	lw t0, 2600(sp)
	addi t2, t0, 2
	sw t2, 2604(sp)
	lw t0, 2604(sp)
	lw t1, 36(sp)
	sw t0, 0(t1)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 2608(sp)
	lw t0, 220(sp)
	lw t2, 0(t0)
	sw t2, 2612(sp)
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 2616(sp)
	li t2, 4
	sw t2, 2624(sp)
	lw t0, 2616(sp)
	lw t1, 2624(sp)
	mul t2, t0, t1
	sw t2, 2620(sp)
	lw t0, 2612(sp)
	lw t1, 2620(sp)
	add t2, t0, t1
	sw t2, 2628(sp)
	lw t0, 2628(sp)
	lw t2, 0(t0)
	sw t2, 2632(sp)
	lw t0, 2632(sp)
	addi t2, t0, -1
	sw t2, 2636(sp)
	lw t0, 2636(sp)
	lw t1, 40(sp)
	sw t0, 0(t1)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 2640(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 2644(sp)
	lw t0, 2640(sp)
	mv a0, t0
	lw t0, 2644(sp)
	mv a1, t0
	call check
	mv t2, a0
	sw t2, 2648(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 2652(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 2656(sp)
	lw t0, 2652(sp)
	mv a0, t0
	lw t0, 2656(sp)
	mv a1, t0
	call check
	mv t2, a0
	sw t2, 2660(sp)
	lw t0, 2648(sp)
	lw t1, 2660(sp)
	and t2, t0, t1
	sw t2, 2664(sp)
	lw t0, 320(sp)
	lw t2, 0(t0)
	sw t2, 2668(sp)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 2672(sp)
	li t2, 4
	sw t2, 2680(sp)
	lw t0, 2672(sp)
	lw t1, 2680(sp)
	mul t2, t0, t1
	sw t2, 2676(sp)
	lw t0, 2668(sp)
	lw t1, 2676(sp)
	add t2, t0, t1
	sw t2, 2684(sp)
	lw t0, 2684(sp)
	lw t2, 0(t0)
	sw t2, 2688(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 2692(sp)
	li t2, 4
	sw t2, 2700(sp)
	lw t0, 2692(sp)
	lw t1, 2700(sp)
	mul t2, t0, t1
	sw t2, 2696(sp)
	lw t0, 2684(sp)
	lw t1, 2696(sp)
	add t2, t0, t1
	sw t2, 2704(sp)
	lw t0, 2704(sp)
	lw t2, 0(t0)
	sw t2, 2708(sp)
	addi t2, zero, -1
	sw t2, 2712(sp)
	lw t0, 2708(sp)
	lw t1, 2712(sp)
	xor t2, t0, t1
	sw t2, 2716(sp)
	lw t0, 2716(sp)
	seqz t2, t0
	sw t2, 2720(sp)
	lw t0, 2664(sp)
	lw t1, 2720(sp)
	and t2, t0, t1
	sw t2, 2724(sp)
	lw t0, 2724(sp)
	bnez t0, .LBB44
	j .LBB47
.LBB44: 
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 2728(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 2732(sp)
	lw t0, 2732(sp)
	addi t2, t0, 1
	sw t2, 2736(sp)
	lw t0, 2736(sp)
	lw t1, 24(sp)
	sw t0, 0(t1)
	lw t0, 120(sp)
	lw t2, 0(t0)
	sw t2, 2740(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 2744(sp)
	li t2, 4
	sw t2, 2752(sp)
	lw t0, 2744(sp)
	lw t1, 2752(sp)
	mul t2, t0, t1
	sw t2, 2748(sp)
	lw t0, 2740(sp)
	lw t1, 2748(sp)
	add t2, t0, t1
	sw t2, 2756(sp)
	lw t0, 2756(sp)
	lw t2, 0(t0)
	sw t2, 2760(sp)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 2764(sp)
	lw t0, 2764(sp)
	lw t1, 2756(sp)
	sw t0, 0(t1)
	lw t0, 220(sp)
	lw t2, 0(t0)
	sw t2, 2768(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 2772(sp)
	li t2, 4
	sw t2, 2780(sp)
	lw t0, 2772(sp)
	lw t1, 2780(sp)
	mul t2, t0, t1
	sw t2, 2776(sp)
	lw t0, 2768(sp)
	lw t1, 2776(sp)
	add t2, t0, t1
	sw t2, 2784(sp)
	lw t0, 2784(sp)
	lw t2, 0(t0)
	sw t2, 2788(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 2792(sp)
	lw t0, 2792(sp)
	lw t1, 2784(sp)
	sw t0, 0(t1)
	lw t0, 320(sp)
	lw t2, 0(t0)
	sw t2, 2796(sp)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 2800(sp)
	li t2, 4
	sw t2, 2808(sp)
	lw t0, 2800(sp)
	lw t1, 2808(sp)
	mul t2, t0, t1
	sw t2, 2804(sp)
	lw t0, 2796(sp)
	lw t1, 2804(sp)
	add t2, t0, t1
	sw t2, 2812(sp)
	lw t0, 2812(sp)
	lw t2, 0(t0)
	sw t2, 2816(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 2820(sp)
	li t2, 4
	sw t2, 2828(sp)
	lw t0, 2820(sp)
	lw t1, 2828(sp)
	mul t2, t0, t1
	sw t2, 2824(sp)
	lw t0, 2812(sp)
	lw t1, 2824(sp)
	add t2, t0, t1
	sw t2, 2832(sp)
	lw t0, 2832(sp)
	lw t2, 0(t0)
	sw t2, 2836(sp)
	lw t0, 32(sp)
	lw t2, 0(t0)
	sw t2, 2840(sp)
	lw t0, 2840(sp)
	addi t2, t0, 1
	sw t2, 2844(sp)
	lw t0, 2844(sp)
	lw t1, 2832(sp)
	sw t0, 0(t1)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 2848(sp)
	lw t0, 16(sp)
	lw t2, 0(t0)
	sw t2, 2852(sp)
	lw t0, 2848(sp)
	lw t1, 2852(sp)
	xor t2, t0, t1
	sw t2, 2856(sp)
	lw t0, 2856(sp)
	seqz t2, t0
	sw t2, 2860(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 2864(sp)
	lw t0, 20(sp)
	lw t2, 0(t0)
	sw t2, 2868(sp)
	lw t0, 2864(sp)
	lw t1, 2868(sp)
	xor t2, t0, t1
	sw t2, 2872(sp)
	lw t0, 2872(sp)
	seqz t2, t0
	sw t2, 2876(sp)
	lw t0, 2860(sp)
	lw t1, 2876(sp)
	and t2, t0, t1
	sw t2, 2880(sp)
	lw t0, 2880(sp)
	bnez t0, .LBB45
	j .LBB46
.LBB45: 
	lw t0, 28(sp)
	lw t2, 0(t0)
	sw t2, 2884(sp)
	li t2, 1
	sw t2, 2888(sp)
	lw t0, 2888(sp)
	lw t1, 28(sp)
	sw t0, 0(t1)
	j .LBB46
.LBB46: 
	j .LBB47
.LBB47: 
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 2892(sp)
	lw t0, 120(sp)
	lw t2, 0(t0)
	sw t2, 2896(sp)
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 2900(sp)
	li t2, 4
	sw t2, 2908(sp)
	lw t0, 2900(sp)
	lw t1, 2908(sp)
	mul t2, t0, t1
	sw t2, 2904(sp)
	lw t0, 2896(sp)
	lw t1, 2904(sp)
	add t2, t0, t1
	sw t2, 2912(sp)
	lw t0, 2912(sp)
	lw t2, 0(t0)
	sw t2, 2916(sp)
	lw t0, 2916(sp)
	addi t2, t0, 2
	sw t2, 2920(sp)
	lw t0, 2920(sp)
	lw t1, 36(sp)
	sw t0, 0(t1)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 2924(sp)
	lw t0, 220(sp)
	lw t2, 0(t0)
	sw t2, 2928(sp)
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 2932(sp)
	li t2, 4
	sw t2, 2940(sp)
	lw t0, 2932(sp)
	lw t1, 2940(sp)
	mul t2, t0, t1
	sw t2, 2936(sp)
	lw t0, 2928(sp)
	lw t1, 2936(sp)
	add t2, t0, t1
	sw t2, 2944(sp)
	lw t0, 2944(sp)
	lw t2, 0(t0)
	sw t2, 2948(sp)
	lw t0, 2948(sp)
	addi t2, t0, 1
	sw t2, 2952(sp)
	lw t0, 2952(sp)
	lw t1, 40(sp)
	sw t0, 0(t1)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 2956(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 2960(sp)
	lw t0, 2956(sp)
	mv a0, t0
	lw t0, 2960(sp)
	mv a1, t0
	call check
	mv t2, a0
	sw t2, 2964(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 2968(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 2972(sp)
	lw t0, 2968(sp)
	mv a0, t0
	lw t0, 2972(sp)
	mv a1, t0
	call check
	mv t2, a0
	sw t2, 2976(sp)
	lw t0, 2964(sp)
	lw t1, 2976(sp)
	and t2, t0, t1
	sw t2, 2980(sp)
	lw t0, 320(sp)
	lw t2, 0(t0)
	sw t2, 2984(sp)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 2988(sp)
	li t2, 4
	sw t2, 2996(sp)
	lw t0, 2988(sp)
	lw t1, 2996(sp)
	mul t2, t0, t1
	sw t2, 2992(sp)
	lw t0, 2984(sp)
	lw t1, 2992(sp)
	add t2, t0, t1
	sw t2, 3000(sp)
	lw t0, 3000(sp)
	lw t2, 0(t0)
	sw t2, 3004(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 3008(sp)
	li t2, 4
	sw t2, 3016(sp)
	lw t0, 3008(sp)
	lw t1, 3016(sp)
	mul t2, t0, t1
	sw t2, 3012(sp)
	lw t0, 3000(sp)
	lw t1, 3012(sp)
	add t2, t0, t1
	sw t2, 3020(sp)
	lw t0, 3020(sp)
	lw t2, 0(t0)
	sw t2, 3024(sp)
	addi t2, zero, -1
	sw t2, 3028(sp)
	lw t0, 3024(sp)
	lw t1, 3028(sp)
	xor t2, t0, t1
	sw t2, 3032(sp)
	lw t0, 3032(sp)
	seqz t2, t0
	sw t2, 3036(sp)
	lw t0, 2980(sp)
	lw t1, 3036(sp)
	and t2, t0, t1
	sw t2, 3040(sp)
	lw t0, 3040(sp)
	bnez t0, .LBB48
	j .LBB51
.LBB48: 
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 3044(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 3048(sp)
	lw t0, 3048(sp)
	addi t2, t0, 1
	sw t2, 3052(sp)
	lw t0, 3052(sp)
	lw t1, 24(sp)
	sw t0, 0(t1)
	lw t0, 120(sp)
	lw t2, 0(t0)
	sw t2, 3056(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 3060(sp)
	li t2, 4
	sw t2, 3068(sp)
	lw t0, 3060(sp)
	lw t1, 3068(sp)
	mul t2, t0, t1
	sw t2, 3064(sp)
	lw t0, 3056(sp)
	lw t1, 3064(sp)
	add t2, t0, t1
	sw t2, 3072(sp)
	lw t0, 3072(sp)
	lw t2, 0(t0)
	sw t2, 3076(sp)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 3080(sp)
	lw t0, 3080(sp)
	lw t1, 3072(sp)
	sw t0, 0(t1)
	lw t0, 220(sp)
	lw t2, 0(t0)
	sw t2, 3084(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 3088(sp)
	li t2, 4
	sw t2, 3096(sp)
	lw t0, 3088(sp)
	lw t1, 3096(sp)
	mul t2, t0, t1
	sw t2, 3092(sp)
	lw t0, 3084(sp)
	lw t1, 3092(sp)
	add t2, t0, t1
	sw t2, 3100(sp)
	lw t0, 3100(sp)
	lw t2, 0(t0)
	sw t2, 3104(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 3108(sp)
	lw t0, 3108(sp)
	lw t1, 3100(sp)
	sw t0, 0(t1)
	lw t0, 320(sp)
	lw t2, 0(t0)
	sw t2, 3112(sp)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 3116(sp)
	li t2, 4
	sw t2, 3124(sp)
	lw t0, 3116(sp)
	lw t1, 3124(sp)
	mul t2, t0, t1
	sw t2, 3120(sp)
	lw t0, 3112(sp)
	lw t1, 3120(sp)
	add t2, t0, t1
	sw t2, 3128(sp)
	lw t0, 3128(sp)
	lw t2, 0(t0)
	sw t2, 3132(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 3136(sp)
	li t2, 4
	sw t2, 3144(sp)
	lw t0, 3136(sp)
	lw t1, 3144(sp)
	mul t2, t0, t1
	sw t2, 3140(sp)
	lw t0, 3128(sp)
	lw t1, 3140(sp)
	add t2, t0, t1
	sw t2, 3148(sp)
	lw t0, 3148(sp)
	lw t2, 0(t0)
	sw t2, 3152(sp)
	lw t0, 32(sp)
	lw t2, 0(t0)
	sw t2, 3156(sp)
	lw t0, 3156(sp)
	addi t2, t0, 1
	sw t2, 3160(sp)
	lw t0, 3160(sp)
	lw t1, 3148(sp)
	sw t0, 0(t1)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 3164(sp)
	lw t0, 16(sp)
	lw t2, 0(t0)
	sw t2, 3168(sp)
	lw t0, 3164(sp)
	lw t1, 3168(sp)
	xor t2, t0, t1
	sw t2, 3172(sp)
	lw t0, 3172(sp)
	seqz t2, t0
	sw t2, 3176(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 3180(sp)
	lw t0, 20(sp)
	lw t2, 0(t0)
	sw t2, 3184(sp)
	lw t0, 3180(sp)
	lw t1, 3184(sp)
	xor t2, t0, t1
	sw t2, 3188(sp)
	lw t0, 3188(sp)
	seqz t2, t0
	sw t2, 3192(sp)
	lw t0, 3176(sp)
	lw t1, 3192(sp)
	and t2, t0, t1
	sw t2, 3196(sp)
	lw t0, 3196(sp)
	bnez t0, .LBB49
	j .LBB50
.LBB49: 
	lw t0, 28(sp)
	lw t2, 0(t0)
	sw t2, 3200(sp)
	li t2, 1
	sw t2, 3204(sp)
	lw t0, 3204(sp)
	lw t1, 28(sp)
	sw t0, 0(t1)
	j .LBB50
.LBB50: 
	j .LBB51
.LBB51: 
	lw t0, 28(sp)
	lw t2, 0(t0)
	sw t2, 3208(sp)
	li t2, 1
	sw t2, 3212(sp)
	lw t0, 3208(sp)
	lw t1, 3212(sp)
	beq t0, t1, .LBB52
	j .LBB53
.LBB52: 
	j .LBB17
	j .LBB53
.LBB53: 
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 3216(sp)
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 3220(sp)
	lw t0, 3220(sp)
	addi t2, t0, 1
	sw t2, 3224(sp)
	lw t0, 3224(sp)
	lw t1, 4(sp)
	sw t0, 0(t1)
	j .LBB14

	.globl	check
	.p2align	2
check:
.LBB54: 
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
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 20(sp)
	lw t0, 20(sp)
	slti t2, t0, 0
	sw t2, 24(sp)
	lw t0, 24(sp)
	xori t2, t0, 1
	sw t2, 24(sp)
	lw t0, 16(sp)
	lw t1, 24(sp)
	and t2, t0, t1
	sw t2, 28(sp)
	lw t0, 28(sp)
	mv a0, t0
	addi sp, sp, 44
	ret


	.section	.data
.str.0:
	.asciz	"no solution!\n"

