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
	addi sp, sp, -3328
	sw ra, 3324(sp)
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
	li a0, 4
	call malloc
	mv t2, a0
	sw t2, 52(sp)
	li a0, 4
	call malloc
	mv t2, a0
	sw t2, 56(sp)
	li a0, 4
	call malloc
	mv t2, a0
	sw t2, 60(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 64(sp)
	call getInt
	mv t2, a0
	sw t2, 68(sp)
	lw t0, 68(sp)
	lw t1, 0(sp)
	sw t0, 0(t1)
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 72(sp)
	lw t1, 4(sp)
	sw zero, 0(t1)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 76(sp)
	lw t1, 24(sp)
	sw zero, 0(t1)
	lw t0, 8(sp)
	lw t2, 0(t0)
	sw t2, 80(sp)
	lw t1, 8(sp)
	sw zero, 0(t1)
	lw t0, 12(sp)
	lw t2, 0(t0)
	sw t2, 84(sp)
	lw t1, 12(sp)
	sw zero, 0(t1)
	lw t0, 16(sp)
	lw t2, 0(t0)
	sw t2, 88(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 92(sp)
	lw t0, 92(sp)
	addi t2, t0, -1
	sw t2, 96(sp)
	lw t0, 96(sp)
	lw t1, 16(sp)
	sw t0, 0(t1)
	lw t0, 20(sp)
	lw t2, 0(t0)
	sw t2, 100(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 104(sp)
	lw t0, 104(sp)
	addi t2, t0, -1
	sw t2, 108(sp)
	lw t0, 108(sp)
	lw t1, 20(sp)
	sw t0, 0(t1)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 112(sp)
	lw t1, 36(sp)
	sw zero, 0(t1)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 116(sp)
	lw t1, 40(sp)
	sw zero, 0(t1)
	lw t0, 32(sp)
	lw t2, 0(t0)
	sw t2, 120(sp)
	lw t1, 32(sp)
	sw zero, 0(t1)
	lw t0, 28(sp)
	lw t2, 0(t0)
	sw t2, 124(sp)
	lw t1, 28(sp)
	sw zero, 0(t1)
	lw t0, 44(sp)
	lw t2, 0(t0)
	sw t2, 128(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 132(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 136(sp)
	lw t0, 132(sp)
	lw t1, 136(sp)
	mul t2, t0, t1
	sw t2, 140(sp)
	li t2, 4
	sw t2, 148(sp)
	lw t0, 140(sp)
	lw t1, 148(sp)
	mul t2, t0, t1
	sw t2, 144(sp)
	lw t0, 144(sp)
	addi t2, t0, 4
	sw t2, 152(sp)
	lw t0, 152(sp)
	mv a0, t0
	call malloc
	mv t2, a0
	sw t2, 156(sp)
	lw t0, 156(sp)
	mv t2, t0
	sw t2, 160(sp)
	lw t0, 140(sp)
	lw t1, 160(sp)
	sw t0, 0(t1)
	lw t0, 160(sp)
	addi t2, t0, 4
	sw t2, 164(sp)
	lw t0, 164(sp)
	mv t2, t0
	sw t2, 168(sp)
	li t2, 4
	sw t2, 172(sp)
	lw t0, 172(sp)
	mv a0, t0
	call malloc
	mv t2, a0
	sw t2, 176(sp)
	lw t0, 176(sp)
	mv t2, t0
	sw t2, 180(sp)
	lw t0, 168(sp)
	lw t1, 180(sp)
	sw t0, 0(t1)
	lw t0, 168(sp)
	lw t1, 44(sp)
	sw t0, 0(t1)
	lw t0, 56(sp)
	lw t2, 0(t0)
	sw t2, 184(sp)
	lw t1, 56(sp)
	sw zero, 0(t1)
	j .LBB2
.LBB2: 
	lw t0, 56(sp)
	lw t2, 0(t0)
	sw t2, 188(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 192(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 196(sp)
	lw t0, 192(sp)
	lw t1, 196(sp)
	mul t2, t0, t1
	sw t2, 200(sp)
	lw t0, 188(sp)
	lw t1, 200(sp)
	blt t0, t1, .LBB3
	j .LBB4
.LBB3: 
	lw t0, 44(sp)
	lw t2, 0(t0)
	sw t2, 204(sp)
	lw t0, 56(sp)
	lw t2, 0(t0)
	sw t2, 208(sp)
	li t2, 4
	sw t2, 216(sp)
	lw t0, 208(sp)
	lw t1, 216(sp)
	mul t2, t0, t1
	sw t2, 212(sp)
	lw t0, 204(sp)
	lw t1, 212(sp)
	add t2, t0, t1
	sw t2, 220(sp)
	lw t0, 220(sp)
	lw t2, 0(t0)
	sw t2, 224(sp)
	lw t1, 220(sp)
	sw zero, 0(t1)
	lw t0, 56(sp)
	lw t2, 0(t0)
	sw t2, 228(sp)
	lw t0, 228(sp)
	addi t2, t0, 1
	sw t2, 232(sp)
	lw t0, 232(sp)
	lw t1, 56(sp)
	sw t0, 0(t1)
	j .LBB2
.LBB4: 
	lw t0, 48(sp)
	lw t2, 0(t0)
	sw t2, 236(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 240(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 244(sp)
	lw t0, 240(sp)
	lw t1, 244(sp)
	mul t2, t0, t1
	sw t2, 248(sp)
	li t2, 4
	sw t2, 256(sp)
	lw t0, 248(sp)
	lw t1, 256(sp)
	mul t2, t0, t1
	sw t2, 252(sp)
	lw t0, 252(sp)
	addi t2, t0, 4
	sw t2, 260(sp)
	lw t0, 260(sp)
	mv a0, t0
	call malloc
	mv t2, a0
	sw t2, 264(sp)
	lw t0, 264(sp)
	mv t2, t0
	sw t2, 268(sp)
	lw t0, 248(sp)
	lw t1, 268(sp)
	sw t0, 0(t1)
	lw t0, 268(sp)
	addi t2, t0, 4
	sw t2, 272(sp)
	lw t0, 272(sp)
	mv t2, t0
	sw t2, 276(sp)
	li t2, 4
	sw t2, 280(sp)
	lw t0, 280(sp)
	mv a0, t0
	call malloc
	mv t2, a0
	sw t2, 284(sp)
	lw t0, 284(sp)
	mv t2, t0
	sw t2, 288(sp)
	lw t0, 276(sp)
	lw t1, 288(sp)
	sw t0, 0(t1)
	lw t0, 276(sp)
	lw t1, 48(sp)
	sw t0, 0(t1)
	lw t0, 56(sp)
	lw t2, 0(t0)
	sw t2, 292(sp)
	lw t1, 56(sp)
	sw zero, 0(t1)
	j .LBB5
.LBB5: 
	lw t0, 56(sp)
	lw t2, 0(t0)
	sw t2, 296(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 300(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 304(sp)
	lw t0, 300(sp)
	lw t1, 304(sp)
	mul t2, t0, t1
	sw t2, 308(sp)
	lw t0, 296(sp)
	lw t1, 308(sp)
	blt t0, t1, .LBB6
	j .LBB7
.LBB6: 
	lw t0, 48(sp)
	lw t2, 0(t0)
	sw t2, 312(sp)
	lw t0, 56(sp)
	lw t2, 0(t0)
	sw t2, 316(sp)
	li t2, 4
	sw t2, 324(sp)
	lw t0, 316(sp)
	lw t1, 324(sp)
	mul t2, t0, t1
	sw t2, 320(sp)
	lw t0, 312(sp)
	lw t1, 320(sp)
	add t2, t0, t1
	sw t2, 328(sp)
	lw t0, 328(sp)
	lw t2, 0(t0)
	sw t2, 332(sp)
	lw t1, 328(sp)
	sw zero, 0(t1)
	lw t0, 56(sp)
	lw t2, 0(t0)
	sw t2, 336(sp)
	lw t0, 336(sp)
	addi t2, t0, 1
	sw t2, 340(sp)
	lw t0, 340(sp)
	lw t1, 56(sp)
	sw t0, 0(t1)
	j .LBB5
.LBB7: 
	lw t0, 52(sp)
	lw t2, 0(t0)
	sw t2, 344(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 348(sp)
	li t2, 4
	sw t2, 356(sp)
	lw t0, 348(sp)
	lw t1, 356(sp)
	mul t2, t0, t1
	sw t2, 352(sp)
	lw t0, 352(sp)
	addi t2, t0, 4
	sw t2, 360(sp)
	lw t0, 360(sp)
	mv a0, t0
	call malloc
	mv t2, a0
	sw t2, 364(sp)
	lw t0, 364(sp)
	mv t2, t0
	sw t2, 368(sp)
	lw t0, 348(sp)
	lw t1, 368(sp)
	sw t0, 0(t1)
	lw t0, 368(sp)
	addi t2, t0, 4
	sw t2, 372(sp)
	lw t0, 372(sp)
	mv t2, t0
	sw t2, 376(sp)
	li t2, 4
	sw t2, 380(sp)
	lw t0, 380(sp)
	mv a0, t0
	call malloc
	mv t2, a0
	sw t2, 384(sp)
	lw t0, 384(sp)
	mv t2, t0
	sw t2, 388(sp)
	lw t0, 376(sp)
	lw t1, 388(sp)
	sw t0, 0(t1)
	lw t0, 376(sp)
	lw t1, 52(sp)
	sw t0, 0(t1)
	lw t0, 56(sp)
	lw t2, 0(t0)
	sw t2, 392(sp)
	lw t1, 56(sp)
	sw zero, 0(t1)
	j .LBB8
.LBB8: 
	lw t0, 56(sp)
	lw t2, 0(t0)
	sw t2, 396(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 400(sp)
	lw t0, 396(sp)
	lw t1, 400(sp)
	blt t0, t1, .LBB9
	j .LBB13
.LBB9: 
	lw t0, 52(sp)
	lw t2, 0(t0)
	sw t2, 404(sp)
	lw t0, 56(sp)
	lw t2, 0(t0)
	sw t2, 408(sp)
	li t2, 4
	sw t2, 416(sp)
	lw t0, 408(sp)
	lw t1, 416(sp)
	mul t2, t0, t1
	sw t2, 412(sp)
	lw t0, 404(sp)
	lw t1, 412(sp)
	add t2, t0, t1
	sw t2, 420(sp)
	lw t0, 420(sp)
	lw t2, 0(t0)
	sw t2, 424(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 428(sp)
	li t2, 4
	sw t2, 436(sp)
	lw t0, 428(sp)
	lw t1, 436(sp)
	mul t2, t0, t1
	sw t2, 432(sp)
	lw t0, 432(sp)
	addi t2, t0, 4
	sw t2, 440(sp)
	lw t0, 440(sp)
	mv a0, t0
	call malloc
	mv t2, a0
	sw t2, 444(sp)
	lw t0, 444(sp)
	mv t2, t0
	sw t2, 448(sp)
	lw t0, 428(sp)
	lw t1, 448(sp)
	sw t0, 0(t1)
	lw t0, 448(sp)
	addi t2, t0, 4
	sw t2, 452(sp)
	lw t0, 452(sp)
	mv t2, t0
	sw t2, 456(sp)
	li t2, 4
	sw t2, 460(sp)
	lw t0, 460(sp)
	mv a0, t0
	call malloc
	mv t2, a0
	sw t2, 464(sp)
	lw t0, 464(sp)
	mv t2, t0
	sw t2, 468(sp)
	lw t0, 456(sp)
	lw t1, 468(sp)
	sw t0, 0(t1)
	lw t0, 456(sp)
	lw t1, 420(sp)
	sw t0, 0(t1)
	lw t0, 60(sp)
	lw t2, 0(t0)
	sw t2, 472(sp)
	lw t1, 60(sp)
	sw zero, 0(t1)
	j .LBB10
.LBB10: 
	lw t0, 60(sp)
	lw t2, 0(t0)
	sw t2, 476(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 480(sp)
	lw t0, 476(sp)
	lw t1, 480(sp)
	blt t0, t1, .LBB11
	j .LBB12
.LBB11: 
	lw t0, 52(sp)
	lw t2, 0(t0)
	sw t2, 484(sp)
	lw t0, 56(sp)
	lw t2, 0(t0)
	sw t2, 488(sp)
	li t2, 4
	sw t2, 496(sp)
	lw t0, 488(sp)
	lw t1, 496(sp)
	mul t2, t0, t1
	sw t2, 492(sp)
	lw t0, 484(sp)
	lw t1, 492(sp)
	add t2, t0, t1
	sw t2, 500(sp)
	lw t0, 500(sp)
	lw t2, 0(t0)
	sw t2, 504(sp)
	lw t0, 60(sp)
	lw t2, 0(t0)
	sw t2, 508(sp)
	li t2, 4
	sw t2, 516(sp)
	lw t0, 508(sp)
	lw t1, 516(sp)
	mul t2, t0, t1
	sw t2, 512(sp)
	lw t0, 504(sp)
	lw t1, 512(sp)
	add t2, t0, t1
	sw t2, 520(sp)
	lw t0, 520(sp)
	lw t2, 0(t0)
	sw t2, 524(sp)
	addi t2, zero, -1
	sw t2, 528(sp)
	lw t0, 528(sp)
	lw t1, 520(sp)
	sw t0, 0(t1)
	lw t0, 60(sp)
	lw t2, 0(t0)
	sw t2, 532(sp)
	lw t0, 532(sp)
	addi t2, t0, 1
	sw t2, 536(sp)
	lw t0, 536(sp)
	lw t1, 60(sp)
	sw t0, 0(t1)
	j .LBB10
.LBB12: 
	lw t0, 56(sp)
	lw t2, 0(t0)
	sw t2, 540(sp)
	lw t0, 540(sp)
	addi t2, t0, 1
	sw t2, 544(sp)
	lw t0, 544(sp)
	lw t1, 56(sp)
	sw t0, 0(t1)
	j .LBB8
.LBB13: 
	lw t0, 44(sp)
	lw t2, 0(t0)
	sw t2, 548(sp)
	lw t0, 548(sp)
	addi t2, t0, 0
	sw t2, 552(sp)
	lw t0, 552(sp)
	lw t2, 0(t0)
	sw t2, 556(sp)
	lw t0, 8(sp)
	lw t2, 0(t0)
	sw t2, 560(sp)
	lw t0, 560(sp)
	lw t1, 552(sp)
	sw t0, 0(t1)
	lw t0, 48(sp)
	lw t2, 0(t0)
	sw t2, 564(sp)
	lw t0, 564(sp)
	addi t2, t0, 0
	sw t2, 568(sp)
	lw t0, 568(sp)
	lw t2, 0(t0)
	sw t2, 572(sp)
	lw t0, 12(sp)
	lw t2, 0(t0)
	sw t2, 576(sp)
	lw t0, 576(sp)
	lw t1, 568(sp)
	sw t0, 0(t1)
	lw t0, 52(sp)
	lw t2, 0(t0)
	sw t2, 580(sp)
	lw t0, 8(sp)
	lw t2, 0(t0)
	sw t2, 584(sp)
	li t2, 4
	sw t2, 592(sp)
	lw t0, 584(sp)
	lw t1, 592(sp)
	mul t2, t0, t1
	sw t2, 588(sp)
	lw t0, 580(sp)
	lw t1, 588(sp)
	add t2, t0, t1
	sw t2, 596(sp)
	lw t0, 596(sp)
	lw t2, 0(t0)
	sw t2, 600(sp)
	lw t0, 12(sp)
	lw t2, 0(t0)
	sw t2, 604(sp)
	li t2, 4
	sw t2, 612(sp)
	lw t0, 604(sp)
	lw t1, 612(sp)
	mul t2, t0, t1
	sw t2, 608(sp)
	lw t0, 600(sp)
	lw t1, 608(sp)
	add t2, t0, t1
	sw t2, 616(sp)
	lw t0, 616(sp)
	lw t2, 0(t0)
	sw t2, 620(sp)
	lw t1, 616(sp)
	sw zero, 0(t1)
	j .LBB14
.LBB14: 
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 624(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 628(sp)
	lw t0, 628(sp)
	lw t1, 624(sp)
	bge t0, t1, .LBB15
	j .LBB16
.LBB15: 
	lw t0, 32(sp)
	lw t2, 0(t0)
	sw t2, 632(sp)
	lw t0, 52(sp)
	lw t2, 0(t0)
	sw t2, 636(sp)
	lw t0, 44(sp)
	lw t2, 0(t0)
	sw t2, 640(sp)
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 644(sp)
	li t2, 4
	sw t2, 652(sp)
	lw t0, 644(sp)
	lw t1, 652(sp)
	mul t2, t0, t1
	sw t2, 648(sp)
	lw t0, 640(sp)
	lw t1, 648(sp)
	add t2, t0, t1
	sw t2, 656(sp)
	lw t0, 656(sp)
	lw t2, 0(t0)
	sw t2, 660(sp)
	li t2, 4
	sw t2, 668(sp)
	lw t0, 660(sp)
	lw t1, 668(sp)
	mul t2, t0, t1
	sw t2, 664(sp)
	lw t0, 636(sp)
	lw t1, 664(sp)
	add t2, t0, t1
	sw t2, 672(sp)
	lw t0, 672(sp)
	lw t2, 0(t0)
	sw t2, 676(sp)
	lw t0, 48(sp)
	lw t2, 0(t0)
	sw t2, 680(sp)
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 684(sp)
	li t2, 4
	sw t2, 692(sp)
	lw t0, 684(sp)
	lw t1, 692(sp)
	mul t2, t0, t1
	sw t2, 688(sp)
	lw t0, 680(sp)
	lw t1, 688(sp)
	add t2, t0, t1
	sw t2, 696(sp)
	lw t0, 696(sp)
	lw t2, 0(t0)
	sw t2, 700(sp)
	li t2, 4
	sw t2, 708(sp)
	lw t0, 700(sp)
	lw t1, 708(sp)
	mul t2, t0, t1
	sw t2, 704(sp)
	lw t0, 676(sp)
	lw t1, 704(sp)
	add t2, t0, t1
	sw t2, 712(sp)
	lw t0, 712(sp)
	lw t2, 0(t0)
	sw t2, 716(sp)
	lw t0, 716(sp)
	lw t1, 32(sp)
	sw t0, 0(t1)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 720(sp)
	lw t0, 44(sp)
	lw t2, 0(t0)
	sw t2, 724(sp)
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 728(sp)
	li t2, 4
	sw t2, 736(sp)
	lw t0, 728(sp)
	lw t1, 736(sp)
	mul t2, t0, t1
	sw t2, 732(sp)
	lw t0, 724(sp)
	lw t1, 732(sp)
	add t2, t0, t1
	sw t2, 740(sp)
	lw t0, 740(sp)
	lw t2, 0(t0)
	sw t2, 744(sp)
	lw t0, 744(sp)
	addi t2, t0, -1
	sw t2, 748(sp)
	lw t0, 748(sp)
	lw t1, 36(sp)
	sw t0, 0(t1)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 752(sp)
	lw t0, 48(sp)
	lw t2, 0(t0)
	sw t2, 756(sp)
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 760(sp)
	li t2, 4
	sw t2, 768(sp)
	lw t0, 760(sp)
	lw t1, 768(sp)
	mul t2, t0, t1
	sw t2, 764(sp)
	lw t0, 756(sp)
	lw t1, 764(sp)
	add t2, t0, t1
	sw t2, 772(sp)
	lw t0, 772(sp)
	lw t2, 0(t0)
	sw t2, 776(sp)
	lw t0, 776(sp)
	addi t2, t0, -2
	sw t2, 780(sp)
	lw t0, 780(sp)
	lw t1, 40(sp)
	sw t0, 0(t1)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 784(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 788(sp)
	lw t0, 784(sp)
	mv a0, t0
	lw t0, 788(sp)
	mv a1, t0
	call check
	mv t2, a0
	sw t2, 792(sp)
	lw t0, 792(sp)
	mv t2, t0
	sw t2, 796(sp)
	lw t0, 792(sp)
	bnez t0, .LBB17
	j .LBB19
.LBB16: 
	lw t0, 28(sp)
	lw t2, 0(t0)
	sw t2, 800(sp)
	li t2, 1
	sw t2, 804(sp)
	lw t0, 800(sp)
	lw t1, 804(sp)
	beq t0, t1, .LBB18
	j .LBB20
.LBB17: 
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 808(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 812(sp)
	lw t0, 808(sp)
	mv a0, t0
	lw t0, 812(sp)
	mv a1, t0
	call check
	mv t2, a0
	sw t2, 816(sp)
	lw t0, 816(sp)
	mv t2, t0
	sw t2, 796(sp)
	j .LBB19
.LBB18: 
	lw t0, 52(sp)
	lw t2, 0(t0)
	sw t2, 3276(sp)
	lw t0, 16(sp)
	lw t2, 0(t0)
	sw t2, 3280(sp)
	li t2, 4
	sw t2, 3288(sp)
	lw t0, 3280(sp)
	lw t1, 3288(sp)
	mul t2, t0, t1
	sw t2, 3284(sp)
	lw t0, 3276(sp)
	lw t1, 3284(sp)
	add t2, t0, t1
	sw t2, 3292(sp)
	lw t0, 3292(sp)
	lw t2, 0(t0)
	sw t2, 3296(sp)
	lw t0, 20(sp)
	lw t2, 0(t0)
	sw t2, 3300(sp)
	li t2, 4
	sw t2, 3308(sp)
	lw t0, 3300(sp)
	lw t1, 3308(sp)
	mul t2, t0, t1
	sw t2, 3304(sp)
	lw t0, 3296(sp)
	lw t1, 3304(sp)
	add t2, t0, t1
	sw t2, 3312(sp)
	lw t0, 3312(sp)
	lw t2, 0(t0)
	sw t2, 3316(sp)
	lw t0, 3316(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 3320(sp)
	lw t0, 3320(sp)
	mv a0, t0
	call println
	j .LBB21
.LBB19: 
	lw t0, 796(sp)
	mv t2, t0
	sw t2, 820(sp)
	lw t0, 796(sp)
	bnez t0, .LBB22
	j .LBB23
.LBB20: 
	la t0, .str.0
	mv a0, t0
	call print
	j .LBB21
.LBB21: 
	mv a0, zero
	lw ra, 3324(sp)
	addi sp, sp, 3328
	ret
.LBB22: 
	lw t0, 52(sp)
	lw t2, 0(t0)
	sw t2, 824(sp)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 828(sp)
	li t2, 4
	sw t2, 836(sp)
	lw t0, 828(sp)
	lw t1, 836(sp)
	mul t2, t0, t1
	sw t2, 832(sp)
	lw t0, 824(sp)
	lw t1, 832(sp)
	add t2, t0, t1
	sw t2, 840(sp)
	lw t0, 840(sp)
	lw t2, 0(t0)
	sw t2, 844(sp)
	lw t0, 40(sp)
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
	addi t2, zero, -1
	sw t2, 868(sp)
	lw t0, 864(sp)
	lw t1, 868(sp)
	xor t2, t0, t1
	sw t2, 872(sp)
	lw t0, 872(sp)
	seqz t2, t0
	sw t2, 876(sp)
	lw t0, 876(sp)
	mv t2, t0
	sw t2, 820(sp)
	j .LBB23
.LBB23: 
	lw t0, 820(sp)
	bnez t0, .LBB24
	j .LBB29
.LBB24: 
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 880(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 884(sp)
	lw t0, 884(sp)
	addi t2, t0, 1
	sw t2, 888(sp)
	lw t0, 888(sp)
	lw t1, 24(sp)
	sw t0, 0(t1)
	lw t0, 44(sp)
	lw t2, 0(t0)
	sw t2, 892(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 896(sp)
	li t2, 4
	sw t2, 904(sp)
	lw t0, 896(sp)
	lw t1, 904(sp)
	mul t2, t0, t1
	sw t2, 900(sp)
	lw t0, 892(sp)
	lw t1, 900(sp)
	add t2, t0, t1
	sw t2, 908(sp)
	lw t0, 908(sp)
	lw t2, 0(t0)
	sw t2, 912(sp)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 916(sp)
	lw t0, 916(sp)
	lw t1, 908(sp)
	sw t0, 0(t1)
	lw t0, 48(sp)
	lw t2, 0(t0)
	sw t2, 920(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 924(sp)
	li t2, 4
	sw t2, 932(sp)
	lw t0, 924(sp)
	lw t1, 932(sp)
	mul t2, t0, t1
	sw t2, 928(sp)
	lw t0, 920(sp)
	lw t1, 928(sp)
	add t2, t0, t1
	sw t2, 936(sp)
	lw t0, 936(sp)
	lw t2, 0(t0)
	sw t2, 940(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 944(sp)
	lw t0, 944(sp)
	lw t1, 936(sp)
	sw t0, 0(t1)
	lw t0, 52(sp)
	lw t2, 0(t0)
	sw t2, 948(sp)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 952(sp)
	li t2, 4
	sw t2, 960(sp)
	lw t0, 952(sp)
	lw t1, 960(sp)
	mul t2, t0, t1
	sw t2, 956(sp)
	lw t0, 948(sp)
	lw t1, 956(sp)
	add t2, t0, t1
	sw t2, 964(sp)
	lw t0, 964(sp)
	lw t2, 0(t0)
	sw t2, 968(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 972(sp)
	li t2, 4
	sw t2, 980(sp)
	lw t0, 972(sp)
	lw t1, 980(sp)
	mul t2, t0, t1
	sw t2, 976(sp)
	lw t0, 968(sp)
	lw t1, 976(sp)
	add t2, t0, t1
	sw t2, 984(sp)
	lw t0, 984(sp)
	lw t2, 0(t0)
	sw t2, 988(sp)
	lw t0, 32(sp)
	lw t2, 0(t0)
	sw t2, 992(sp)
	lw t0, 992(sp)
	addi t2, t0, 1
	sw t2, 996(sp)
	lw t0, 996(sp)
	lw t1, 984(sp)
	sw t0, 0(t1)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 1000(sp)
	lw t0, 16(sp)
	lw t2, 0(t0)
	sw t2, 1004(sp)
	lw t0, 1000(sp)
	lw t1, 1004(sp)
	xor t2, t0, t1
	sw t2, 1008(sp)
	lw t0, 1008(sp)
	seqz t2, t0
	sw t2, 1012(sp)
	lw t0, 1012(sp)
	mv t2, t0
	sw t2, 1016(sp)
	lw t0, 1000(sp)
	lw t1, 1004(sp)
	beq t0, t1, .LBB25
	j .LBB26
.LBB25: 
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 1020(sp)
	lw t0, 20(sp)
	lw t2, 0(t0)
	sw t2, 1024(sp)
	lw t0, 1020(sp)
	lw t1, 1024(sp)
	xor t2, t0, t1
	sw t2, 1028(sp)
	lw t0, 1028(sp)
	seqz t2, t0
	sw t2, 1032(sp)
	lw t0, 1032(sp)
	mv t2, t0
	sw t2, 1016(sp)
	j .LBB26
.LBB26: 
	lw t0, 1016(sp)
	bnez t0, .LBB27
	j .LBB28
.LBB27: 
	lw t0, 28(sp)
	lw t2, 0(t0)
	sw t2, 1036(sp)
	li t2, 1
	sw t2, 1040(sp)
	lw t0, 1040(sp)
	lw t1, 28(sp)
	sw t0, 0(t1)
	j .LBB28
.LBB28: 
	j .LBB29
.LBB29: 
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 1044(sp)
	lw t0, 44(sp)
	lw t2, 0(t0)
	sw t2, 1048(sp)
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 1052(sp)
	li t2, 4
	sw t2, 1060(sp)
	lw t0, 1052(sp)
	lw t1, 1060(sp)
	mul t2, t0, t1
	sw t2, 1056(sp)
	lw t0, 1048(sp)
	lw t1, 1056(sp)
	add t2, t0, t1
	sw t2, 1064(sp)
	lw t0, 1064(sp)
	lw t2, 0(t0)
	sw t2, 1068(sp)
	lw t0, 1068(sp)
	addi t2, t0, -1
	sw t2, 1072(sp)
	lw t0, 1072(sp)
	lw t1, 36(sp)
	sw t0, 0(t1)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 1076(sp)
	lw t0, 48(sp)
	lw t2, 0(t0)
	sw t2, 1080(sp)
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 1084(sp)
	li t2, 4
	sw t2, 1092(sp)
	lw t0, 1084(sp)
	lw t1, 1092(sp)
	mul t2, t0, t1
	sw t2, 1088(sp)
	lw t0, 1080(sp)
	lw t1, 1088(sp)
	add t2, t0, t1
	sw t2, 1096(sp)
	lw t0, 1096(sp)
	lw t2, 0(t0)
	sw t2, 1100(sp)
	lw t0, 1100(sp)
	addi t2, t0, 2
	sw t2, 1104(sp)
	lw t0, 1104(sp)
	lw t1, 40(sp)
	sw t0, 0(t1)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 1108(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 1112(sp)
	lw t0, 1108(sp)
	mv a0, t0
	lw t0, 1112(sp)
	mv a1, t0
	call check
	mv t2, a0
	sw t2, 1116(sp)
	lw t0, 1116(sp)
	mv t2, t0
	sw t2, 1120(sp)
	lw t0, 1116(sp)
	bnez t0, .LBB30
	j .LBB31
.LBB30: 
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 1124(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 1128(sp)
	lw t0, 1124(sp)
	mv a0, t0
	lw t0, 1128(sp)
	mv a1, t0
	call check
	mv t2, a0
	sw t2, 1132(sp)
	lw t0, 1132(sp)
	mv t2, t0
	sw t2, 1120(sp)
	j .LBB31
.LBB31: 
	lw t0, 1120(sp)
	mv t2, t0
	sw t2, 1136(sp)
	lw t0, 1120(sp)
	bnez t0, .LBB32
	j .LBB33
.LBB32: 
	lw t0, 52(sp)
	lw t2, 0(t0)
	sw t2, 1140(sp)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 1144(sp)
	li t2, 4
	sw t2, 1152(sp)
	lw t0, 1144(sp)
	lw t1, 1152(sp)
	mul t2, t0, t1
	sw t2, 1148(sp)
	lw t0, 1140(sp)
	lw t1, 1148(sp)
	add t2, t0, t1
	sw t2, 1156(sp)
	lw t0, 1156(sp)
	lw t2, 0(t0)
	sw t2, 1160(sp)
	lw t0, 40(sp)
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
	addi t2, zero, -1
	sw t2, 1184(sp)
	lw t0, 1180(sp)
	lw t1, 1184(sp)
	xor t2, t0, t1
	sw t2, 1188(sp)
	lw t0, 1188(sp)
	seqz t2, t0
	sw t2, 1192(sp)
	lw t0, 1192(sp)
	mv t2, t0
	sw t2, 1136(sp)
	j .LBB33
.LBB33: 
	lw t0, 1136(sp)
	bnez t0, .LBB34
	j .LBB39
.LBB34: 
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 1196(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 1200(sp)
	lw t0, 1200(sp)
	addi t2, t0, 1
	sw t2, 1204(sp)
	lw t0, 1204(sp)
	lw t1, 24(sp)
	sw t0, 0(t1)
	lw t0, 44(sp)
	lw t2, 0(t0)
	sw t2, 1208(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 1212(sp)
	li t2, 4
	sw t2, 1220(sp)
	lw t0, 1212(sp)
	lw t1, 1220(sp)
	mul t2, t0, t1
	sw t2, 1216(sp)
	lw t0, 1208(sp)
	lw t1, 1216(sp)
	add t2, t0, t1
	sw t2, 1224(sp)
	lw t0, 1224(sp)
	lw t2, 0(t0)
	sw t2, 1228(sp)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 1232(sp)
	lw t0, 1232(sp)
	lw t1, 1224(sp)
	sw t0, 0(t1)
	lw t0, 48(sp)
	lw t2, 0(t0)
	sw t2, 1236(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 1240(sp)
	li t2, 4
	sw t2, 1248(sp)
	lw t0, 1240(sp)
	lw t1, 1248(sp)
	mul t2, t0, t1
	sw t2, 1244(sp)
	lw t0, 1236(sp)
	lw t1, 1244(sp)
	add t2, t0, t1
	sw t2, 1252(sp)
	lw t0, 1252(sp)
	lw t2, 0(t0)
	sw t2, 1256(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 1260(sp)
	lw t0, 1260(sp)
	lw t1, 1252(sp)
	sw t0, 0(t1)
	lw t0, 52(sp)
	lw t2, 0(t0)
	sw t2, 1264(sp)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 1268(sp)
	li t2, 4
	sw t2, 1276(sp)
	lw t0, 1268(sp)
	lw t1, 1276(sp)
	mul t2, t0, t1
	sw t2, 1272(sp)
	lw t0, 1264(sp)
	lw t1, 1272(sp)
	add t2, t0, t1
	sw t2, 1280(sp)
	lw t0, 1280(sp)
	lw t2, 0(t0)
	sw t2, 1284(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 1288(sp)
	li t2, 4
	sw t2, 1296(sp)
	lw t0, 1288(sp)
	lw t1, 1296(sp)
	mul t2, t0, t1
	sw t2, 1292(sp)
	lw t0, 1284(sp)
	lw t1, 1292(sp)
	add t2, t0, t1
	sw t2, 1300(sp)
	lw t0, 1300(sp)
	lw t2, 0(t0)
	sw t2, 1304(sp)
	lw t0, 32(sp)
	lw t2, 0(t0)
	sw t2, 1308(sp)
	lw t0, 1308(sp)
	addi t2, t0, 1
	sw t2, 1312(sp)
	lw t0, 1312(sp)
	lw t1, 1300(sp)
	sw t0, 0(t1)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 1316(sp)
	lw t0, 16(sp)
	lw t2, 0(t0)
	sw t2, 1320(sp)
	lw t0, 1316(sp)
	lw t1, 1320(sp)
	xor t2, t0, t1
	sw t2, 1324(sp)
	lw t0, 1324(sp)
	seqz t2, t0
	sw t2, 1328(sp)
	lw t0, 1328(sp)
	mv t2, t0
	sw t2, 1332(sp)
	lw t0, 1316(sp)
	lw t1, 1320(sp)
	beq t0, t1, .LBB35
	j .LBB36
.LBB35: 
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 1336(sp)
	lw t0, 20(sp)
	lw t2, 0(t0)
	sw t2, 1340(sp)
	lw t0, 1336(sp)
	lw t1, 1340(sp)
	xor t2, t0, t1
	sw t2, 1344(sp)
	lw t0, 1344(sp)
	seqz t2, t0
	sw t2, 1348(sp)
	lw t0, 1348(sp)
	mv t2, t0
	sw t2, 1332(sp)
	j .LBB36
.LBB36: 
	lw t0, 1332(sp)
	bnez t0, .LBB37
	j .LBB38
.LBB37: 
	lw t0, 28(sp)
	lw t2, 0(t0)
	sw t2, 1352(sp)
	li t2, 1
	sw t2, 1356(sp)
	lw t0, 1356(sp)
	lw t1, 28(sp)
	sw t0, 0(t1)
	j .LBB38
.LBB38: 
	j .LBB39
.LBB39: 
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 1360(sp)
	lw t0, 44(sp)
	lw t2, 0(t0)
	sw t2, 1364(sp)
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 1368(sp)
	li t2, 4
	sw t2, 1376(sp)
	lw t0, 1368(sp)
	lw t1, 1376(sp)
	mul t2, t0, t1
	sw t2, 1372(sp)
	lw t0, 1364(sp)
	lw t1, 1372(sp)
	add t2, t0, t1
	sw t2, 1380(sp)
	lw t0, 1380(sp)
	lw t2, 0(t0)
	sw t2, 1384(sp)
	lw t0, 1384(sp)
	addi t2, t0, 1
	sw t2, 1388(sp)
	lw t0, 1388(sp)
	lw t1, 36(sp)
	sw t0, 0(t1)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 1392(sp)
	lw t0, 48(sp)
	lw t2, 0(t0)
	sw t2, 1396(sp)
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 1400(sp)
	li t2, 4
	sw t2, 1408(sp)
	lw t0, 1400(sp)
	lw t1, 1408(sp)
	mul t2, t0, t1
	sw t2, 1404(sp)
	lw t0, 1396(sp)
	lw t1, 1404(sp)
	add t2, t0, t1
	sw t2, 1412(sp)
	lw t0, 1412(sp)
	lw t2, 0(t0)
	sw t2, 1416(sp)
	lw t0, 1416(sp)
	addi t2, t0, -2
	sw t2, 1420(sp)
	lw t0, 1420(sp)
	lw t1, 40(sp)
	sw t0, 0(t1)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 1424(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 1428(sp)
	lw t0, 1424(sp)
	mv a0, t0
	lw t0, 1428(sp)
	mv a1, t0
	call check
	mv t2, a0
	sw t2, 1432(sp)
	lw t0, 1432(sp)
	mv t2, t0
	sw t2, 1436(sp)
	lw t0, 1432(sp)
	bnez t0, .LBB40
	j .LBB41
.LBB40: 
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 1440(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 1444(sp)
	lw t0, 1440(sp)
	mv a0, t0
	lw t0, 1444(sp)
	mv a1, t0
	call check
	mv t2, a0
	sw t2, 1448(sp)
	lw t0, 1448(sp)
	mv t2, t0
	sw t2, 1436(sp)
	j .LBB41
.LBB41: 
	lw t0, 1436(sp)
	mv t2, t0
	sw t2, 1452(sp)
	lw t0, 1436(sp)
	bnez t0, .LBB42
	j .LBB43
.LBB42: 
	lw t0, 52(sp)
	lw t2, 0(t0)
	sw t2, 1456(sp)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 1460(sp)
	li t2, 4
	sw t2, 1468(sp)
	lw t0, 1460(sp)
	lw t1, 1468(sp)
	mul t2, t0, t1
	sw t2, 1464(sp)
	lw t0, 1456(sp)
	lw t1, 1464(sp)
	add t2, t0, t1
	sw t2, 1472(sp)
	lw t0, 1472(sp)
	lw t2, 0(t0)
	sw t2, 1476(sp)
	lw t0, 40(sp)
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
	addi t2, zero, -1
	sw t2, 1500(sp)
	lw t0, 1496(sp)
	lw t1, 1500(sp)
	xor t2, t0, t1
	sw t2, 1504(sp)
	lw t0, 1504(sp)
	seqz t2, t0
	sw t2, 1508(sp)
	lw t0, 1508(sp)
	mv t2, t0
	sw t2, 1452(sp)
	j .LBB43
.LBB43: 
	lw t0, 1452(sp)
	bnez t0, .LBB44
	j .LBB49
.LBB44: 
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 1512(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 1516(sp)
	lw t0, 1516(sp)
	addi t2, t0, 1
	sw t2, 1520(sp)
	lw t0, 1520(sp)
	lw t1, 24(sp)
	sw t0, 0(t1)
	lw t0, 44(sp)
	lw t2, 0(t0)
	sw t2, 1524(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 1528(sp)
	li t2, 4
	sw t2, 1536(sp)
	lw t0, 1528(sp)
	lw t1, 1536(sp)
	mul t2, t0, t1
	sw t2, 1532(sp)
	lw t0, 1524(sp)
	lw t1, 1532(sp)
	add t2, t0, t1
	sw t2, 1540(sp)
	lw t0, 1540(sp)
	lw t2, 0(t0)
	sw t2, 1544(sp)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 1548(sp)
	lw t0, 1548(sp)
	lw t1, 1540(sp)
	sw t0, 0(t1)
	lw t0, 48(sp)
	lw t2, 0(t0)
	sw t2, 1552(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 1556(sp)
	li t2, 4
	sw t2, 1564(sp)
	lw t0, 1556(sp)
	lw t1, 1564(sp)
	mul t2, t0, t1
	sw t2, 1560(sp)
	lw t0, 1552(sp)
	lw t1, 1560(sp)
	add t2, t0, t1
	sw t2, 1568(sp)
	lw t0, 1568(sp)
	lw t2, 0(t0)
	sw t2, 1572(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 1576(sp)
	lw t0, 1576(sp)
	lw t1, 1568(sp)
	sw t0, 0(t1)
	lw t0, 52(sp)
	lw t2, 0(t0)
	sw t2, 1580(sp)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 1584(sp)
	li t2, 4
	sw t2, 1592(sp)
	lw t0, 1584(sp)
	lw t1, 1592(sp)
	mul t2, t0, t1
	sw t2, 1588(sp)
	lw t0, 1580(sp)
	lw t1, 1588(sp)
	add t2, t0, t1
	sw t2, 1596(sp)
	lw t0, 1596(sp)
	lw t2, 0(t0)
	sw t2, 1600(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 1604(sp)
	li t2, 4
	sw t2, 1612(sp)
	lw t0, 1604(sp)
	lw t1, 1612(sp)
	mul t2, t0, t1
	sw t2, 1608(sp)
	lw t0, 1600(sp)
	lw t1, 1608(sp)
	add t2, t0, t1
	sw t2, 1616(sp)
	lw t0, 1616(sp)
	lw t2, 0(t0)
	sw t2, 1620(sp)
	lw t0, 32(sp)
	lw t2, 0(t0)
	sw t2, 1624(sp)
	lw t0, 1624(sp)
	addi t2, t0, 1
	sw t2, 1628(sp)
	lw t0, 1628(sp)
	lw t1, 1616(sp)
	sw t0, 0(t1)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 1632(sp)
	lw t0, 16(sp)
	lw t2, 0(t0)
	sw t2, 1636(sp)
	lw t0, 1632(sp)
	lw t1, 1636(sp)
	xor t2, t0, t1
	sw t2, 1640(sp)
	lw t0, 1640(sp)
	seqz t2, t0
	sw t2, 1644(sp)
	lw t0, 1644(sp)
	mv t2, t0
	sw t2, 1648(sp)
	lw t0, 1632(sp)
	lw t1, 1636(sp)
	beq t0, t1, .LBB45
	j .LBB46
.LBB45: 
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 1652(sp)
	lw t0, 20(sp)
	lw t2, 0(t0)
	sw t2, 1656(sp)
	lw t0, 1652(sp)
	lw t1, 1656(sp)
	xor t2, t0, t1
	sw t2, 1660(sp)
	lw t0, 1660(sp)
	seqz t2, t0
	sw t2, 1664(sp)
	lw t0, 1664(sp)
	mv t2, t0
	sw t2, 1648(sp)
	j .LBB46
.LBB46: 
	lw t0, 1648(sp)
	bnez t0, .LBB47
	j .LBB48
.LBB47: 
	lw t0, 28(sp)
	lw t2, 0(t0)
	sw t2, 1668(sp)
	li t2, 1
	sw t2, 1672(sp)
	lw t0, 1672(sp)
	lw t1, 28(sp)
	sw t0, 0(t1)
	j .LBB48
.LBB48: 
	j .LBB49
.LBB49: 
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 1676(sp)
	lw t0, 44(sp)
	lw t2, 0(t0)
	sw t2, 1680(sp)
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 1684(sp)
	li t2, 4
	sw t2, 1692(sp)
	lw t0, 1684(sp)
	lw t1, 1692(sp)
	mul t2, t0, t1
	sw t2, 1688(sp)
	lw t0, 1680(sp)
	lw t1, 1688(sp)
	add t2, t0, t1
	sw t2, 1696(sp)
	lw t0, 1696(sp)
	lw t2, 0(t0)
	sw t2, 1700(sp)
	lw t0, 1700(sp)
	addi t2, t0, 1
	sw t2, 1704(sp)
	lw t0, 1704(sp)
	lw t1, 36(sp)
	sw t0, 0(t1)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 1708(sp)
	lw t0, 48(sp)
	lw t2, 0(t0)
	sw t2, 1712(sp)
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 1716(sp)
	li t2, 4
	sw t2, 1724(sp)
	lw t0, 1716(sp)
	lw t1, 1724(sp)
	mul t2, t0, t1
	sw t2, 1720(sp)
	lw t0, 1712(sp)
	lw t1, 1720(sp)
	add t2, t0, t1
	sw t2, 1728(sp)
	lw t0, 1728(sp)
	lw t2, 0(t0)
	sw t2, 1732(sp)
	lw t0, 1732(sp)
	addi t2, t0, 2
	sw t2, 1736(sp)
	lw t0, 1736(sp)
	lw t1, 40(sp)
	sw t0, 0(t1)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 1740(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 1744(sp)
	lw t0, 1740(sp)
	mv a0, t0
	lw t0, 1744(sp)
	mv a1, t0
	call check
	mv t2, a0
	sw t2, 1748(sp)
	lw t0, 1748(sp)
	mv t2, t0
	sw t2, 1752(sp)
	lw t0, 1748(sp)
	bnez t0, .LBB50
	j .LBB51
.LBB50: 
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 1756(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 1760(sp)
	lw t0, 1756(sp)
	mv a0, t0
	lw t0, 1760(sp)
	mv a1, t0
	call check
	mv t2, a0
	sw t2, 1764(sp)
	lw t0, 1764(sp)
	mv t2, t0
	sw t2, 1752(sp)
	j .LBB51
.LBB51: 
	lw t0, 1752(sp)
	mv t2, t0
	sw t2, 1768(sp)
	lw t0, 1752(sp)
	bnez t0, .LBB52
	j .LBB53
.LBB52: 
	lw t0, 52(sp)
	lw t2, 0(t0)
	sw t2, 1772(sp)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 1776(sp)
	li t2, 4
	sw t2, 1784(sp)
	lw t0, 1776(sp)
	lw t1, 1784(sp)
	mul t2, t0, t1
	sw t2, 1780(sp)
	lw t0, 1772(sp)
	lw t1, 1780(sp)
	add t2, t0, t1
	sw t2, 1788(sp)
	lw t0, 1788(sp)
	lw t2, 0(t0)
	sw t2, 1792(sp)
	lw t0, 40(sp)
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
	addi t2, zero, -1
	sw t2, 1816(sp)
	lw t0, 1812(sp)
	lw t1, 1816(sp)
	xor t2, t0, t1
	sw t2, 1820(sp)
	lw t0, 1820(sp)
	seqz t2, t0
	sw t2, 1824(sp)
	lw t0, 1824(sp)
	mv t2, t0
	sw t2, 1768(sp)
	j .LBB53
.LBB53: 
	lw t0, 1768(sp)
	bnez t0, .LBB54
	j .LBB59
.LBB54: 
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 1828(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 1832(sp)
	lw t0, 1832(sp)
	addi t2, t0, 1
	sw t2, 1836(sp)
	lw t0, 1836(sp)
	lw t1, 24(sp)
	sw t0, 0(t1)
	lw t0, 44(sp)
	lw t2, 0(t0)
	sw t2, 1840(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 1844(sp)
	li t2, 4
	sw t2, 1852(sp)
	lw t0, 1844(sp)
	lw t1, 1852(sp)
	mul t2, t0, t1
	sw t2, 1848(sp)
	lw t0, 1840(sp)
	lw t1, 1848(sp)
	add t2, t0, t1
	sw t2, 1856(sp)
	lw t0, 1856(sp)
	lw t2, 0(t0)
	sw t2, 1860(sp)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 1864(sp)
	lw t0, 1864(sp)
	lw t1, 1856(sp)
	sw t0, 0(t1)
	lw t0, 48(sp)
	lw t2, 0(t0)
	sw t2, 1868(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 1872(sp)
	li t2, 4
	sw t2, 1880(sp)
	lw t0, 1872(sp)
	lw t1, 1880(sp)
	mul t2, t0, t1
	sw t2, 1876(sp)
	lw t0, 1868(sp)
	lw t1, 1876(sp)
	add t2, t0, t1
	sw t2, 1884(sp)
	lw t0, 1884(sp)
	lw t2, 0(t0)
	sw t2, 1888(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 1892(sp)
	lw t0, 1892(sp)
	lw t1, 1884(sp)
	sw t0, 0(t1)
	lw t0, 52(sp)
	lw t2, 0(t0)
	sw t2, 1896(sp)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 1900(sp)
	li t2, 4
	sw t2, 1908(sp)
	lw t0, 1900(sp)
	lw t1, 1908(sp)
	mul t2, t0, t1
	sw t2, 1904(sp)
	lw t0, 1896(sp)
	lw t1, 1904(sp)
	add t2, t0, t1
	sw t2, 1912(sp)
	lw t0, 1912(sp)
	lw t2, 0(t0)
	sw t2, 1916(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 1920(sp)
	li t2, 4
	sw t2, 1928(sp)
	lw t0, 1920(sp)
	lw t1, 1928(sp)
	mul t2, t0, t1
	sw t2, 1924(sp)
	lw t0, 1916(sp)
	lw t1, 1924(sp)
	add t2, t0, t1
	sw t2, 1932(sp)
	lw t0, 1932(sp)
	lw t2, 0(t0)
	sw t2, 1936(sp)
	lw t0, 32(sp)
	lw t2, 0(t0)
	sw t2, 1940(sp)
	lw t0, 1940(sp)
	addi t2, t0, 1
	sw t2, 1944(sp)
	lw t0, 1944(sp)
	lw t1, 1932(sp)
	sw t0, 0(t1)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 1948(sp)
	lw t0, 16(sp)
	lw t2, 0(t0)
	sw t2, 1952(sp)
	lw t0, 1948(sp)
	lw t1, 1952(sp)
	xor t2, t0, t1
	sw t2, 1956(sp)
	lw t0, 1956(sp)
	seqz t2, t0
	sw t2, 1960(sp)
	lw t0, 1960(sp)
	mv t2, t0
	sw t2, 1964(sp)
	lw t0, 1948(sp)
	lw t1, 1952(sp)
	beq t0, t1, .LBB55
	j .LBB56
.LBB55: 
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 1968(sp)
	lw t0, 20(sp)
	lw t2, 0(t0)
	sw t2, 1972(sp)
	lw t0, 1968(sp)
	lw t1, 1972(sp)
	xor t2, t0, t1
	sw t2, 1976(sp)
	lw t0, 1976(sp)
	seqz t2, t0
	sw t2, 1980(sp)
	lw t0, 1980(sp)
	mv t2, t0
	sw t2, 1964(sp)
	j .LBB56
.LBB56: 
	lw t0, 1964(sp)
	bnez t0, .LBB57
	j .LBB58
.LBB57: 
	lw t0, 28(sp)
	lw t2, 0(t0)
	sw t2, 1984(sp)
	li t2, 1
	sw t2, 1988(sp)
	lw t0, 1988(sp)
	lw t1, 28(sp)
	sw t0, 0(t1)
	j .LBB58
.LBB58: 
	j .LBB59
.LBB59: 
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 1992(sp)
	lw t0, 44(sp)
	lw t2, 0(t0)
	sw t2, 1996(sp)
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 2000(sp)
	li t2, 4
	sw t2, 2008(sp)
	lw t0, 2000(sp)
	lw t1, 2008(sp)
	mul t2, t0, t1
	sw t2, 2004(sp)
	lw t0, 1996(sp)
	lw t1, 2004(sp)
	add t2, t0, t1
	sw t2, 2012(sp)
	lw t0, 2012(sp)
	lw t2, 0(t0)
	sw t2, 2016(sp)
	lw t0, 2016(sp)
	addi t2, t0, -2
	sw t2, 2020(sp)
	lw t0, 2020(sp)
	lw t1, 36(sp)
	sw t0, 0(t1)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 2024(sp)
	lw t0, 48(sp)
	lw t2, 0(t0)
	sw t2, 2028(sp)
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 2032(sp)
	li t2, 4
	sw t2, 2040(sp)
	lw t0, 2032(sp)
	lw t1, 2040(sp)
	mul t2, t0, t1
	sw t2, 2036(sp)
	lw t0, 2028(sp)
	lw t1, 2036(sp)
	add t2, t0, t1
	sw t2, 2044(sp)
	lw t0, 2044(sp)
	lw t2, 0(t0)
	sw t2, 2048(sp)
	lw t0, 2048(sp)
	addi t2, t0, -1
	sw t2, 2052(sp)
	lw t0, 2052(sp)
	lw t1, 40(sp)
	sw t0, 0(t1)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 2056(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 2060(sp)
	lw t0, 2056(sp)
	mv a0, t0
	lw t0, 2060(sp)
	mv a1, t0
	call check
	mv t2, a0
	sw t2, 2064(sp)
	lw t0, 2064(sp)
	mv t2, t0
	sw t2, 2068(sp)
	lw t0, 2064(sp)
	bnez t0, .LBB60
	j .LBB61
.LBB60: 
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 2072(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 2076(sp)
	lw t0, 2072(sp)
	mv a0, t0
	lw t0, 2076(sp)
	mv a1, t0
	call check
	mv t2, a0
	sw t2, 2080(sp)
	lw t0, 2080(sp)
	mv t2, t0
	sw t2, 2068(sp)
	j .LBB61
.LBB61: 
	lw t0, 2068(sp)
	mv t2, t0
	sw t2, 2084(sp)
	lw t0, 2068(sp)
	bnez t0, .LBB62
	j .LBB63
.LBB62: 
	lw t0, 52(sp)
	lw t2, 0(t0)
	sw t2, 2088(sp)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 2092(sp)
	li t2, 4
	sw t2, 2100(sp)
	lw t0, 2092(sp)
	lw t1, 2100(sp)
	mul t2, t0, t1
	sw t2, 2096(sp)
	lw t0, 2088(sp)
	lw t1, 2096(sp)
	add t2, t0, t1
	sw t2, 2104(sp)
	lw t0, 2104(sp)
	lw t2, 0(t0)
	sw t2, 2108(sp)
	lw t0, 40(sp)
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
	addi t2, zero, -1
	sw t2, 2132(sp)
	lw t0, 2128(sp)
	lw t1, 2132(sp)
	xor t2, t0, t1
	sw t2, 2136(sp)
	lw t0, 2136(sp)
	seqz t2, t0
	sw t2, 2140(sp)
	lw t0, 2140(sp)
	mv t2, t0
	sw t2, 2084(sp)
	j .LBB63
.LBB63: 
	lw t0, 2084(sp)
	bnez t0, .LBB64
	j .LBB69
.LBB64: 
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 2144(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 2148(sp)
	lw t0, 2148(sp)
	addi t2, t0, 1
	sw t2, 2152(sp)
	lw t0, 2152(sp)
	lw t1, 24(sp)
	sw t0, 0(t1)
	lw t0, 44(sp)
	lw t2, 0(t0)
	sw t2, 2156(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 2160(sp)
	li t2, 4
	sw t2, 2168(sp)
	lw t0, 2160(sp)
	lw t1, 2168(sp)
	mul t2, t0, t1
	sw t2, 2164(sp)
	lw t0, 2156(sp)
	lw t1, 2164(sp)
	add t2, t0, t1
	sw t2, 2172(sp)
	lw t0, 2172(sp)
	lw t2, 0(t0)
	sw t2, 2176(sp)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 2180(sp)
	lw t0, 2180(sp)
	lw t1, 2172(sp)
	sw t0, 0(t1)
	lw t0, 48(sp)
	lw t2, 0(t0)
	sw t2, 2184(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 2188(sp)
	li t2, 4
	sw t2, 2196(sp)
	lw t0, 2188(sp)
	lw t1, 2196(sp)
	mul t2, t0, t1
	sw t2, 2192(sp)
	lw t0, 2184(sp)
	lw t1, 2192(sp)
	add t2, t0, t1
	sw t2, 2200(sp)
	lw t0, 2200(sp)
	lw t2, 0(t0)
	sw t2, 2204(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 2208(sp)
	lw t0, 2208(sp)
	lw t1, 2200(sp)
	sw t0, 0(t1)
	lw t0, 52(sp)
	lw t2, 0(t0)
	sw t2, 2212(sp)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 2216(sp)
	li t2, 4
	sw t2, 2224(sp)
	lw t0, 2216(sp)
	lw t1, 2224(sp)
	mul t2, t0, t1
	sw t2, 2220(sp)
	lw t0, 2212(sp)
	lw t1, 2220(sp)
	add t2, t0, t1
	sw t2, 2228(sp)
	lw t0, 2228(sp)
	lw t2, 0(t0)
	sw t2, 2232(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 2236(sp)
	li t2, 4
	sw t2, 2244(sp)
	lw t0, 2236(sp)
	lw t1, 2244(sp)
	mul t2, t0, t1
	sw t2, 2240(sp)
	lw t0, 2232(sp)
	lw t1, 2240(sp)
	add t2, t0, t1
	sw t2, 2248(sp)
	lw t0, 2248(sp)
	lw t2, 0(t0)
	sw t2, 2252(sp)
	lw t0, 32(sp)
	lw t2, 0(t0)
	sw t2, 2256(sp)
	lw t0, 2256(sp)
	addi t2, t0, 1
	sw t2, 2260(sp)
	lw t0, 2260(sp)
	lw t1, 2248(sp)
	sw t0, 0(t1)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 2264(sp)
	lw t0, 16(sp)
	lw t2, 0(t0)
	sw t2, 2268(sp)
	lw t0, 2264(sp)
	lw t1, 2268(sp)
	xor t2, t0, t1
	sw t2, 2272(sp)
	lw t0, 2272(sp)
	seqz t2, t0
	sw t2, 2276(sp)
	lw t0, 2276(sp)
	mv t2, t0
	sw t2, 2280(sp)
	lw t0, 2264(sp)
	lw t1, 2268(sp)
	beq t0, t1, .LBB65
	j .LBB66
.LBB65: 
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 2284(sp)
	lw t0, 20(sp)
	lw t2, 0(t0)
	sw t2, 2288(sp)
	lw t0, 2284(sp)
	lw t1, 2288(sp)
	xor t2, t0, t1
	sw t2, 2292(sp)
	lw t0, 2292(sp)
	seqz t2, t0
	sw t2, 2296(sp)
	lw t0, 2296(sp)
	mv t2, t0
	sw t2, 2280(sp)
	j .LBB66
.LBB66: 
	lw t0, 2280(sp)
	bnez t0, .LBB67
	j .LBB68
.LBB67: 
	lw t0, 28(sp)
	lw t2, 0(t0)
	sw t2, 2300(sp)
	li t2, 1
	sw t2, 2304(sp)
	lw t0, 2304(sp)
	lw t1, 28(sp)
	sw t0, 0(t1)
	j .LBB68
.LBB68: 
	j .LBB69
.LBB69: 
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 2308(sp)
	lw t0, 44(sp)
	lw t2, 0(t0)
	sw t2, 2312(sp)
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 2316(sp)
	li t2, 4
	sw t2, 2324(sp)
	lw t0, 2316(sp)
	lw t1, 2324(sp)
	mul t2, t0, t1
	sw t2, 2320(sp)
	lw t0, 2312(sp)
	lw t1, 2320(sp)
	add t2, t0, t1
	sw t2, 2328(sp)
	lw t0, 2328(sp)
	lw t2, 0(t0)
	sw t2, 2332(sp)
	lw t0, 2332(sp)
	addi t2, t0, -2
	sw t2, 2336(sp)
	lw t0, 2336(sp)
	lw t1, 36(sp)
	sw t0, 0(t1)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 2340(sp)
	lw t0, 48(sp)
	lw t2, 0(t0)
	sw t2, 2344(sp)
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 2348(sp)
	li t2, 4
	sw t2, 2356(sp)
	lw t0, 2348(sp)
	lw t1, 2356(sp)
	mul t2, t0, t1
	sw t2, 2352(sp)
	lw t0, 2344(sp)
	lw t1, 2352(sp)
	add t2, t0, t1
	sw t2, 2360(sp)
	lw t0, 2360(sp)
	lw t2, 0(t0)
	sw t2, 2364(sp)
	lw t0, 2364(sp)
	addi t2, t0, 1
	sw t2, 2368(sp)
	lw t0, 2368(sp)
	lw t1, 40(sp)
	sw t0, 0(t1)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 2372(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 2376(sp)
	lw t0, 2372(sp)
	mv a0, t0
	lw t0, 2376(sp)
	mv a1, t0
	call check
	mv t2, a0
	sw t2, 2380(sp)
	lw t0, 2380(sp)
	mv t2, t0
	sw t2, 2384(sp)
	lw t0, 2380(sp)
	bnez t0, .LBB70
	j .LBB71
.LBB70: 
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 2388(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 2392(sp)
	lw t0, 2388(sp)
	mv a0, t0
	lw t0, 2392(sp)
	mv a1, t0
	call check
	mv t2, a0
	sw t2, 2396(sp)
	lw t0, 2396(sp)
	mv t2, t0
	sw t2, 2384(sp)
	j .LBB71
.LBB71: 
	lw t0, 2384(sp)
	mv t2, t0
	sw t2, 2400(sp)
	lw t0, 2384(sp)
	bnez t0, .LBB72
	j .LBB73
.LBB72: 
	lw t0, 52(sp)
	lw t2, 0(t0)
	sw t2, 2404(sp)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 2408(sp)
	li t2, 4
	sw t2, 2416(sp)
	lw t0, 2408(sp)
	lw t1, 2416(sp)
	mul t2, t0, t1
	sw t2, 2412(sp)
	lw t0, 2404(sp)
	lw t1, 2412(sp)
	add t2, t0, t1
	sw t2, 2420(sp)
	lw t0, 2420(sp)
	lw t2, 0(t0)
	sw t2, 2424(sp)
	lw t0, 40(sp)
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
	addi t2, zero, -1
	sw t2, 2448(sp)
	lw t0, 2444(sp)
	lw t1, 2448(sp)
	xor t2, t0, t1
	sw t2, 2452(sp)
	lw t0, 2452(sp)
	seqz t2, t0
	sw t2, 2456(sp)
	lw t0, 2456(sp)
	mv t2, t0
	sw t2, 2400(sp)
	j .LBB73
.LBB73: 
	lw t0, 2400(sp)
	bnez t0, .LBB74
	j .LBB79
.LBB74: 
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 2460(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 2464(sp)
	lw t0, 2464(sp)
	addi t2, t0, 1
	sw t2, 2468(sp)
	lw t0, 2468(sp)
	lw t1, 24(sp)
	sw t0, 0(t1)
	lw t0, 44(sp)
	lw t2, 0(t0)
	sw t2, 2472(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 2476(sp)
	li t2, 4
	sw t2, 2484(sp)
	lw t0, 2476(sp)
	lw t1, 2484(sp)
	mul t2, t0, t1
	sw t2, 2480(sp)
	lw t0, 2472(sp)
	lw t1, 2480(sp)
	add t2, t0, t1
	sw t2, 2488(sp)
	lw t0, 2488(sp)
	lw t2, 0(t0)
	sw t2, 2492(sp)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 2496(sp)
	lw t0, 2496(sp)
	lw t1, 2488(sp)
	sw t0, 0(t1)
	lw t0, 48(sp)
	lw t2, 0(t0)
	sw t2, 2500(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 2504(sp)
	li t2, 4
	sw t2, 2512(sp)
	lw t0, 2504(sp)
	lw t1, 2512(sp)
	mul t2, t0, t1
	sw t2, 2508(sp)
	lw t0, 2500(sp)
	lw t1, 2508(sp)
	add t2, t0, t1
	sw t2, 2516(sp)
	lw t0, 2516(sp)
	lw t2, 0(t0)
	sw t2, 2520(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 2524(sp)
	lw t0, 2524(sp)
	lw t1, 2516(sp)
	sw t0, 0(t1)
	lw t0, 52(sp)
	lw t2, 0(t0)
	sw t2, 2528(sp)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 2532(sp)
	li t2, 4
	sw t2, 2540(sp)
	lw t0, 2532(sp)
	lw t1, 2540(sp)
	mul t2, t0, t1
	sw t2, 2536(sp)
	lw t0, 2528(sp)
	lw t1, 2536(sp)
	add t2, t0, t1
	sw t2, 2544(sp)
	lw t0, 2544(sp)
	lw t2, 0(t0)
	sw t2, 2548(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 2552(sp)
	li t2, 4
	sw t2, 2560(sp)
	lw t0, 2552(sp)
	lw t1, 2560(sp)
	mul t2, t0, t1
	sw t2, 2556(sp)
	lw t0, 2548(sp)
	lw t1, 2556(sp)
	add t2, t0, t1
	sw t2, 2564(sp)
	lw t0, 2564(sp)
	lw t2, 0(t0)
	sw t2, 2568(sp)
	lw t0, 32(sp)
	lw t2, 0(t0)
	sw t2, 2572(sp)
	lw t0, 2572(sp)
	addi t2, t0, 1
	sw t2, 2576(sp)
	lw t0, 2576(sp)
	lw t1, 2564(sp)
	sw t0, 0(t1)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 2580(sp)
	lw t0, 16(sp)
	lw t2, 0(t0)
	sw t2, 2584(sp)
	lw t0, 2580(sp)
	lw t1, 2584(sp)
	xor t2, t0, t1
	sw t2, 2588(sp)
	lw t0, 2588(sp)
	seqz t2, t0
	sw t2, 2592(sp)
	lw t0, 2592(sp)
	mv t2, t0
	sw t2, 2596(sp)
	lw t0, 2580(sp)
	lw t1, 2584(sp)
	beq t0, t1, .LBB75
	j .LBB76
.LBB75: 
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 2600(sp)
	lw t0, 20(sp)
	lw t2, 0(t0)
	sw t2, 2604(sp)
	lw t0, 2600(sp)
	lw t1, 2604(sp)
	xor t2, t0, t1
	sw t2, 2608(sp)
	lw t0, 2608(sp)
	seqz t2, t0
	sw t2, 2612(sp)
	lw t0, 2612(sp)
	mv t2, t0
	sw t2, 2596(sp)
	j .LBB76
.LBB76: 
	lw t0, 2596(sp)
	bnez t0, .LBB77
	j .LBB78
.LBB77: 
	lw t0, 28(sp)
	lw t2, 0(t0)
	sw t2, 2616(sp)
	li t2, 1
	sw t2, 2620(sp)
	lw t0, 2620(sp)
	lw t1, 28(sp)
	sw t0, 0(t1)
	j .LBB78
.LBB78: 
	j .LBB79
.LBB79: 
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 2624(sp)
	lw t0, 44(sp)
	lw t2, 0(t0)
	sw t2, 2628(sp)
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 2632(sp)
	li t2, 4
	sw t2, 2640(sp)
	lw t0, 2632(sp)
	lw t1, 2640(sp)
	mul t2, t0, t1
	sw t2, 2636(sp)
	lw t0, 2628(sp)
	lw t1, 2636(sp)
	add t2, t0, t1
	sw t2, 2644(sp)
	lw t0, 2644(sp)
	lw t2, 0(t0)
	sw t2, 2648(sp)
	lw t0, 2648(sp)
	addi t2, t0, 2
	sw t2, 2652(sp)
	lw t0, 2652(sp)
	lw t1, 36(sp)
	sw t0, 0(t1)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 2656(sp)
	lw t0, 48(sp)
	lw t2, 0(t0)
	sw t2, 2660(sp)
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 2664(sp)
	li t2, 4
	sw t2, 2672(sp)
	lw t0, 2664(sp)
	lw t1, 2672(sp)
	mul t2, t0, t1
	sw t2, 2668(sp)
	lw t0, 2660(sp)
	lw t1, 2668(sp)
	add t2, t0, t1
	sw t2, 2676(sp)
	lw t0, 2676(sp)
	lw t2, 0(t0)
	sw t2, 2680(sp)
	lw t0, 2680(sp)
	addi t2, t0, -1
	sw t2, 2684(sp)
	lw t0, 2684(sp)
	lw t1, 40(sp)
	sw t0, 0(t1)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 2688(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 2692(sp)
	lw t0, 2688(sp)
	mv a0, t0
	lw t0, 2692(sp)
	mv a1, t0
	call check
	mv t2, a0
	sw t2, 2696(sp)
	lw t0, 2696(sp)
	mv t2, t0
	sw t2, 2700(sp)
	lw t0, 2696(sp)
	bnez t0, .LBB80
	j .LBB81
.LBB80: 
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 2704(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 2708(sp)
	lw t0, 2704(sp)
	mv a0, t0
	lw t0, 2708(sp)
	mv a1, t0
	call check
	mv t2, a0
	sw t2, 2712(sp)
	lw t0, 2712(sp)
	mv t2, t0
	sw t2, 2700(sp)
	j .LBB81
.LBB81: 
	lw t0, 2700(sp)
	mv t2, t0
	sw t2, 2716(sp)
	lw t0, 2700(sp)
	bnez t0, .LBB82
	j .LBB83
.LBB82: 
	lw t0, 52(sp)
	lw t2, 0(t0)
	sw t2, 2720(sp)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 2724(sp)
	li t2, 4
	sw t2, 2732(sp)
	lw t0, 2724(sp)
	lw t1, 2732(sp)
	mul t2, t0, t1
	sw t2, 2728(sp)
	lw t0, 2720(sp)
	lw t1, 2728(sp)
	add t2, t0, t1
	sw t2, 2736(sp)
	lw t0, 2736(sp)
	lw t2, 0(t0)
	sw t2, 2740(sp)
	lw t0, 40(sp)
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
	addi t2, zero, -1
	sw t2, 2764(sp)
	lw t0, 2760(sp)
	lw t1, 2764(sp)
	xor t2, t0, t1
	sw t2, 2768(sp)
	lw t0, 2768(sp)
	seqz t2, t0
	sw t2, 2772(sp)
	lw t0, 2772(sp)
	mv t2, t0
	sw t2, 2716(sp)
	j .LBB83
.LBB83: 
	lw t0, 2716(sp)
	bnez t0, .LBB84
	j .LBB89
.LBB84: 
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 2776(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 2780(sp)
	lw t0, 2780(sp)
	addi t2, t0, 1
	sw t2, 2784(sp)
	lw t0, 2784(sp)
	lw t1, 24(sp)
	sw t0, 0(t1)
	lw t0, 44(sp)
	lw t2, 0(t0)
	sw t2, 2788(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 2792(sp)
	li t2, 4
	sw t2, 2800(sp)
	lw t0, 2792(sp)
	lw t1, 2800(sp)
	mul t2, t0, t1
	sw t2, 2796(sp)
	lw t0, 2788(sp)
	lw t1, 2796(sp)
	add t2, t0, t1
	sw t2, 2804(sp)
	lw t0, 2804(sp)
	lw t2, 0(t0)
	sw t2, 2808(sp)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 2812(sp)
	lw t0, 2812(sp)
	lw t1, 2804(sp)
	sw t0, 0(t1)
	lw t0, 48(sp)
	lw t2, 0(t0)
	sw t2, 2816(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 2820(sp)
	li t2, 4
	sw t2, 2828(sp)
	lw t0, 2820(sp)
	lw t1, 2828(sp)
	mul t2, t0, t1
	sw t2, 2824(sp)
	lw t0, 2816(sp)
	lw t1, 2824(sp)
	add t2, t0, t1
	sw t2, 2832(sp)
	lw t0, 2832(sp)
	lw t2, 0(t0)
	sw t2, 2836(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 2840(sp)
	lw t0, 2840(sp)
	lw t1, 2832(sp)
	sw t0, 0(t1)
	lw t0, 52(sp)
	lw t2, 0(t0)
	sw t2, 2844(sp)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 2848(sp)
	li t2, 4
	sw t2, 2856(sp)
	lw t0, 2848(sp)
	lw t1, 2856(sp)
	mul t2, t0, t1
	sw t2, 2852(sp)
	lw t0, 2844(sp)
	lw t1, 2852(sp)
	add t2, t0, t1
	sw t2, 2860(sp)
	lw t0, 2860(sp)
	lw t2, 0(t0)
	sw t2, 2864(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 2868(sp)
	li t2, 4
	sw t2, 2876(sp)
	lw t0, 2868(sp)
	lw t1, 2876(sp)
	mul t2, t0, t1
	sw t2, 2872(sp)
	lw t0, 2864(sp)
	lw t1, 2872(sp)
	add t2, t0, t1
	sw t2, 2880(sp)
	lw t0, 2880(sp)
	lw t2, 0(t0)
	sw t2, 2884(sp)
	lw t0, 32(sp)
	lw t2, 0(t0)
	sw t2, 2888(sp)
	lw t0, 2888(sp)
	addi t2, t0, 1
	sw t2, 2892(sp)
	lw t0, 2892(sp)
	lw t1, 2880(sp)
	sw t0, 0(t1)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 2896(sp)
	lw t0, 16(sp)
	lw t2, 0(t0)
	sw t2, 2900(sp)
	lw t0, 2896(sp)
	lw t1, 2900(sp)
	xor t2, t0, t1
	sw t2, 2904(sp)
	lw t0, 2904(sp)
	seqz t2, t0
	sw t2, 2908(sp)
	lw t0, 2908(sp)
	mv t2, t0
	sw t2, 2912(sp)
	lw t0, 2896(sp)
	lw t1, 2900(sp)
	beq t0, t1, .LBB85
	j .LBB86
.LBB85: 
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 2916(sp)
	lw t0, 20(sp)
	lw t2, 0(t0)
	sw t2, 2920(sp)
	lw t0, 2916(sp)
	lw t1, 2920(sp)
	xor t2, t0, t1
	sw t2, 2924(sp)
	lw t0, 2924(sp)
	seqz t2, t0
	sw t2, 2928(sp)
	lw t0, 2928(sp)
	mv t2, t0
	sw t2, 2912(sp)
	j .LBB86
.LBB86: 
	lw t0, 2912(sp)
	bnez t0, .LBB87
	j .LBB88
.LBB87: 
	lw t0, 28(sp)
	lw t2, 0(t0)
	sw t2, 2932(sp)
	li t2, 1
	sw t2, 2936(sp)
	lw t0, 2936(sp)
	lw t1, 28(sp)
	sw t0, 0(t1)
	j .LBB88
.LBB88: 
	j .LBB89
.LBB89: 
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 2940(sp)
	lw t0, 44(sp)
	lw t2, 0(t0)
	sw t2, 2944(sp)
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 2948(sp)
	li t2, 4
	sw t2, 2956(sp)
	lw t0, 2948(sp)
	lw t1, 2956(sp)
	mul t2, t0, t1
	sw t2, 2952(sp)
	lw t0, 2944(sp)
	lw t1, 2952(sp)
	add t2, t0, t1
	sw t2, 2960(sp)
	lw t0, 2960(sp)
	lw t2, 0(t0)
	sw t2, 2964(sp)
	lw t0, 2964(sp)
	addi t2, t0, 2
	sw t2, 2968(sp)
	lw t0, 2968(sp)
	lw t1, 36(sp)
	sw t0, 0(t1)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 2972(sp)
	lw t0, 48(sp)
	lw t2, 0(t0)
	sw t2, 2976(sp)
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 2980(sp)
	li t2, 4
	sw t2, 2988(sp)
	lw t0, 2980(sp)
	lw t1, 2988(sp)
	mul t2, t0, t1
	sw t2, 2984(sp)
	lw t0, 2976(sp)
	lw t1, 2984(sp)
	add t2, t0, t1
	sw t2, 2992(sp)
	lw t0, 2992(sp)
	lw t2, 0(t0)
	sw t2, 2996(sp)
	lw t0, 2996(sp)
	addi t2, t0, 1
	sw t2, 3000(sp)
	lw t0, 3000(sp)
	lw t1, 40(sp)
	sw t0, 0(t1)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 3004(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 3008(sp)
	lw t0, 3004(sp)
	mv a0, t0
	lw t0, 3008(sp)
	mv a1, t0
	call check
	mv t2, a0
	sw t2, 3012(sp)
	lw t0, 3012(sp)
	mv t2, t0
	sw t2, 3016(sp)
	lw t0, 3012(sp)
	bnez t0, .LBB90
	j .LBB91
.LBB90: 
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 3020(sp)
	lw t0, 0(sp)
	lw t2, 0(t0)
	sw t2, 3024(sp)
	lw t0, 3020(sp)
	mv a0, t0
	lw t0, 3024(sp)
	mv a1, t0
	call check
	mv t2, a0
	sw t2, 3028(sp)
	lw t0, 3028(sp)
	mv t2, t0
	sw t2, 3016(sp)
	j .LBB91
.LBB91: 
	lw t0, 3016(sp)
	mv t2, t0
	sw t2, 3032(sp)
	lw t0, 3016(sp)
	bnez t0, .LBB92
	j .LBB93
.LBB92: 
	lw t0, 52(sp)
	lw t2, 0(t0)
	sw t2, 3036(sp)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 3040(sp)
	li t2, 4
	sw t2, 3048(sp)
	lw t0, 3040(sp)
	lw t1, 3048(sp)
	mul t2, t0, t1
	sw t2, 3044(sp)
	lw t0, 3036(sp)
	lw t1, 3044(sp)
	add t2, t0, t1
	sw t2, 3052(sp)
	lw t0, 3052(sp)
	lw t2, 0(t0)
	sw t2, 3056(sp)
	lw t0, 40(sp)
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
	addi t2, zero, -1
	sw t2, 3080(sp)
	lw t0, 3076(sp)
	lw t1, 3080(sp)
	xor t2, t0, t1
	sw t2, 3084(sp)
	lw t0, 3084(sp)
	seqz t2, t0
	sw t2, 3088(sp)
	lw t0, 3088(sp)
	mv t2, t0
	sw t2, 3032(sp)
	j .LBB93
.LBB93: 
	lw t0, 3032(sp)
	bnez t0, .LBB94
	j .LBB99
.LBB94: 
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 3092(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 3096(sp)
	lw t0, 3096(sp)
	addi t2, t0, 1
	sw t2, 3100(sp)
	lw t0, 3100(sp)
	lw t1, 24(sp)
	sw t0, 0(t1)
	lw t0, 44(sp)
	lw t2, 0(t0)
	sw t2, 3104(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 3108(sp)
	li t2, 4
	sw t2, 3116(sp)
	lw t0, 3108(sp)
	lw t1, 3116(sp)
	mul t2, t0, t1
	sw t2, 3112(sp)
	lw t0, 3104(sp)
	lw t1, 3112(sp)
	add t2, t0, t1
	sw t2, 3120(sp)
	lw t0, 3120(sp)
	lw t2, 0(t0)
	sw t2, 3124(sp)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 3128(sp)
	lw t0, 3128(sp)
	lw t1, 3120(sp)
	sw t0, 0(t1)
	lw t0, 48(sp)
	lw t2, 0(t0)
	sw t2, 3132(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 3136(sp)
	li t2, 4
	sw t2, 3144(sp)
	lw t0, 3136(sp)
	lw t1, 3144(sp)
	mul t2, t0, t1
	sw t2, 3140(sp)
	lw t0, 3132(sp)
	lw t1, 3140(sp)
	add t2, t0, t1
	sw t2, 3148(sp)
	lw t0, 3148(sp)
	lw t2, 0(t0)
	sw t2, 3152(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 3156(sp)
	lw t0, 3156(sp)
	lw t1, 3148(sp)
	sw t0, 0(t1)
	lw t0, 52(sp)
	lw t2, 0(t0)
	sw t2, 3160(sp)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 3164(sp)
	li t2, 4
	sw t2, 3172(sp)
	lw t0, 3164(sp)
	lw t1, 3172(sp)
	mul t2, t0, t1
	sw t2, 3168(sp)
	lw t0, 3160(sp)
	lw t1, 3168(sp)
	add t2, t0, t1
	sw t2, 3176(sp)
	lw t0, 3176(sp)
	lw t2, 0(t0)
	sw t2, 3180(sp)
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 3184(sp)
	li t2, 4
	sw t2, 3192(sp)
	lw t0, 3184(sp)
	lw t1, 3192(sp)
	mul t2, t0, t1
	sw t2, 3188(sp)
	lw t0, 3180(sp)
	lw t1, 3188(sp)
	add t2, t0, t1
	sw t2, 3196(sp)
	lw t0, 3196(sp)
	lw t2, 0(t0)
	sw t2, 3200(sp)
	lw t0, 32(sp)
	lw t2, 0(t0)
	sw t2, 3204(sp)
	lw t0, 3204(sp)
	addi t2, t0, 1
	sw t2, 3208(sp)
	lw t0, 3208(sp)
	lw t1, 3196(sp)
	sw t0, 0(t1)
	lw t0, 36(sp)
	lw t2, 0(t0)
	sw t2, 3212(sp)
	lw t0, 16(sp)
	lw t2, 0(t0)
	sw t2, 3216(sp)
	lw t0, 3212(sp)
	lw t1, 3216(sp)
	xor t2, t0, t1
	sw t2, 3220(sp)
	lw t0, 3220(sp)
	seqz t2, t0
	sw t2, 3224(sp)
	lw t0, 3224(sp)
	mv t2, t0
	sw t2, 3228(sp)
	lw t0, 3212(sp)
	lw t1, 3216(sp)
	beq t0, t1, .LBB95
	j .LBB96
.LBB95: 
	lw t0, 40(sp)
	lw t2, 0(t0)
	sw t2, 3232(sp)
	lw t0, 20(sp)
	lw t2, 0(t0)
	sw t2, 3236(sp)
	lw t0, 3232(sp)
	lw t1, 3236(sp)
	xor t2, t0, t1
	sw t2, 3240(sp)
	lw t0, 3240(sp)
	seqz t2, t0
	sw t2, 3244(sp)
	lw t0, 3244(sp)
	mv t2, t0
	sw t2, 3228(sp)
	j .LBB96
.LBB96: 
	lw t0, 3228(sp)
	bnez t0, .LBB97
	j .LBB98
.LBB97: 
	lw t0, 28(sp)
	lw t2, 0(t0)
	sw t2, 3248(sp)
	li t2, 1
	sw t2, 3252(sp)
	lw t0, 3252(sp)
	lw t1, 28(sp)
	sw t0, 0(t1)
	j .LBB98
.LBB98: 
	j .LBB99
.LBB99: 
	lw t0, 28(sp)
	lw t2, 0(t0)
	sw t2, 3256(sp)
	li t2, 1
	sw t2, 3260(sp)
	lw t0, 3256(sp)
	lw t1, 3260(sp)
	beq t0, t1, .LBB100
	j .LBB101
.LBB100: 
	j .LBB16
	j .LBB101
.LBB101: 
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 3264(sp)
	lw t0, 4(sp)
	lw t2, 0(t0)
	sw t2, 3268(sp)
	lw t0, 3268(sp)
	addi t2, t0, 1
	sw t2, 3272(sp)
	lw t0, 3272(sp)
	lw t1, 4(sp)
	sw t0, 0(t1)
	j .LBB14

	.globl	check
	.p2align	2
check:
.LBB102: 
	addi sp, sp, -52
	sw ra, 48(sp)
	mv t2, a0
	sw t2, 0(sp)
	mv t2, a1
	sw t2, 4(sp)
	li a0, 4
	call malloc
	mv t2, a0
	sw t2, 8(sp)
	lw t0, 0(sp)
	lw t1, 8(sp)
	sw t0, 0(t1)
	li a0, 4
	call malloc
	mv t2, a0
	sw t2, 12(sp)
	lw t0, 4(sp)
	lw t1, 12(sp)
	sw t0, 0(t1)
	lw t0, 8(sp)
	lw t2, 0(t0)
	sw t2, 16(sp)
	lw t0, 12(sp)
	lw t2, 0(t0)
	sw t2, 20(sp)
	lw t0, 16(sp)
	lw t1, 20(sp)
	slt t2, t0, t1
	sw t2, 24(sp)
	lw t0, 24(sp)
	mv t2, t0
	sw t2, 28(sp)
	lw t0, 16(sp)
	lw t1, 20(sp)
	blt t0, t1, .LBB103
	j .LBB104
.LBB103: 
	lw t0, 8(sp)
	lw t2, 0(t0)
	sw t2, 32(sp)
	lw t0, 32(sp)
	slti t2, t0, 0
	sw t2, 36(sp)
	lw t0, 36(sp)
	xori t2, t0, 1
	sw t2, 36(sp)
	lw t0, 36(sp)
	mv t2, t0
	sw t2, 28(sp)
	j .LBB104
.LBB104: 
	lw t0, 28(sp)
	mv a0, t0
	lw ra, 48(sp)
	addi sp, sp, 52
	ret


	.section	.data
.str.0:
	.asciz	"no solution!\n"

