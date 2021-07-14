%string = type { , i8*}

%array = type { }


define void @print(i8* %str)

define void @println(i8* %str)

define void @printInt(i32 %n)

define void @printlnInt(i32 %n)

define i8* @getString()

define i32 @getInt()

define i8* @toString(i32 %i)

define i8* @malloc(i32 %size)

define i8* @stringAdd(i8* %str1, i8* %str2)

define i1 @stringEq(i8* %str1, i8* %str2)

define i1 @stringNe(i8* %str1, i8* %str2)

define i1 @stringGe(i8* %str1, i8* %str2)

define i1 @stringGe(i8* %str1, i8* %str2)

define i1 @stringLe(i8* %str1, i8* %str2)

define i1 @stringLe(i8* %str1, i8* %str2)

define i32 @string__length(i8* %str)

define i8* @string__substring(i8* %str, i32 %left, i32 %right)

define i32 @string__parseInt(i8* %str)

define i32 @string__ord(i8* %str, i32 %pos)

define i32 @array__size(i8* %arr)

define void @init_main(){
entry:

}


define i32 @main(){
entry:
    call void init_main()
    %a = alloca i32*
    %b = alloca i1*
    %c = alloca i8**
    %flag = alloca i1*
    store i1 1 i1* %flag
    %loadReg = load i1 i1* %b
    %loadReg__1 = load i1 i1* %b
    %eqReg = icmp eq i1 %loadReg %loadReg__1
    br i1 %eqReg, label %ifTrue, label %ifEnd

ifTrue:
    %loadReg__2 = load i1 i1* %flag
    store i1 0 i1* %flag
    br label %ifEnd

ifEnd:
    %b__1 = alloca i32*
    %c__1 = alloca i1*
    %a__1 = alloca i32*
    %c__2 = alloca i32*
    %loadReg__3 = load i32 i32* %a__1
    %loadReg__4 = load i32 i32* %a__1
    %addReg = add i32 %loadReg__3 %loadReg__4
    %loadReg__5 = load i32 i32* %a__1
    %subReg = sub i32 %addReg %loadReg__5
    %loadReg__6 = load i32 i32* %a__1
    %eqReg__1 = icmp eq i32 %subReg %loadReg__6
    br i1 %eqReg__1, label %ifTrue1, label %ifEnd1

ifTrue1:
    %loadReg__7 = load i1 i1* %flag
    store i1 1 i1* %flag
    br label %ifEnd1

ifEnd1:
    %a__2 = alloca i1*
    %b__2 = alloca i8**
    %pureSize = mul i32 1 4
    %realSize = add i32 %pureSize 4
    %mallocReg = call i8* malloc(i32 %realSize)
    %castReg = bitcast i8* %mallocReg to i32*
    store i32 1 i32* %castReg
    %HeadI32Ptr = getelementptr i32 i32* %castReg i32 1
    %HeadPtr = bitcast i32 %HeadI32Ptr to i32********************
    %TailPtr = getelementptr i32******************* i32******************** %HeadPtr i32 1
    %nowPtrAddr = alloca i32********************
    store i32******************** %HeadPtr i32********************* %nowPtrAddr
    br label %loopCond

loopCond:
    %nowPtr = load i32******************** i32********************* %nowPtrAddr
    %icmpReg = icmp slt i32******************** %nowPtr %TailPtr
    br i1 %icmpReg, label %loopBody, label %loopEnd

loopBody:
    %pureSize__1 = mul i32 1 4
    %realSize__1 = add i32 %pureSize__1 4
    %mallocReg__1 = call i8* malloc(i32 %realSize__1)
    %castReg__1 = bitcast i8* %mallocReg__1 to i32*
    store i32 1 i32* %castReg__1
    %HeadI32Ptr__1 = getelementptr i32 i32* %castReg__1 i32 1
    %HeadPtr__1 = bitcast i32 %HeadI32Ptr__1 to i32*******************
    %TailPtr__1 = getelementptr i32****************** i32******************* %HeadPtr__1 i32 1
    %nowPtrAddr__1 = alloca i32*******************
    store i32******************* %HeadPtr__1 i32******************** %nowPtrAddr__1
    br label %loopCond1

loopCond1:
    %nowPtr__1 = load i32******************* i32******************** %nowPtrAddr__1
    %icmpReg = icmp slt i32******************* %nowPtr__1 %TailPtr__1
    br i1 %icmpReg, label %loopBody1, label %loopEnd1

loopBody1:
    %pureSize__2 = mul i32 1 4
    %realSize__2 = add i32 %pureSize__2 4
    %mallocReg__2 = call i8* malloc(i32 %realSize__2)
    %castReg__2 = bitcast i8* %mallocReg__2 to i32*
    store i32 1 i32* %castReg__2
    %HeadI32Ptr__2 = getelementptr i32 i32* %castReg__2 i32 1
    %HeadPtr__2 = bitcast i32 %HeadI32Ptr__2 to i32******************
    %TailPtr__2 = getelementptr i32***************** i32****************** %HeadPtr__2 i32 1
    %nowPtrAddr__2 = alloca i32******************
    store i32****************** %HeadPtr__2 i32******************* %nowPtrAddr__2
    br label %loopCond2

loopCond2:
    %nowPtr__2 = load i32****************** i32******************* %nowPtrAddr__2
    %icmpReg = icmp slt i32****************** %nowPtr__2 %TailPtr__2
    br i1 %icmpReg, label %loopBody2, label %loopEnd2

loopBody2:
    %pureSize__3 = mul i32 1 4
    %realSize__3 = add i32 %pureSize__3 4
    %mallocReg__3 = call i8* malloc(i32 %realSize__3)
    %castReg__3 = bitcast i8* %mallocReg__3 to i32*
    store i32 1 i32* %castReg__3
    %HeadI32Ptr__3 = getelementptr i32 i32* %castReg__3 i32 1
    %HeadPtr__3 = bitcast i32 %HeadI32Ptr__3 to i32*****************
    %TailPtr__3 = getelementptr i32**************** i32***************** %HeadPtr__3 i32 1
    %nowPtrAddr__3 = alloca i32*****************
    store i32***************** %HeadPtr__3 i32****************** %nowPtrAddr__3
    br label %loopCond3

loopCond3:
    %nowPtr__3 = load i32***************** i32****************** %nowPtrAddr__3
    %icmpReg = icmp slt i32***************** %nowPtr__3 %TailPtr__3
    br i1 %icmpReg, label %loopBody3, label %loopEnd3

loopBody3:
    %pureSize__4 = mul i32 1 4
    %realSize__4 = add i32 %pureSize__4 4
    %mallocReg__4 = call i8* malloc(i32 %realSize__4)
    %castReg__4 = bitcast i8* %mallocReg__4 to i32*
    store i32 1 i32* %castReg__4
    %HeadI32Ptr__4 = getelementptr i32 i32* %castReg__4 i32 1
    %HeadPtr__4 = bitcast i32 %HeadI32Ptr__4 to i32****************
    %TailPtr__4 = getelementptr i32*************** i32**************** %HeadPtr__4 i32 1
    %nowPtrAddr__4 = alloca i32****************
    store i32**************** %HeadPtr__4 i32***************** %nowPtrAddr__4
    br label %loopCond4

loopCond4:
    %nowPtr__4 = load i32**************** i32***************** %nowPtrAddr__4
    %icmpReg = icmp slt i32**************** %nowPtr__4 %TailPtr__4
    br i1 %icmpReg, label %loopBody4, label %loopEnd4

loopBody4:
    %pureSize__5 = mul i32 1 4
    %realSize__5 = add i32 %pureSize__5 4
    %mallocReg__5 = call i8* malloc(i32 %realSize__5)
    %castReg__5 = bitcast i8* %mallocReg__5 to i32*
    store i32 1 i32* %castReg__5
    %HeadI32Ptr__5 = getelementptr i32 i32* %castReg__5 i32 1
    %HeadPtr__5 = bitcast i32 %HeadI32Ptr__5 to i32***************
    %TailPtr__5 = getelementptr i32************** i32*************** %HeadPtr__5 i32 1
    %nowPtrAddr__5 = alloca i32***************
    store i32*************** %HeadPtr__5 i32**************** %nowPtrAddr__5
    br label %loopCond5

loopCond5:
    %nowPtr__5 = load i32*************** i32**************** %nowPtrAddr__5
    %icmpReg = icmp slt i32*************** %nowPtr__5 %TailPtr__5
    br i1 %icmpReg, label %loopBody5, label %loopEnd5

loopBody5:
    %pureSize__6 = mul i32 1 4
    %realSize__6 = add i32 %pureSize__6 4
    %mallocReg__6 = call i8* malloc(i32 %realSize__6)
    %castReg__6 = bitcast i8* %mallocReg__6 to i32*
    store i32 1 i32* %castReg__6
    %HeadI32Ptr__6 = getelementptr i32 i32* %castReg__6 i32 1
    %HeadPtr__6 = bitcast i32 %HeadI32Ptr__6 to i32**************
    %TailPtr__6 = getelementptr i32************* i32************** %HeadPtr__6 i32 1
    %nowPtrAddr__6 = alloca i32**************
    store i32************** %HeadPtr__6 i32*************** %nowPtrAddr__6
    br label %loopCond6

loopCond6:
    %nowPtr__6 = load i32************** i32*************** %nowPtrAddr__6
    %icmpReg = icmp slt i32************** %nowPtr__6 %TailPtr__6
    br i1 %icmpReg, label %loopBody6, label %loopEnd6

loopBody6:
    %pureSize__7 = mul i32 1 4
    %realSize__7 = add i32 %pureSize__7 4
    %mallocReg__7 = call i8* malloc(i32 %realSize__7)
    %castReg__7 = bitcast i8* %mallocReg__7 to i32*
    store i32 1 i32* %castReg__7
    %HeadI32Ptr__7 = getelementptr i32 i32* %castReg__7 i32 1
    %HeadPtr__7 = bitcast i32 %HeadI32Ptr__7 to i32*************
    %TailPtr__7 = getelementptr i32************ i32************* %HeadPtr__7 i32 1
    %nowPtrAddr__7 = alloca i32*************
    store i32************* %HeadPtr__7 i32************** %nowPtrAddr__7
    br label %loopCond7

loopCond7:
    %nowPtr__7 = load i32************* i32************** %nowPtrAddr__7
    %icmpReg = icmp slt i32************* %nowPtr__7 %TailPtr__7
    br i1 %icmpReg, label %loopBody7, label %loopEnd7

loopBody7:
    %pureSize__8 = mul i32 1 4
    %realSize__8 = add i32 %pureSize__8 4
    %mallocReg__8 = call i8* malloc(i32 %realSize__8)
    %castReg__8 = bitcast i8* %mallocReg__8 to i32*
    store i32 1 i32* %castReg__8
    %HeadI32Ptr__8 = getelementptr i32 i32* %castReg__8 i32 1
    %HeadPtr__8 = bitcast i32 %HeadI32Ptr__8 to i32************
    %TailPtr__8 = getelementptr i32*********** i32************ %HeadPtr__8 i32 1
    %nowPtrAddr__8 = alloca i32************
    store i32************ %HeadPtr__8 i32************* %nowPtrAddr__8
    br label %loopCond8

loopCond8:
    %nowPtr__8 = load i32************ i32************* %nowPtrAddr__8
    %icmpReg = icmp slt i32************ %nowPtr__8 %TailPtr__8
    br i1 %icmpReg, label %loopBody8, label %loopEnd8

loopBody8:
    %pureSize__9 = mul i32 1 4
    %realSize__9 = add i32 %pureSize__9 4
    %mallocReg__9 = call i8* malloc(i32 %realSize__9)
    %castReg__9 = bitcast i8* %mallocReg__9 to i32*
    store i32 1 i32* %castReg__9
    %HeadI32Ptr__9 = getelementptr i32 i32* %castReg__9 i32 1
    %HeadPtr__9 = bitcast i32 %HeadI32Ptr__9 to i32***********
    %TailPtr__9 = getelementptr i32********** i32*********** %HeadPtr__9 i32 1
    %nowPtrAddr__9 = alloca i32***********
    store i32*********** %HeadPtr__9 i32************ %nowPtrAddr__9
    br label %loopCond9

loopCond9:
    %nowPtr__9 = load i32*********** i32************ %nowPtrAddr__9
    %icmpReg = icmp slt i32*********** %nowPtr__9 %TailPtr__9
    br i1 %icmpReg, label %loopBody9, label %loopEnd9

loopBody9:
    %pureSize__10 = mul i32 1 4
    %realSize__10 = add i32 %pureSize__10 4
    %mallocReg__10 = call i8* malloc(i32 %realSize__10)
    %castReg__10 = bitcast i8* %mallocReg__10 to i32*
    store i32 1 i32* %castReg__10
    %HeadI32Ptr__10 = getelementptr i32 i32* %castReg__10 i32 1
    %HeadPtr__10 = bitcast i32 %HeadI32Ptr__10 to i32**********
    %TailPtr__10 = getelementptr i32********* i32********** %HeadPtr__10 i32 1
    %nowPtrAddr__10 = alloca i32**********
    store i32********** %HeadPtr__10 i32*********** %nowPtrAddr__10
    br label %loopCond10

loopCond10:
    %nowPtr__10 = load i32********** i32*********** %nowPtrAddr__10
    %icmpReg = icmp slt i32********** %nowPtr__10 %TailPtr__10
    br i1 %icmpReg, label %loopBody10, label %loopEnd10

loopBody10:
    %pureSize__11 = mul i32 1 4
    %realSize__11 = add i32 %pureSize__11 4
    %mallocReg__11 = call i8* malloc(i32 %realSize__11)
    %castReg__11 = bitcast i8* %mallocReg__11 to i32*
    store i32 1 i32* %castReg__11
    %HeadI32Ptr__11 = getelementptr i32 i32* %castReg__11 i32 1
    %HeadPtr__11 = bitcast i32 %HeadI32Ptr__11 to i32*********
    %TailPtr__11 = getelementptr i32******** i32********* %HeadPtr__11 i32 1
    %nowPtrAddr__11 = alloca i32*********
    store i32********* %HeadPtr__11 i32********** %nowPtrAddr__11
    br label %loopCond11

loopCond11:
    %nowPtr__11 = load i32********* i32********** %nowPtrAddr__11
    %icmpReg = icmp slt i32********* %nowPtr__11 %TailPtr__11
    br i1 %icmpReg, label %loopBody11, label %loopEnd11

loopBody11:
    %pureSize__12 = mul i32 1 4
    %realSize__12 = add i32 %pureSize__12 4
    %mallocReg__12 = call i8* malloc(i32 %realSize__12)
    %castReg__12 = bitcast i8* %mallocReg__12 to i32*
    store i32 1 i32* %castReg__12
    %HeadI32Ptr__12 = getelementptr i32 i32* %castReg__12 i32 1
    %HeadPtr__12 = bitcast i32 %HeadI32Ptr__12 to i32********
    %TailPtr__12 = getelementptr i32******* i32******** %HeadPtr__12 i32 1
    %nowPtrAddr__12 = alloca i32********
    store i32******** %HeadPtr__12 i32********* %nowPtrAddr__12
    br label %loopCond12

loopCond12:
    %nowPtr__12 = load i32******** i32********* %nowPtrAddr__12
    %icmpReg = icmp slt i32******** %nowPtr__12 %TailPtr__12
    br i1 %icmpReg, label %loopBody12, label %loopEnd12

loopBody12:
    %pureSize__13 = mul i32 1 4
    %realSize__13 = add i32 %pureSize__13 4
    %mallocReg__13 = call i8* malloc(i32 %realSize__13)
    %castReg__13 = bitcast i8* %mallocReg__13 to i32*
    store i32 1 i32* %castReg__13
    %HeadI32Ptr__13 = getelementptr i32 i32* %castReg__13 i32 1
    %HeadPtr__13 = bitcast i32 %HeadI32Ptr__13 to i32*******
    %TailPtr__13 = getelementptr i32****** i32******* %HeadPtr__13 i32 1
    %nowPtrAddr__13 = alloca i32*******
    store i32******* %HeadPtr__13 i32******** %nowPtrAddr__13
    br label %loopCond13

loopCond13:
    %nowPtr__13 = load i32******* i32******** %nowPtrAddr__13
    %icmpReg = icmp slt i32******* %nowPtr__13 %TailPtr__13
    br i1 %icmpReg, label %loopBody13, label %loopEnd13

loopBody13:
    %pureSize__14 = mul i32 1 4
    %realSize__14 = add i32 %pureSize__14 4
    %mallocReg__14 = call i8* malloc(i32 %realSize__14)
    %castReg__14 = bitcast i8* %mallocReg__14 to i32*
    store i32 1 i32* %castReg__14
    %HeadI32Ptr__14 = getelementptr i32 i32* %castReg__14 i32 1
    %HeadPtr__14 = bitcast i32 %HeadI32Ptr__14 to i32******
    store i32****** %HeadPtr__14 i32******* %nowPtr__13
    %nxtPtr = getelementptr i32****** i32******* %nowPtr__13 i32 1
    store i32******* %nxtPtr i32******** %nowPtrAddr__13
    br label %loopCond13

loopEnd13:
    store i32******* %HeadPtr__13 i32******** %nowPtr__12
    %nxtPtr__1 = getelementptr i32******* i32******** %nowPtr__12 i32 1
    store i32******** %nxtPtr__1 i32********* %nowPtrAddr__12
    br label %loopCond12

loopEnd12:
    store i32******** %HeadPtr__12 i32********* %nowPtr__11
    %nxtPtr__2 = getelementptr i32******** i32********* %nowPtr__11 i32 1
    store i32********* %nxtPtr__2 i32********** %nowPtrAddr__11
    br label %loopCond11

loopEnd11:
    store i32********* %HeadPtr__11 i32********** %nowPtr__10
    %nxtPtr__3 = getelementptr i32********* i32********** %nowPtr__10 i32 1
    store i32********** %nxtPtr__3 i32*********** %nowPtrAddr__10
    br label %loopCond10

loopEnd10:
    store i32********** %HeadPtr__10 i32*********** %nowPtr__9
    %nxtPtr__4 = getelementptr i32********** i32*********** %nowPtr__9 i32 1
    store i32*********** %nxtPtr__4 i32************ %nowPtrAddr__9
    br label %loopCond9

loopEnd9:
    store i32*********** %HeadPtr__9 i32************ %nowPtr__8
    %nxtPtr__5 = getelementptr i32*********** i32************ %nowPtr__8 i32 1
    store i32************ %nxtPtr__5 i32************* %nowPtrAddr__8
    br label %loopCond8

loopEnd8:
    store i32************ %HeadPtr__8 i32************* %nowPtr__7
    %nxtPtr__6 = getelementptr i32************ i32************* %nowPtr__7 i32 1
    store i32************* %nxtPtr__6 i32************** %nowPtrAddr__7
    br label %loopCond7

loopEnd7:
    store i32************* %HeadPtr__7 i32************** %nowPtr__6
    %nxtPtr__7 = getelementptr i32************* i32************** %nowPtr__6 i32 1
    store i32************** %nxtPtr__7 i32*************** %nowPtrAddr__6
    br label %loopCond6

loopEnd6:
    store i32************** %HeadPtr__6 i32*************** %nowPtr__5
    %nxtPtr__8 = getelementptr i32************** i32*************** %nowPtr__5 i32 1
    store i32*************** %nxtPtr__8 i32**************** %nowPtrAddr__5
    br label %loopCond5

loopEnd5:
    store i32*************** %HeadPtr__5 i32**************** %nowPtr__4
    %nxtPtr__9 = getelementptr i32*************** i32**************** %nowPtr__4 i32 1
    store i32**************** %nxtPtr__9 i32***************** %nowPtrAddr__4
    br label %loopCond4

loopEnd4:
    store i32**************** %HeadPtr__4 i32***************** %nowPtr__3
    %nxtPtr__10 = getelementptr i32**************** i32***************** %nowPtr__3 i32 1
    store i32***************** %nxtPtr__10 i32****************** %nowPtrAddr__3
    br label %loopCond3

loopEnd3:
    store i32***************** %HeadPtr__3 i32****************** %nowPtr__2
    %nxtPtr__11 = getelementptr i32***************** i32****************** %nowPtr__2 i32 1
    store i32****************** %nxtPtr__11 i32******************* %nowPtrAddr__2
    br label %loopCond2

loopEnd2:
    store i32****************** %HeadPtr__2 i32******************* %nowPtr__1
    %nxtPtr__12 = getelementptr i32****************** i32******************* %nowPtr__1 i32 1
    store i32******************* %nxtPtr__12 i32******************** %nowPtrAddr__1
    br label %loopCond1

loopEnd1:
    store i32******************* %HeadPtr__1 i32******************** %nowPtr
    %nxtPtr__13 = getelementptr i32******************* i32******************** %nowPtr i32 1
    store i32******************** %nxtPtr__13 i32********************* %nowPtrAddr
    br label %loopCond

loopEnd:
    %mallocReg__15 = call i8* malloc(i32 4)
    %castReg__15 = bitcast i8* %mallocReg__15 to i32*********************
    store i32******************** %HeadPtr i32********************* %castReg__15
    %a__3 = alloca i32*********************
    store i32******************** %HeadPtr i32********************* %a__3
    ret i32 0
    ret i32 0
    ret i32 0

}

