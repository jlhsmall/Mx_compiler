	.text

	.globl	init_main
	.p2align	2
init_main:
.LBB0: 
	mv %0, s0
	mv %1, s1
	mv %2, s2
	mv %3, s3
	mv %4, s4
	mv %5, s5
	mv %6, s6
	mv %7, s7
	mv %8, s8
	mv %9, s9
	mv %10, s10
	mv %11, s11
	mv a0, zero
	j .LBB1
.LBB1: 
	mv s0, %0
	mv s1, %1
	mv s2, %2
	mv s3, %3
	mv s4, %4
	mv s5, %5
	mv s6, %6
	mv s7, %7
	mv s8, %8
	mv s9, %9
	mv s10, %10
	mv s11, %11

	.globl	main
	.p2align	2
main:
.LBB2: 
	mv %12, s0
	mv %13, s1
	mv %14, s2
	mv %15, s3
	mv %16, s4
	mv %17, s5
	mv %18, s6
	mv %19, s7
	mv %20, s8
	mv %21, s9
	mv %22, s10
	mv %23, s11
	mv %24, ra
	mv %25, t0
	mv %26, t1
	mv %27, t2
	mv %28, a0
	mv %29, a1
	mv %30, a2
	mv %31, a3
	mv %32, a4
	mv %33, a5
	mv %34, a6
	mv %35, a7
	mv %36, t3
	mv %37, t4
	mv %38, t5
	mv %39, t6
	call init_main
	mv ra, %24
	mv t0, %25
	mv t1, %26
	mv t2, %27
	mv a0, %28
	mv a1, %29
	mv a2, %30
	mv a3, %31
	mv a4, %32
	mv a5, %33
	mv a6, %34
	mv a7, %35
	mv t3, %36
	mv t4, %37
	mv t5, %38
	mv t6, %39
	la %40, n
	mv %41, ra
	mv %42, t0
	mv %43, t1
	mv %44, t2
	mv %45, a0
	mv %46, a1
	mv %47, a2
	mv %48, a3
	mv %49, a4
	mv %50, a5
	mv %51, a6
	mv %52, a7
	mv %53, t3
	mv %54, t4
	mv %55, t5
	mv %56, t6
	call getInt
	mv %57, a0
	mv ra, %41
	mv t0, %42
	mv t1, %43
	mv t2, %44
	mv a0, %45
	mv a1, %46
	mv a2, %47
	mv a3, %48
	mv a4, %49
	mv a5, %50
	mv a6, %51
	mv a7, %52
	mv t3, %53
	mv t4, %54
	mv t5, %55
	mv t6, %56
	mv %58, ra
	mv %59, t0
	mv %60, t1
	mv %61, t2
	mv %62, a0
	mv %63, a1
	mv %64, a2
	mv %65, a3
	mv %66, a4
	mv %67, a5
	mv %68, a6
	mv %69, a7
	mv %70, t3
	mv %71, t4
	mv %72, t5
	mv %73, t6
	li %74, 4
	mv a0, %74
	call malloc
	mv %75, a0
	mv ra, %58
	mv t0, %59
	mv t1, %60
	mv t2, %61
	mv a0, %62
	mv a1, %63
	mv a2, %64
	mv a3, %65
	mv a4, %66
	mv a5, %67
	mv a6, %68
	mv a7, %69
	mv t3, %70
	mv t4, %71
	mv t5, %72
	mv t6, %73
	mv %76, %75
	sw %57, 0(%76)
	lui %77, %hi(n)
	sw %57, %lo(n)(%77)
	la %78, p
	mv %79, ra
	mv %80, t0
	mv %81, t1
	mv %82, t2
	mv %83, a0
	mv %84, a1
	mv %85, a2
	mv %86, a3
	mv %87, a4
	mv %88, a5
	mv %89, a6
	mv %90, a7
	mv %91, t3
	mv %92, t4
	mv %93, t5
	mv %94, t6
	call getInt
	mv %95, a0
	mv ra, %79
	mv t0, %80
	mv t1, %81
	mv t2, %82
	mv a0, %83
	mv a1, %84
	mv a2, %85
	mv a3, %86
	mv a4, %87
	mv a5, %88
	mv a6, %89
	mv a7, %90
	mv t3, %91
	mv t4, %92
	mv t5, %93
	mv t6, %94
	mv %96, ra
	mv %97, t0
	mv %98, t1
	mv %99, t2
	mv %100, a0
	mv %101, a1
	mv %102, a2
	mv %103, a3
	mv %104, a4
	mv %105, a5
	mv %106, a6
	mv %107, a7
	mv %108, t3
	mv %109, t4
	mv %110, t5
	mv %111, t6
	li %112, 4
	mv a0, %112
	call malloc
	mv %113, a0
	mv ra, %96
	mv t0, %97
	mv t1, %98
	mv t2, %99
	mv a0, %100
	mv a1, %101
	mv a2, %102
	mv a3, %103
	mv a4, %104
	mv a5, %105
	mv a6, %106
	mv a7, %107
	mv t3, %108
	mv t4, %109
	mv t5, %110
	mv t6, %111
	mv %114, %113
	sw %95, 0(%114)
	lui %115, %hi(p)
	sw %95, %lo(p)(%115)
	la %116, k
	mv %117, ra
	mv %118, t0
	mv %119, t1
	mv %120, t2
	mv %121, a0
	mv %122, a1
	mv %123, a2
	mv %124, a3
	mv %125, a4
	mv %126, a5
	mv %127, a6
	mv %128, a7
	mv %129, t3
	mv %130, t4
	mv %131, t5
	mv %132, t6
	call getInt
	mv %133, a0
	mv ra, %117
	mv t0, %118
	mv t1, %119
	mv t2, %120
	mv a0, %121
	mv a1, %122
	mv a2, %123
	mv a3, %124
	mv a4, %125
	mv a5, %126
	mv a6, %127
	mv a7, %128
	mv t3, %129
	mv t4, %130
	mv t5, %131
	mv t6, %132
	mv %134, ra
	mv %135, t0
	mv %136, t1
	mv %137, t2
	mv %138, a0
	mv %139, a1
	mv %140, a2
	mv %141, a3
	mv %142, a4
	mv %143, a5
	mv %144, a6
	mv %145, a7
	mv %146, t3
	mv %147, t4
	mv %148, t5
	mv %149, t6
	li %150, 4
	mv a0, %150
	call malloc
	mv %151, a0
	mv ra, %134
	mv t0, %135
	mv t1, %136
	mv t2, %137
	mv a0, %138
	mv a1, %139
	mv a2, %140
	mv a3, %141
	mv a4, %142
	mv a5, %143
	mv a6, %144
	mv a7, %145
	mv t3, %146
	mv t4, %147
	mv t5, %148
	mv t6, %149
	mv %152, %151
	sw %133, 0(%152)
	lui %153, %hi(k)
	sw %133, %lo(k)(%153)
	la %154, p
	la %155, k
	sub %156, %154, %155
	li %157, 1
	blt %157, %156, .LBB3
	j .LBB4
.LBB3: 
	la %158, .str.1
	mv %159, ra
	mv %160, t0
	mv %161, t1
	mv %162, t2
	mv %163, a0
	mv %164, a1
	mv %165, a2
	mv %166, a3
	mv %167, a4
	mv %168, a5
	mv %169, a6
	mv %170, a7
	mv %171, t3
	mv %172, t4
	mv %173, t5
	mv %174, t6
	mv a0, %158
	call print
	mv %175, a0
	mv ra, %159
	mv t0, %160
	mv t1, %161
	mv t2, %162
	mv a0, %163
	mv a1, %164
	mv a2, %165
	mv a3, %166
	mv a4, %167
	mv a5, %168
	mv a6, %169
	mv a7, %170
	mv t3, %171
	mv t4, %172
	mv t5, %173
	mv t6, %174
	j .LBB4
.LBB4: 
	la %176, i
	la %177, p
	la %178, k
	sub %179, %177, %178
	lui %180, %hi(i)
	sw %179, %lo(i)(%180)
	j .LBB5
.LBB5: 
	la %181, i
	la %182, p
	la %183, k
	add %184, %182, %183
	bge %184, %181, .LBB6
	j .LBB7
.LBB6: 
	la %185, i
	slti %186, %185, 1
	xori %186, %186, 1
	mv %187, %186
	li %188, 1
	bge %185, %188, .LBB8
	j .LBB9
.LBB7: 
	la %323, p
	la %324, k
	add %325, %323, %324
	la %326, n
	blt %325, %326, .LBB11
	j .LBB10
.LBB8: 
	la %189, i
	la %190, n
	slt %191, %190, %189
	xori %191, %191, 1
	mv %187, %191
	j .LBB9
.LBB9: 
	bnez %187, .LBB12
	j .LBB13
.LBB10: 
	mv a0, zero
	j .LBB14
.LBB11: 
	la %327, .str.3
	mv %328, ra
	mv %329, t0
	mv %330, t1
	mv %331, t2
	mv %332, a0
	mv %333, a1
	mv %334, a2
	mv %335, a3
	mv %336, a4
	mv %337, a5
	mv %338, a6
	mv %339, a7
	mv %340, t3
	mv %341, t4
	mv %342, t5
	mv %343, t6
	mv a0, %327
	call print
	mv %344, a0
	mv ra, %328
	mv t0, %329
	mv t1, %330
	mv t2, %331
	mv a0, %332
	mv a1, %333
	mv a2, %334
	mv a3, %335
	mv a4, %336
	mv a5, %337
	mv a6, %338
	mv a7, %339
	mv t3, %340
	mv t4, %341
	mv t5, %342
	mv t6, %343
	j .LBB10
.LBB12: 
	la %192, i
	la %193, p
	beq %192, %193, .LBB16
	j .LBB15
.LBB13: 
	j .LBB17
.LBB14: 
	mv s0, %12
	mv s1, %13
	mv s2, %14
	mv s3, %15
	mv s4, %16
	mv s5, %17
	mv s6, %18
	mv s7, %19
	mv s8, %20
	mv s9, %21
	mv s10, %22
	mv s11, %23
.LBB15: 
	la %284, i
	mv %285, ra
	mv %286, t0
	mv %287, t1
	mv %288, t2
	mv %289, a0
	mv %290, a1
	mv %291, a2
	mv %292, a3
	mv %293, a4
	mv %294, a5
	mv %295, a6
	mv %296, a7
	mv %297, t3
	mv %298, t4
	mv %299, t5
	mv %300, t6
	mv a0, %284
	call printInt
	mv %301, a0
	mv ra, %285
	mv t0, %286
	mv t1, %287
	mv t2, %288
	mv a0, %289
	mv a1, %290
	mv a2, %291
	mv a3, %292
	mv a4, %293
	mv a5, %294
	mv a6, %295
	mv a7, %296
	mv t3, %297
	mv t4, %298
	mv t5, %299
	mv t6, %300
	la %302, .str.2
	mv %303, ra
	mv %304, t0
	mv %305, t1
	mv %306, t2
	mv %307, a0
	mv %308, a1
	mv %309, a2
	mv %310, a3
	mv %311, a4
	mv %312, a5
	mv %313, a6
	mv %314, a7
	mv %315, t3
	mv %316, t4
	mv %317, t5
	mv %318, t6
	mv a0, %302
	call print
	mv %319, a0
	mv ra, %303
	mv t0, %304
	mv t1, %305
	mv t2, %306
	mv a0, %307
	mv a1, %308
	mv a2, %309
	mv a3, %310
	mv a4, %311
	mv a5, %312
	mv a6, %313
	mv a7, %314
	mv t3, %315
	mv t4, %316
	mv t5, %317
	mv t6, %318
	j .LBB18
.LBB16: 
	la %194, .str.5
	mv %195, ra
	mv %196, t0
	mv %197, t1
	mv %198, t2
	mv %199, a0
	mv %200, a1
	mv %201, a2
	mv %202, a3
	mv %203, a4
	mv %204, a5
	mv %205, a6
	mv %206, a7
	mv %207, t3
	mv %208, t4
	mv %209, t5
	mv %210, t6
	mv a0, %194
	call print
	mv %211, a0
	mv ra, %195
	mv t0, %196
	mv t1, %197
	mv t2, %198
	mv a0, %199
	mv a1, %200
	mv a2, %201
	mv a3, %202
	mv a4, %203
	mv a5, %204
	mv a6, %205
	mv a7, %206
	mv t3, %207
	mv t4, %208
	mv t5, %209
	mv t6, %210
	la %212, i
	mv %213, ra
	mv %214, t0
	mv %215, t1
	mv %216, t2
	mv %217, a0
	mv %218, a1
	mv %219, a2
	mv %220, a3
	mv %221, a4
	mv %222, a5
	mv %223, a6
	mv %224, a7
	mv %225, t3
	mv %226, t4
	mv %227, t5
	mv %228, t6
	mv a0, %212
	call toString
	mv %229, a0
	mv ra, %213
	mv t0, %214
	mv t1, %215
	mv t2, %216
	mv a0, %217
	mv a1, %218
	mv a2, %219
	mv a3, %220
	mv a4, %221
	mv a5, %222
	mv a6, %223
	mv a7, %224
	mv t3, %225
	mv t4, %226
	mv t5, %227
	mv t6, %228
	mv %230, ra
	mv %231, t0
	mv %232, t1
	mv %233, t2
	mv %234, a0
	mv %235, a1
	mv %236, a2
	mv %237, a3
	mv %238, a4
	mv %239, a5
	mv %240, a6
	mv %241, a7
	mv %242, t3
	mv %243, t4
	mv %244, t5
	mv %245, t6
	li %246, 4
	mv a0, %246
	call malloc
	mv %247, a0
	mv ra, %230
	mv t0, %231
	mv t1, %232
	mv t2, %233
	mv a0, %234
	mv a1, %235
	mv a2, %236
	mv a3, %237
	mv a4, %238
	mv a5, %239
	mv a6, %240
	mv a7, %241
	mv t3, %242
	mv t4, %243
	mv t5, %244
	mv t6, %245
	mv %248, %247
	sw %229, 0(%248)
	mv %249, ra
	mv %250, t0
	mv %251, t1
	mv %252, t2
	mv %253, a0
	mv %254, a1
	mv %255, a2
	mv %256, a3
	mv %257, a4
	mv %258, a5
	mv %259, a6
	mv %260, a7
	mv %261, t3
	mv %262, t4
	mv %263, t5
	mv %264, t6
	mv a0, %229
	call print
	mv %265, a0
	mv ra, %249
	mv t0, %250
	mv t1, %251
	mv t2, %252
	mv a0, %253
	mv a1, %254
	mv a2, %255
	mv a3, %256
	mv a4, %257
	mv a5, %258
	mv a6, %259
	mv a7, %260
	mv t3, %261
	mv t4, %262
	mv t5, %263
	mv t6, %264
	la %266, .str.4
	mv %267, ra
	mv %268, t0
	mv %269, t1
	mv %270, t2
	mv %271, a0
	mv %272, a1
	mv %273, a2
	mv %274, a3
	mv %275, a4
	mv %276, a5
	mv %277, a6
	mv %278, a7
	mv %279, t3
	mv %280, t4
	mv %281, t5
	mv %282, t6
	mv a0, %266
	call print
	mv %283, a0
	mv ra, %267
	mv t0, %268
	mv t1, %269
	mv t2, %270
	mv a0, %271
	mv a1, %272
	mv a2, %273
	mv a3, %274
	mv a4, %275
	mv a5, %276
	mv a6, %277
	mv a7, %278
	mv t3, %279
	mv t4, %280
	mv t5, %281
	mv t6, %282
	j .LBB18
.LBB17: 
	la %320, i
	addi %321, %320, 1
	lui %322, %hi(i)
	sw %321, %lo(i)(%322)
	j .LBB5
.LBB18: 
	j .LBB13


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

