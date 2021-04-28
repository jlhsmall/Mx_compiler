%string = type { , i8*}

%array = type { }

@no solution!
 = global i8* c"no solution!
"

define i1 @stringEq(i8* %str1, i8* %str2)

define i32 @string__ord(i8* %str, i32 %pos)

define i8* @malloc(i32 %size)

define i1 @stringGe(i8* %str1, i8* %str2)

define i1 @stringLe(i8* %str1, i8* %str2)

define i8* @stringAdd(i8* %str1, i8* %str2)

define void @init_main(){
entry:

}


define i8* @getString()

define i1 @check(i32* %a, i32* %N){
entry:
    %loadReg = load i32 i32* %a
    %loadReg__1 = load i32 i32* %N
    %ltReg = icmp slt i32 %loadReg %loadReg__1
    move %LogicAndReg %ltReg
    br i1 %ltReg, label %andRhs, label %andEnd

andRhs:
    %loadReg__2 = load i32 i32* %a
    %geReg = icmp sge i32 %loadReg__2 0
    move %LogicAndReg %geReg
    br label %andEnd

andEnd:
    ret i1 %LogicAndReg

}


define i32 @getInt()

define void @print(i8* %str)

define void @println(i8* %str)

define i1 @stringGe(i8* %str1, i8* %str2)

define i32 @string__parseInt(i8* %str)

define i1 @stringNe(i8* %str1, i8* %str2)

define i1 @stringLe(i8* %str1, i8* %str2)

define void @printInt(i32 %n)

define i32 @string__length(i8* %str)

define i8* @string__substring(i8* %str, i32 %left, i32 %right)

define void @printlnInt(i32 %n)

define i8* @toString(i32 %i)

define i32 @array__size(i8* %arr)

define i32 @main(){
entry:
    call void init_main()
    %N = alloca i32*
    %head = alloca i32*
    %startx = alloca i32*
    %starty = alloca i32*
    %targetx = alloca i32*
    %targety = alloca i32*
    %tail = alloca i32*
    %ok = alloca i32*
    %now = alloca i32*
    %x = alloca i32*
    %y = alloca i32*
    %xlist = alloca i32**
    %ylist = alloca i32**
    %step = alloca i32***
    %i = alloca i32*
    %j = alloca i32*
    %loadReg = load i32 i32* %N
    %funcReg = call i32 getInt()
    store i32 %funcReg i32* %N
    %loadReg__1 = load i32 i32* %head
    store i32 0 i32* %head
    %loadReg__2 = load i32 i32* %tail
    store i32 0 i32* %tail
    %loadReg__3 = load i32 i32* %startx
    store i32 0 i32* %startx
    %loadReg__4 = load i32 i32* %starty
    store i32 0 i32* %starty
    %loadReg__5 = load i32 i32* %targetx
    %loadReg__6 = load i32 i32* %N
    %subReg = sub i32 %loadReg__6 1
    store i32 %subReg i32* %targetx
    %loadReg__7 = load i32 i32* %targety
    %loadReg__8 = load i32 i32* %N
    %subReg__1 = sub i32 %loadReg__8 1
    store i32 %subReg__1 i32* %targety
    %loadReg__9 = load i32 i32* %x
    store i32 0 i32* %x
    %loadReg__10 = load i32 i32* %y
    store i32 0 i32* %y
    %loadReg__11 = load i32 i32* %now
    store i32 0 i32* %now
    %loadReg__12 = load i32 i32* %ok
    store i32 0 i32* %ok
    %loadReg__13 = load i32* i32** %xlist
    %loadReg__14 = load i32 i32* %N
    %loadReg__15 = load i32 i32* %N
    %mulReg = mul i32 %loadReg__14 %loadReg__15
    %pureSize = mul i32 %mulReg 4
    %realSize = add i32 %pureSize 4
    %mallocReg = call i8* malloc(i32 %realSize)
    %castReg = bitcast i8* %mallocReg to i32*
    store i32 %mulReg i32* %castReg
    %HeadI32Ptr = getelementptr i32 i32* %castReg i32 1
    %HeadPtr = bitcast i32 %HeadI32Ptr to i32*
    %mallocReg__1 = call i8* malloc(i32 4)
    %castReg__1 = bitcast i8* %mallocReg__1 to i32**
    store i32* %HeadPtr i32** %castReg__1
    store i32* %HeadPtr i32** %xlist
    %loadReg__16 = load i32 i32* %i
    store i32 0 i32* %i
    br label %forCond

forCond:
    %loadReg__17 = load i32 i32* %i
    %loadReg__18 = load i32 i32* %N
    %loadReg__19 = load i32 i32* %N
    %mulReg__1 = mul i32 %loadReg__18 %loadReg__19
    %ltReg = icmp slt i32 %loadReg__17 %mulReg__1
    br i1 %ltReg, label %forBody, label %forEnd

forBody:
    %loadReg__20 = load i32* i32** %xlist
    %loadReg__21 = load i32 i32* %i
    %arrayReg = getelementptr i32 i32* %loadReg__20 i32 %loadReg__21
    %loadReg__22 = load i32 i32* %arrayReg
    store i32 0 i32* %arrayReg
    %loadReg__23 = load i32 i32* %i
    %addReg = add i32 %loadReg__23 1
    store i32 %addReg i32* %i
    br label %forCond

forEnd:
    %loadReg__24 = load i32* i32** %ylist
    %loadReg__25 = load i32 i32* %N
    %loadReg__26 = load i32 i32* %N
    %mulReg__2 = mul i32 %loadReg__25 %loadReg__26
    %pureSize__1 = mul i32 %mulReg__2 4
    %realSize__1 = add i32 %pureSize__1 4
    %mallocReg__2 = call i8* malloc(i32 %realSize__1)
    %castReg__2 = bitcast i8* %mallocReg__2 to i32*
    store i32 %mulReg__2 i32* %castReg__2
    %HeadI32Ptr__1 = getelementptr i32 i32* %castReg__2 i32 1
    %HeadPtr__1 = bitcast i32 %HeadI32Ptr__1 to i32*
    %mallocReg__3 = call i8* malloc(i32 4)
    %castReg__3 = bitcast i8* %mallocReg__3 to i32**
    store i32* %HeadPtr__1 i32** %castReg__3
    store i32* %HeadPtr__1 i32** %ylist
    %loadReg__27 = load i32 i32* %i
    store i32 0 i32* %i
    br label %forCond1

forCond1:
    %loadReg__28 = load i32 i32* %i
    %loadReg__29 = load i32 i32* %N
    %loadReg__30 = load i32 i32* %N
    %mulReg__3 = mul i32 %loadReg__29 %loadReg__30
    %ltReg__1 = icmp slt i32 %loadReg__28 %mulReg__3
    br i1 %ltReg__1, label %forBody1, label %forEnd1

forBody1:
    %loadReg__31 = load i32* i32** %ylist
    %loadReg__32 = load i32 i32* %i
    %arrayReg__1 = getelementptr i32 i32* %loadReg__31 i32 %loadReg__32
    %loadReg__33 = load i32 i32* %arrayReg__1
    store i32 0 i32* %arrayReg__1
    %loadReg__34 = load i32 i32* %i
    %addReg__1 = add i32 %loadReg__34 1
    store i32 %addReg__1 i32* %i
    br label %forCond1

forEnd1:
    %loadReg__35 = load i32** i32*** %step
    %loadReg__36 = load i32 i32* %N
    %pureSize__2 = mul i32 %loadReg__36 4
    %realSize__2 = add i32 %pureSize__2 4
    %mallocReg__4 = call i8* malloc(i32 %realSize__2)
    %castReg__4 = bitcast i8* %mallocReg__4 to i32*
    store i32 %loadReg__36 i32* %castReg__4
    %HeadI32Ptr__2 = getelementptr i32 i32* %castReg__4 i32 1
    %HeadPtr__2 = bitcast i32 %HeadI32Ptr__2 to i32**
    %mallocReg__5 = call i8* malloc(i32 4)
    %castReg__5 = bitcast i8* %mallocReg__5 to i32***
    store i32** %HeadPtr__2 i32*** %castReg__5
    store i32** %HeadPtr__2 i32*** %step
    %loadReg__37 = load i32 i32* %i
    store i32 0 i32* %i
    br label %forCond2

forCond2:
    %loadReg__38 = load i32 i32* %i
    %loadReg__39 = load i32 i32* %N
    %ltReg__2 = icmp slt i32 %loadReg__38 %loadReg__39
    br i1 %ltReg__2, label %forBody2, label %forEnd2

forBody2:
    %loadReg__40 = load i32** i32*** %step
    %loadReg__41 = load i32 i32* %i
    %arrayReg__2 = getelementptr i32* i32** %loadReg__40 i32 %loadReg__41
    %loadReg__42 = load i32* i32** %arrayReg__2
    %loadReg__43 = load i32 i32* %N
    %pureSize__3 = mul i32 %loadReg__43 4
    %realSize__3 = add i32 %pureSize__3 4
    %mallocReg__6 = call i8* malloc(i32 %realSize__3)
    %castReg__6 = bitcast i8* %mallocReg__6 to i32*
    store i32 %loadReg__43 i32* %castReg__6
    %HeadI32Ptr__3 = getelementptr i32 i32* %castReg__6 i32 1
    %HeadPtr__3 = bitcast i32 %HeadI32Ptr__3 to i32*
    %mallocReg__7 = call i8* malloc(i32 4)
    %castReg__7 = bitcast i8* %mallocReg__7 to i32**
    store i32* %HeadPtr__3 i32** %castReg__7
    store i32* %HeadPtr__3 i32** %arrayReg__2
    %loadReg__44 = load i32 i32* %j
    store i32 0 i32* %j
    br label %forCond3

forCond3:
    %loadReg__45 = load i32 i32* %j
    %loadReg__46 = load i32 i32* %N
    %ltReg__3 = icmp slt i32 %loadReg__45 %loadReg__46
    br i1 %ltReg__3, label %forBody3, label %forEnd3

forBody3:
    %loadReg__47 = load i32** i32*** %step
    %loadReg__48 = load i32 i32* %i
    %arrayReg__3 = getelementptr i32* i32** %loadReg__47 i32 %loadReg__48
    %loadReg__49 = load i32* i32** %arrayReg__3
    %loadReg__50 = load i32 i32* %j
    %arrayReg__4 = getelementptr i32 i32* %loadReg__49 i32 %loadReg__50
    %loadReg__51 = load i32 i32* %arrayReg__4
    %minusReg = sub i32 0 1
    store i32 %minusReg i32* %arrayReg__4
    %loadReg__52 = load i32 i32* %j
    %addReg__2 = add i32 %loadReg__52 1
    store i32 %addReg__2 i32* %j
    br label %forCond3

forEnd3:
    %loadReg__53 = load i32 i32* %i
    %addReg__3 = add i32 %loadReg__53 1
    store i32 %addReg__3 i32* %i
    br label %forCond2

forEnd2:
    %loadReg__54 = load i32* i32** %xlist
    %arrayReg__5 = getelementptr i32 i32* %loadReg__54 i32 0
    %loadReg__55 = load i32 i32* %arrayReg__5
    %loadReg__56 = load i32 i32* %startx
    store i32 %loadReg__56 i32* %arrayReg__5
    %loadReg__57 = load i32* i32** %ylist
    %arrayReg__6 = getelementptr i32 i32* %loadReg__57 i32 0
    %loadReg__58 = load i32 i32* %arrayReg__6
    %loadReg__59 = load i32 i32* %starty
    store i32 %loadReg__59 i32* %arrayReg__6
    %loadReg__60 = load i32** i32*** %step
    %loadReg__61 = load i32 i32* %startx
    %arrayReg__7 = getelementptr i32* i32** %loadReg__60 i32 %loadReg__61
    %loadReg__62 = load i32* i32** %arrayReg__7
    %loadReg__63 = load i32 i32* %starty
    %arrayReg__8 = getelementptr i32 i32* %loadReg__62 i32 %loadReg__63
    %loadReg__64 = load i32 i32* %arrayReg__8
    store i32 0 i32* %arrayReg__8
    br label %whileCond

whileCond:
    %loadReg__65 = load i32 i32* %head
    %loadReg__66 = load i32 i32* %tail
    %leReg = icmp sle i32 %loadReg__65 %loadReg__66
    br i1 %leReg, label %whileBody, label %whileEnd

whileBody:
    %loadReg__67 = load i32 i32* %now
    %loadReg__68 = load i32** i32*** %step
    %loadReg__69 = load i32* i32** %xlist
    %loadReg__70 = load i32 i32* %head
    %arrayReg__9 = getelementptr i32 i32* %loadReg__69 i32 %loadReg__70
    %loadReg__71 = load i32 i32* %arrayReg__9
    %arrayReg__10 = getelementptr i32* i32** %loadReg__68 i32 %loadReg__71
    %loadReg__72 = load i32* i32** %arrayReg__10
    %loadReg__73 = load i32* i32** %ylist
    %loadReg__74 = load i32 i32* %head
    %arrayReg__11 = getelementptr i32 i32* %loadReg__73 i32 %loadReg__74
    %loadReg__75 = load i32 i32* %arrayReg__11
    %arrayReg__12 = getelementptr i32 i32* %loadReg__72 i32 %loadReg__75
    %loadReg__76 = load i32 i32* %arrayReg__12
    store i32 %loadReg__76 i32* %now
    %loadReg__77 = load i32 i32* %x
    %loadReg__78 = load i32* i32** %xlist
    %loadReg__79 = load i32 i32* %head
    %arrayReg__13 = getelementptr i32 i32* %loadReg__78 i32 %loadReg__79
    %loadReg__80 = load i32 i32* %arrayReg__13
    %subReg__2 = sub i32 %loadReg__80 1
    store i32 %subReg__2 i32* %x
    %loadReg__81 = load i32 i32* %y
    %loadReg__82 = load i32* i32** %ylist
    %loadReg__83 = load i32 i32* %head
    %arrayReg__14 = getelementptr i32 i32* %loadReg__82 i32 %loadReg__83
    %loadReg__84 = load i32 i32* %arrayReg__14
    %subReg__3 = sub i32 %loadReg__84 2
    store i32 %subReg__3 i32* %y
    %loadReg__85 = load i32 i32* %x
    %loadReg__86 = load i32 i32* %N
    %funcReg__1 = call i1 check(i32 %loadReg__85, i32 %loadReg__86)
    move %LogicAndReg %funcReg__1
    br i1 %funcReg__1, label %andRhs, label %andEnd

whileEnd:
    %loadReg__384 = load i32 i32* %ok
    %eqReg__25 = icmp eq i32 %loadReg__384 1
    br i1 %eqReg__25, label %ifTrue17, label %ifFalse17

andRhs:
    %loadReg__87 = load i32 i32* %y
    %loadReg__88 = load i32 i32* %N
    %funcReg__2 = call i1 check(i32 %loadReg__87, i32 %loadReg__88)
    move %LogicAndReg %funcReg__2
    br label %andEnd

andEnd:
    move %LogicAndReg__1 %LogicAndReg
    br i1 %LogicAndReg, label %andRhs1, label %andEnd1

andRhs1:
    %loadReg__89 = load i32** i32*** %step
    %loadReg__90 = load i32 i32* %x
    %arrayReg__15 = getelementptr i32* i32** %loadReg__89 i32 %loadReg__90
    %loadReg__91 = load i32* i32** %arrayReg__15
    %loadReg__92 = load i32 i32* %y
    %arrayReg__16 = getelementptr i32 i32* %loadReg__91 i32 %loadReg__92
    %loadReg__93 = load i32 i32* %arrayReg__16
    %minusReg__1 = sub i32 0 1
    %eqReg = icmp eq i32 %loadReg__93 %minusReg__1
    move %LogicAndReg__1 %eqReg
    br label %andEnd1

andEnd1:
    br i1 %LogicAndReg__1, label %ifTrue, label %ifEnd

ifTrue:
    %loadReg__94 = load i32 i32* %tail
    %loadReg__95 = load i32 i32* %tail
    %addReg__4 = add i32 %loadReg__95 1
    store i32 %addReg__4 i32* %tail
    %loadReg__96 = load i32* i32** %xlist
    %loadReg__97 = load i32 i32* %tail
    %arrayReg__17 = getelementptr i32 i32* %loadReg__96 i32 %loadReg__97
    %loadReg__98 = load i32 i32* %arrayReg__17
    %loadReg__99 = load i32 i32* %x
    store i32 %loadReg__99 i32* %arrayReg__17
    %loadReg__100 = load i32* i32** %ylist
    %loadReg__101 = load i32 i32* %tail
    %arrayReg__18 = getelementptr i32 i32* %loadReg__100 i32 %loadReg__101
    %loadReg__102 = load i32 i32* %arrayReg__18
    %loadReg__103 = load i32 i32* %y
    store i32 %loadReg__103 i32* %arrayReg__18
    %loadReg__104 = load i32** i32*** %step
    %loadReg__105 = load i32 i32* %x
    %arrayReg__19 = getelementptr i32* i32** %loadReg__104 i32 %loadReg__105
    %loadReg__106 = load i32* i32** %arrayReg__19
    %loadReg__107 = load i32 i32* %y
    %arrayReg__20 = getelementptr i32 i32* %loadReg__106 i32 %loadReg__107
    %loadReg__108 = load i32 i32* %arrayReg__20
    %loadReg__109 = load i32 i32* %now
    %addReg__5 = add i32 %loadReg__109 1
    store i32 %addReg__5 i32* %arrayReg__20
    %loadReg__110 = load i32 i32* %x
    %loadReg__111 = load i32 i32* %targetx
    %eqReg__1 = icmp eq i32 %loadReg__110 %loadReg__111
    move %LogicAndReg__2 %eqReg__1
    br i1 %eqReg__1, label %andRhs2, label %andEnd2

andRhs2:
    %loadReg__112 = load i32 i32* %y
    %loadReg__113 = load i32 i32* %targety
    %eqReg__2 = icmp eq i32 %loadReg__112 %loadReg__113
    move %LogicAndReg__2 %eqReg__2
    br label %andEnd2

andEnd2:
    br i1 %LogicAndReg__2, label %ifTrue1, label %ifEnd1

ifTrue1:
    %loadReg__114 = load i32 i32* %ok
    store i32 1 i32* %ok
    br label %ifEnd1

ifEnd1:
    br label %ifEnd

ifEnd:
    %loadReg__115 = load i32 i32* %x
    %loadReg__116 = load i32* i32** %xlist
    %loadReg__117 = load i32 i32* %head
    %arrayReg__21 = getelementptr i32 i32* %loadReg__116 i32 %loadReg__117
    %loadReg__118 = load i32 i32* %arrayReg__21
    %subReg__4 = sub i32 %loadReg__118 1
    store i32 %subReg__4 i32* %x
    %loadReg__119 = load i32 i32* %y
    %loadReg__120 = load i32* i32** %ylist
    %loadReg__121 = load i32 i32* %head
    %arrayReg__22 = getelementptr i32 i32* %loadReg__120 i32 %loadReg__121
    %loadReg__122 = load i32 i32* %arrayReg__22
    %addReg__6 = add i32 %loadReg__122 2
    store i32 %addReg__6 i32* %y
    %loadReg__123 = load i32 i32* %x
    %loadReg__124 = load i32 i32* %N
    %funcReg__3 = call i1 check(i32 %loadReg__123, i32 %loadReg__124)
    move %LogicAndReg__3 %funcReg__3
    br i1 %funcReg__3, label %andRhs3, label %andEnd3

andRhs3:
    %loadReg__125 = load i32 i32* %y
    %loadReg__126 = load i32 i32* %N
    %funcReg__4 = call i1 check(i32 %loadReg__125, i32 %loadReg__126)
    move %LogicAndReg__3 %funcReg__4
    br label %andEnd3

andEnd3:
    move %LogicAndReg__4 %LogicAndReg__3
    br i1 %LogicAndReg__3, label %andRhs4, label %andEnd4

andRhs4:
    %loadReg__127 = load i32** i32*** %step
    %loadReg__128 = load i32 i32* %x
    %arrayReg__23 = getelementptr i32* i32** %loadReg__127 i32 %loadReg__128
    %loadReg__129 = load i32* i32** %arrayReg__23
    %loadReg__130 = load i32 i32* %y
    %arrayReg__24 = getelementptr i32 i32* %loadReg__129 i32 %loadReg__130
    %loadReg__131 = load i32 i32* %arrayReg__24
    %minusReg__2 = sub i32 0 1
    %eqReg__3 = icmp eq i32 %loadReg__131 %minusReg__2
    move %LogicAndReg__4 %eqReg__3
    br label %andEnd4

andEnd4:
    br i1 %LogicAndReg__4, label %ifTrue2, label %ifEnd2

ifTrue2:
    %loadReg__132 = load i32 i32* %tail
    %loadReg__133 = load i32 i32* %tail
    %addReg__7 = add i32 %loadReg__133 1
    store i32 %addReg__7 i32* %tail
    %loadReg__134 = load i32* i32** %xlist
    %loadReg__135 = load i32 i32* %tail
    %arrayReg__25 = getelementptr i32 i32* %loadReg__134 i32 %loadReg__135
    %loadReg__136 = load i32 i32* %arrayReg__25
    %loadReg__137 = load i32 i32* %x
    store i32 %loadReg__137 i32* %arrayReg__25
    %loadReg__138 = load i32* i32** %ylist
    %loadReg__139 = load i32 i32* %tail
    %arrayReg__26 = getelementptr i32 i32* %loadReg__138 i32 %loadReg__139
    %loadReg__140 = load i32 i32* %arrayReg__26
    %loadReg__141 = load i32 i32* %y
    store i32 %loadReg__141 i32* %arrayReg__26
    %loadReg__142 = load i32** i32*** %step
    %loadReg__143 = load i32 i32* %x
    %arrayReg__27 = getelementptr i32* i32** %loadReg__142 i32 %loadReg__143
    %loadReg__144 = load i32* i32** %arrayReg__27
    %loadReg__145 = load i32 i32* %y
    %arrayReg__28 = getelementptr i32 i32* %loadReg__144 i32 %loadReg__145
    %loadReg__146 = load i32 i32* %arrayReg__28
    %loadReg__147 = load i32 i32* %now
    %addReg__8 = add i32 %loadReg__147 1
    store i32 %addReg__8 i32* %arrayReg__28
    %loadReg__148 = load i32 i32* %x
    %loadReg__149 = load i32 i32* %targetx
    %eqReg__4 = icmp eq i32 %loadReg__148 %loadReg__149
    move %LogicAndReg__5 %eqReg__4
    br i1 %eqReg__4, label %andRhs5, label %andEnd5

andRhs5:
    %loadReg__150 = load i32 i32* %y
    %loadReg__151 = load i32 i32* %targety
    %eqReg__5 = icmp eq i32 %loadReg__150 %loadReg__151
    move %LogicAndReg__5 %eqReg__5
    br label %andEnd5

andEnd5:
    br i1 %LogicAndReg__5, label %ifTrue3, label %ifEnd3

ifTrue3:
    %loadReg__152 = load i32 i32* %ok
    store i32 1 i32* %ok
    br label %ifEnd3

ifEnd3:
    br label %ifEnd2

ifEnd2:
    %loadReg__153 = load i32 i32* %x
    %loadReg__154 = load i32* i32** %xlist
    %loadReg__155 = load i32 i32* %head
    %arrayReg__29 = getelementptr i32 i32* %loadReg__154 i32 %loadReg__155
    %loadReg__156 = load i32 i32* %arrayReg__29
    %addReg__9 = add i32 %loadReg__156 1
    store i32 %addReg__9 i32* %x
    %loadReg__157 = load i32 i32* %y
    %loadReg__158 = load i32* i32** %ylist
    %loadReg__159 = load i32 i32* %head
    %arrayReg__30 = getelementptr i32 i32* %loadReg__158 i32 %loadReg__159
    %loadReg__160 = load i32 i32* %arrayReg__30
    %subReg__5 = sub i32 %loadReg__160 2
    store i32 %subReg__5 i32* %y
    %loadReg__161 = load i32 i32* %x
    %loadReg__162 = load i32 i32* %N
    %funcReg__5 = call i1 check(i32 %loadReg__161, i32 %loadReg__162)
    move %LogicAndReg__6 %funcReg__5
    br i1 %funcReg__5, label %andRhs6, label %andEnd6

andRhs6:
    %loadReg__163 = load i32 i32* %y
    %loadReg__164 = load i32 i32* %N
    %funcReg__6 = call i1 check(i32 %loadReg__163, i32 %loadReg__164)
    move %LogicAndReg__6 %funcReg__6
    br label %andEnd6

andEnd6:
    move %LogicAndReg__7 %LogicAndReg__6
    br i1 %LogicAndReg__6, label %andRhs7, label %andEnd7

andRhs7:
    %loadReg__165 = load i32** i32*** %step
    %loadReg__166 = load i32 i32* %x
    %arrayReg__31 = getelementptr i32* i32** %loadReg__165 i32 %loadReg__166
    %loadReg__167 = load i32* i32** %arrayReg__31
    %loadReg__168 = load i32 i32* %y
    %arrayReg__32 = getelementptr i32 i32* %loadReg__167 i32 %loadReg__168
    %loadReg__169 = load i32 i32* %arrayReg__32
    %minusReg__3 = sub i32 0 1
    %eqReg__6 = icmp eq i32 %loadReg__169 %minusReg__3
    move %LogicAndReg__7 %eqReg__6
    br label %andEnd7

andEnd7:
    br i1 %LogicAndReg__7, label %ifTrue4, label %ifEnd4

ifTrue4:
    %loadReg__170 = load i32 i32* %tail
    %loadReg__171 = load i32 i32* %tail
    %addReg__10 = add i32 %loadReg__171 1
    store i32 %addReg__10 i32* %tail
    %loadReg__172 = load i32* i32** %xlist
    %loadReg__173 = load i32 i32* %tail
    %arrayReg__33 = getelementptr i32 i32* %loadReg__172 i32 %loadReg__173
    %loadReg__174 = load i32 i32* %arrayReg__33
    %loadReg__175 = load i32 i32* %x
    store i32 %loadReg__175 i32* %arrayReg__33
    %loadReg__176 = load i32* i32** %ylist
    %loadReg__177 = load i32 i32* %tail
    %arrayReg__34 = getelementptr i32 i32* %loadReg__176 i32 %loadReg__177
    %loadReg__178 = load i32 i32* %arrayReg__34
    %loadReg__179 = load i32 i32* %y
    store i32 %loadReg__179 i32* %arrayReg__34
    %loadReg__180 = load i32** i32*** %step
    %loadReg__181 = load i32 i32* %x
    %arrayReg__35 = getelementptr i32* i32** %loadReg__180 i32 %loadReg__181
    %loadReg__182 = load i32* i32** %arrayReg__35
    %loadReg__183 = load i32 i32* %y
    %arrayReg__36 = getelementptr i32 i32* %loadReg__182 i32 %loadReg__183
    %loadReg__184 = load i32 i32* %arrayReg__36
    %loadReg__185 = load i32 i32* %now
    %addReg__11 = add i32 %loadReg__185 1
    store i32 %addReg__11 i32* %arrayReg__36
    %loadReg__186 = load i32 i32* %x
    %loadReg__187 = load i32 i32* %targetx
    %eqReg__7 = icmp eq i32 %loadReg__186 %loadReg__187
    move %LogicAndReg__8 %eqReg__7
    br i1 %eqReg__7, label %andRhs8, label %andEnd8

andRhs8:
    %loadReg__188 = load i32 i32* %y
    %loadReg__189 = load i32 i32* %targety
    %eqReg__8 = icmp eq i32 %loadReg__188 %loadReg__189
    move %LogicAndReg__8 %eqReg__8
    br label %andEnd8

andEnd8:
    br i1 %LogicAndReg__8, label %ifTrue5, label %ifEnd5

ifTrue5:
    %loadReg__190 = load i32 i32* %ok
    store i32 1 i32* %ok
    br label %ifEnd5

ifEnd5:
    br label %ifEnd4

ifEnd4:
    %loadReg__191 = load i32 i32* %x
    %loadReg__192 = load i32* i32** %xlist
    %loadReg__193 = load i32 i32* %head
    %arrayReg__37 = getelementptr i32 i32* %loadReg__192 i32 %loadReg__193
    %loadReg__194 = load i32 i32* %arrayReg__37
    %addReg__12 = add i32 %loadReg__194 1
    store i32 %addReg__12 i32* %x
    %loadReg__195 = load i32 i32* %y
    %loadReg__196 = load i32* i32** %ylist
    %loadReg__197 = load i32 i32* %head
    %arrayReg__38 = getelementptr i32 i32* %loadReg__196 i32 %loadReg__197
    %loadReg__198 = load i32 i32* %arrayReg__38
    %addReg__13 = add i32 %loadReg__198 2
    store i32 %addReg__13 i32* %y
    %loadReg__199 = load i32 i32* %x
    %loadReg__200 = load i32 i32* %N
    %funcReg__7 = call i1 check(i32 %loadReg__199, i32 %loadReg__200)
    move %LogicAndReg__9 %funcReg__7
    br i1 %funcReg__7, label %andRhs9, label %andEnd9

andRhs9:
    %loadReg__201 = load i32 i32* %y
    %loadReg__202 = load i32 i32* %N
    %funcReg__8 = call i1 check(i32 %loadReg__201, i32 %loadReg__202)
    move %LogicAndReg__9 %funcReg__8
    br label %andEnd9

andEnd9:
    move %LogicAndReg__10 %LogicAndReg__9
    br i1 %LogicAndReg__9, label %andRhs10, label %andEnd10

andRhs10:
    %loadReg__203 = load i32** i32*** %step
    %loadReg__204 = load i32 i32* %x
    %arrayReg__39 = getelementptr i32* i32** %loadReg__203 i32 %loadReg__204
    %loadReg__205 = load i32* i32** %arrayReg__39
    %loadReg__206 = load i32 i32* %y
    %arrayReg__40 = getelementptr i32 i32* %loadReg__205 i32 %loadReg__206
    %loadReg__207 = load i32 i32* %arrayReg__40
    %minusReg__4 = sub i32 0 1
    %eqReg__9 = icmp eq i32 %loadReg__207 %minusReg__4
    move %LogicAndReg__10 %eqReg__9
    br label %andEnd10

andEnd10:
    br i1 %LogicAndReg__10, label %ifTrue6, label %ifEnd6

ifTrue6:
    %loadReg__208 = load i32 i32* %tail
    %loadReg__209 = load i32 i32* %tail
    %addReg__14 = add i32 %loadReg__209 1
    store i32 %addReg__14 i32* %tail
    %loadReg__210 = load i32* i32** %xlist
    %loadReg__211 = load i32 i32* %tail
    %arrayReg__41 = getelementptr i32 i32* %loadReg__210 i32 %loadReg__211
    %loadReg__212 = load i32 i32* %arrayReg__41
    %loadReg__213 = load i32 i32* %x
    store i32 %loadReg__213 i32* %arrayReg__41
    %loadReg__214 = load i32* i32** %ylist
    %loadReg__215 = load i32 i32* %tail
    %arrayReg__42 = getelementptr i32 i32* %loadReg__214 i32 %loadReg__215
    %loadReg__216 = load i32 i32* %arrayReg__42
    %loadReg__217 = load i32 i32* %y
    store i32 %loadReg__217 i32* %arrayReg__42
    %loadReg__218 = load i32** i32*** %step
    %loadReg__219 = load i32 i32* %x
    %arrayReg__43 = getelementptr i32* i32** %loadReg__218 i32 %loadReg__219
    %loadReg__220 = load i32* i32** %arrayReg__43
    %loadReg__221 = load i32 i32* %y
    %arrayReg__44 = getelementptr i32 i32* %loadReg__220 i32 %loadReg__221
    %loadReg__222 = load i32 i32* %arrayReg__44
    %loadReg__223 = load i32 i32* %now
    %addReg__15 = add i32 %loadReg__223 1
    store i32 %addReg__15 i32* %arrayReg__44
    %loadReg__224 = load i32 i32* %x
    %loadReg__225 = load i32 i32* %targetx
    %eqReg__10 = icmp eq i32 %loadReg__224 %loadReg__225
    move %LogicAndReg__11 %eqReg__10
    br i1 %eqReg__10, label %andRhs11, label %andEnd11

andRhs11:
    %loadReg__226 = load i32 i32* %y
    %loadReg__227 = load i32 i32* %targety
    %eqReg__11 = icmp eq i32 %loadReg__226 %loadReg__227
    move %LogicAndReg__11 %eqReg__11
    br label %andEnd11

andEnd11:
    br i1 %LogicAndReg__11, label %ifTrue7, label %ifEnd7

ifTrue7:
    %loadReg__228 = load i32 i32* %ok
    store i32 1 i32* %ok
    br label %ifEnd7

ifEnd7:
    br label %ifEnd6

ifEnd6:
    %loadReg__229 = load i32 i32* %x
    %loadReg__230 = load i32* i32** %xlist
    %loadReg__231 = load i32 i32* %head
    %arrayReg__45 = getelementptr i32 i32* %loadReg__230 i32 %loadReg__231
    %loadReg__232 = load i32 i32* %arrayReg__45
    %subReg__6 = sub i32 %loadReg__232 2
    store i32 %subReg__6 i32* %x
    %loadReg__233 = load i32 i32* %y
    %loadReg__234 = load i32* i32** %ylist
    %loadReg__235 = load i32 i32* %head
    %arrayReg__46 = getelementptr i32 i32* %loadReg__234 i32 %loadReg__235
    %loadReg__236 = load i32 i32* %arrayReg__46
    %subReg__7 = sub i32 %loadReg__236 1
    store i32 %subReg__7 i32* %y
    %loadReg__237 = load i32 i32* %x
    %loadReg__238 = load i32 i32* %N
    %funcReg__9 = call i1 check(i32 %loadReg__237, i32 %loadReg__238)
    move %LogicAndReg__12 %funcReg__9
    br i1 %funcReg__9, label %andRhs12, label %andEnd12

andRhs12:
    %loadReg__239 = load i32 i32* %y
    %loadReg__240 = load i32 i32* %N
    %funcReg__10 = call i1 check(i32 %loadReg__239, i32 %loadReg__240)
    move %LogicAndReg__12 %funcReg__10
    br label %andEnd12

andEnd12:
    move %LogicAndReg__13 %LogicAndReg__12
    br i1 %LogicAndReg__12, label %andRhs13, label %andEnd13

andRhs13:
    %loadReg__241 = load i32** i32*** %step
    %loadReg__242 = load i32 i32* %x
    %arrayReg__47 = getelementptr i32* i32** %loadReg__241 i32 %loadReg__242
    %loadReg__243 = load i32* i32** %arrayReg__47
    %loadReg__244 = load i32 i32* %y
    %arrayReg__48 = getelementptr i32 i32* %loadReg__243 i32 %loadReg__244
    %loadReg__245 = load i32 i32* %arrayReg__48
    %minusReg__5 = sub i32 0 1
    %eqReg__12 = icmp eq i32 %loadReg__245 %minusReg__5
    move %LogicAndReg__13 %eqReg__12
    br label %andEnd13

andEnd13:
    br i1 %LogicAndReg__13, label %ifTrue8, label %ifEnd8

ifTrue8:
    %loadReg__246 = load i32 i32* %tail
    %loadReg__247 = load i32 i32* %tail
    %addReg__16 = add i32 %loadReg__247 1
    store i32 %addReg__16 i32* %tail
    %loadReg__248 = load i32* i32** %xlist
    %loadReg__249 = load i32 i32* %tail
    %arrayReg__49 = getelementptr i32 i32* %loadReg__248 i32 %loadReg__249
    %loadReg__250 = load i32 i32* %arrayReg__49
    %loadReg__251 = load i32 i32* %x
    store i32 %loadReg__251 i32* %arrayReg__49
    %loadReg__252 = load i32* i32** %ylist
    %loadReg__253 = load i32 i32* %tail
    %arrayReg__50 = getelementptr i32 i32* %loadReg__252 i32 %loadReg__253
    %loadReg__254 = load i32 i32* %arrayReg__50
    %loadReg__255 = load i32 i32* %y
    store i32 %loadReg__255 i32* %arrayReg__50
    %loadReg__256 = load i32** i32*** %step
    %loadReg__257 = load i32 i32* %x
    %arrayReg__51 = getelementptr i32* i32** %loadReg__256 i32 %loadReg__257
    %loadReg__258 = load i32* i32** %arrayReg__51
    %loadReg__259 = load i32 i32* %y
    %arrayReg__52 = getelementptr i32 i32* %loadReg__258 i32 %loadReg__259
    %loadReg__260 = load i32 i32* %arrayReg__52
    %loadReg__261 = load i32 i32* %now
    %addReg__17 = add i32 %loadReg__261 1
    store i32 %addReg__17 i32* %arrayReg__52
    %loadReg__262 = load i32 i32* %x
    %loadReg__263 = load i32 i32* %targetx
    %eqReg__13 = icmp eq i32 %loadReg__262 %loadReg__263
    move %LogicAndReg__14 %eqReg__13
    br i1 %eqReg__13, label %andRhs14, label %andEnd14

andRhs14:
    %loadReg__264 = load i32 i32* %y
    %loadReg__265 = load i32 i32* %targety
    %eqReg__14 = icmp eq i32 %loadReg__264 %loadReg__265
    move %LogicAndReg__14 %eqReg__14
    br label %andEnd14

andEnd14:
    br i1 %LogicAndReg__14, label %ifTrue9, label %ifEnd9

ifTrue9:
    %loadReg__266 = load i32 i32* %ok
    store i32 1 i32* %ok
    br label %ifEnd9

ifEnd9:
    br label %ifEnd8

ifEnd8:
    %loadReg__267 = load i32 i32* %x
    %loadReg__268 = load i32* i32** %xlist
    %loadReg__269 = load i32 i32* %head
    %arrayReg__53 = getelementptr i32 i32* %loadReg__268 i32 %loadReg__269
    %loadReg__270 = load i32 i32* %arrayReg__53
    %subReg__8 = sub i32 %loadReg__270 2
    store i32 %subReg__8 i32* %x
    %loadReg__271 = load i32 i32* %y
    %loadReg__272 = load i32* i32** %ylist
    %loadReg__273 = load i32 i32* %head
    %arrayReg__54 = getelementptr i32 i32* %loadReg__272 i32 %loadReg__273
    %loadReg__274 = load i32 i32* %arrayReg__54
    %addReg__18 = add i32 %loadReg__274 1
    store i32 %addReg__18 i32* %y
    %loadReg__275 = load i32 i32* %x
    %loadReg__276 = load i32 i32* %N
    %funcReg__11 = call i1 check(i32 %loadReg__275, i32 %loadReg__276)
    move %LogicAndReg__15 %funcReg__11
    br i1 %funcReg__11, label %andRhs15, label %andEnd15

andRhs15:
    %loadReg__277 = load i32 i32* %y
    %loadReg__278 = load i32 i32* %N
    %funcReg__12 = call i1 check(i32 %loadReg__277, i32 %loadReg__278)
    move %LogicAndReg__15 %funcReg__12
    br label %andEnd15

andEnd15:
    move %LogicAndReg__16 %LogicAndReg__15
    br i1 %LogicAndReg__15, label %andRhs16, label %andEnd16

andRhs16:
    %loadReg__279 = load i32** i32*** %step
    %loadReg__280 = load i32 i32* %x
    %arrayReg__55 = getelementptr i32* i32** %loadReg__279 i32 %loadReg__280
    %loadReg__281 = load i32* i32** %arrayReg__55
    %loadReg__282 = load i32 i32* %y
    %arrayReg__56 = getelementptr i32 i32* %loadReg__281 i32 %loadReg__282
    %loadReg__283 = load i32 i32* %arrayReg__56
    %minusReg__6 = sub i32 0 1
    %eqReg__15 = icmp eq i32 %loadReg__283 %minusReg__6
    move %LogicAndReg__16 %eqReg__15
    br label %andEnd16

andEnd16:
    br i1 %LogicAndReg__16, label %ifTrue10, label %ifEnd10

ifTrue10:
    %loadReg__284 = load i32 i32* %tail
    %loadReg__285 = load i32 i32* %tail
    %addReg__19 = add i32 %loadReg__285 1
    store i32 %addReg__19 i32* %tail
    %loadReg__286 = load i32* i32** %xlist
    %loadReg__287 = load i32 i32* %tail
    %arrayReg__57 = getelementptr i32 i32* %loadReg__286 i32 %loadReg__287
    %loadReg__288 = load i32 i32* %arrayReg__57
    %loadReg__289 = load i32 i32* %x
    store i32 %loadReg__289 i32* %arrayReg__57
    %loadReg__290 = load i32* i32** %ylist
    %loadReg__291 = load i32 i32* %tail
    %arrayReg__58 = getelementptr i32 i32* %loadReg__290 i32 %loadReg__291
    %loadReg__292 = load i32 i32* %arrayReg__58
    %loadReg__293 = load i32 i32* %y
    store i32 %loadReg__293 i32* %arrayReg__58
    %loadReg__294 = load i32** i32*** %step
    %loadReg__295 = load i32 i32* %x
    %arrayReg__59 = getelementptr i32* i32** %loadReg__294 i32 %loadReg__295
    %loadReg__296 = load i32* i32** %arrayReg__59
    %loadReg__297 = load i32 i32* %y
    %arrayReg__60 = getelementptr i32 i32* %loadReg__296 i32 %loadReg__297
    %loadReg__298 = load i32 i32* %arrayReg__60
    %loadReg__299 = load i32 i32* %now
    %addReg__20 = add i32 %loadReg__299 1
    store i32 %addReg__20 i32* %arrayReg__60
    %loadReg__300 = load i32 i32* %x
    %loadReg__301 = load i32 i32* %targetx
    %eqReg__16 = icmp eq i32 %loadReg__300 %loadReg__301
    move %LogicAndReg__17 %eqReg__16
    br i1 %eqReg__16, label %andRhs17, label %andEnd17

andRhs17:
    %loadReg__302 = load i32 i32* %y
    %loadReg__303 = load i32 i32* %targety
    %eqReg__17 = icmp eq i32 %loadReg__302 %loadReg__303
    move %LogicAndReg__17 %eqReg__17
    br label %andEnd17

andEnd17:
    br i1 %LogicAndReg__17, label %ifTrue11, label %ifEnd11

ifTrue11:
    %loadReg__304 = load i32 i32* %ok
    store i32 1 i32* %ok
    br label %ifEnd11

ifEnd11:
    br label %ifEnd10

ifEnd10:
    %loadReg__305 = load i32 i32* %x
    %loadReg__306 = load i32* i32** %xlist
    %loadReg__307 = load i32 i32* %head
    %arrayReg__61 = getelementptr i32 i32* %loadReg__306 i32 %loadReg__307
    %loadReg__308 = load i32 i32* %arrayReg__61
    %addReg__21 = add i32 %loadReg__308 2
    store i32 %addReg__21 i32* %x
    %loadReg__309 = load i32 i32* %y
    %loadReg__310 = load i32* i32** %ylist
    %loadReg__311 = load i32 i32* %head
    %arrayReg__62 = getelementptr i32 i32* %loadReg__310 i32 %loadReg__311
    %loadReg__312 = load i32 i32* %arrayReg__62
    %subReg__9 = sub i32 %loadReg__312 1
    store i32 %subReg__9 i32* %y
    %loadReg__313 = load i32 i32* %x
    %loadReg__314 = load i32 i32* %N
    %funcReg__13 = call i1 check(i32 %loadReg__313, i32 %loadReg__314)
    move %LogicAndReg__18 %funcReg__13
    br i1 %funcReg__13, label %andRhs18, label %andEnd18

andRhs18:
    %loadReg__315 = load i32 i32* %y
    %loadReg__316 = load i32 i32* %N
    %funcReg__14 = call i1 check(i32 %loadReg__315, i32 %loadReg__316)
    move %LogicAndReg__18 %funcReg__14
    br label %andEnd18

andEnd18:
    move %LogicAndReg__19 %LogicAndReg__18
    br i1 %LogicAndReg__18, label %andRhs19, label %andEnd19

andRhs19:
    %loadReg__317 = load i32** i32*** %step
    %loadReg__318 = load i32 i32* %x
    %arrayReg__63 = getelementptr i32* i32** %loadReg__317 i32 %loadReg__318
    %loadReg__319 = load i32* i32** %arrayReg__63
    %loadReg__320 = load i32 i32* %y
    %arrayReg__64 = getelementptr i32 i32* %loadReg__319 i32 %loadReg__320
    %loadReg__321 = load i32 i32* %arrayReg__64
    %minusReg__7 = sub i32 0 1
    %eqReg__18 = icmp eq i32 %loadReg__321 %minusReg__7
    move %LogicAndReg__19 %eqReg__18
    br label %andEnd19

andEnd19:
    br i1 %LogicAndReg__19, label %ifTrue12, label %ifEnd12

ifTrue12:
    %loadReg__322 = load i32 i32* %tail
    %loadReg__323 = load i32 i32* %tail
    %addReg__22 = add i32 %loadReg__323 1
    store i32 %addReg__22 i32* %tail
    %loadReg__324 = load i32* i32** %xlist
    %loadReg__325 = load i32 i32* %tail
    %arrayReg__65 = getelementptr i32 i32* %loadReg__324 i32 %loadReg__325
    %loadReg__326 = load i32 i32* %arrayReg__65
    %loadReg__327 = load i32 i32* %x
    store i32 %loadReg__327 i32* %arrayReg__65
    %loadReg__328 = load i32* i32** %ylist
    %loadReg__329 = load i32 i32* %tail
    %arrayReg__66 = getelementptr i32 i32* %loadReg__328 i32 %loadReg__329
    %loadReg__330 = load i32 i32* %arrayReg__66
    %loadReg__331 = load i32 i32* %y
    store i32 %loadReg__331 i32* %arrayReg__66
    %loadReg__332 = load i32** i32*** %step
    %loadReg__333 = load i32 i32* %x
    %arrayReg__67 = getelementptr i32* i32** %loadReg__332 i32 %loadReg__333
    %loadReg__334 = load i32* i32** %arrayReg__67
    %loadReg__335 = load i32 i32* %y
    %arrayReg__68 = getelementptr i32 i32* %loadReg__334 i32 %loadReg__335
    %loadReg__336 = load i32 i32* %arrayReg__68
    %loadReg__337 = load i32 i32* %now
    %addReg__23 = add i32 %loadReg__337 1
    store i32 %addReg__23 i32* %arrayReg__68
    %loadReg__338 = load i32 i32* %x
    %loadReg__339 = load i32 i32* %targetx
    %eqReg__19 = icmp eq i32 %loadReg__338 %loadReg__339
    move %LogicAndReg__20 %eqReg__19
    br i1 %eqReg__19, label %andRhs20, label %andEnd20

andRhs20:
    %loadReg__340 = load i32 i32* %y
    %loadReg__341 = load i32 i32* %targety
    %eqReg__20 = icmp eq i32 %loadReg__340 %loadReg__341
    move %LogicAndReg__20 %eqReg__20
    br label %andEnd20

andEnd20:
    br i1 %LogicAndReg__20, label %ifTrue13, label %ifEnd13

ifTrue13:
    %loadReg__342 = load i32 i32* %ok
    store i32 1 i32* %ok
    br label %ifEnd13

ifEnd13:
    br label %ifEnd12

ifEnd12:
    %loadReg__343 = load i32 i32* %x
    %loadReg__344 = load i32* i32** %xlist
    %loadReg__345 = load i32 i32* %head
    %arrayReg__69 = getelementptr i32 i32* %loadReg__344 i32 %loadReg__345
    %loadReg__346 = load i32 i32* %arrayReg__69
    %addReg__24 = add i32 %loadReg__346 2
    store i32 %addReg__24 i32* %x
    %loadReg__347 = load i32 i32* %y
    %loadReg__348 = load i32* i32** %ylist
    %loadReg__349 = load i32 i32* %head
    %arrayReg__70 = getelementptr i32 i32* %loadReg__348 i32 %loadReg__349
    %loadReg__350 = load i32 i32* %arrayReg__70
    %addReg__25 = add i32 %loadReg__350 1
    store i32 %addReg__25 i32* %y
    %loadReg__351 = load i32 i32* %x
    %loadReg__352 = load i32 i32* %N
    %funcReg__15 = call i1 check(i32 %loadReg__351, i32 %loadReg__352)
    move %LogicAndReg__21 %funcReg__15
    br i1 %funcReg__15, label %andRhs21, label %andEnd21

andRhs21:
    %loadReg__353 = load i32 i32* %y
    %loadReg__354 = load i32 i32* %N
    %funcReg__16 = call i1 check(i32 %loadReg__353, i32 %loadReg__354)
    move %LogicAndReg__21 %funcReg__16
    br label %andEnd21

andEnd21:
    move %LogicAndReg__22 %LogicAndReg__21
    br i1 %LogicAndReg__21, label %andRhs22, label %andEnd22

andRhs22:
    %loadReg__355 = load i32** i32*** %step
    %loadReg__356 = load i32 i32* %x
    %arrayReg__71 = getelementptr i32* i32** %loadReg__355 i32 %loadReg__356
    %loadReg__357 = load i32* i32** %arrayReg__71
    %loadReg__358 = load i32 i32* %y
    %arrayReg__72 = getelementptr i32 i32* %loadReg__357 i32 %loadReg__358
    %loadReg__359 = load i32 i32* %arrayReg__72
    %minusReg__8 = sub i32 0 1
    %eqReg__21 = icmp eq i32 %loadReg__359 %minusReg__8
    move %LogicAndReg__22 %eqReg__21
    br label %andEnd22

andEnd22:
    br i1 %LogicAndReg__22, label %ifTrue14, label %ifEnd14

ifTrue14:
    %loadReg__360 = load i32 i32* %tail
    %loadReg__361 = load i32 i32* %tail
    %addReg__26 = add i32 %loadReg__361 1
    store i32 %addReg__26 i32* %tail
    %loadReg__362 = load i32* i32** %xlist
    %loadReg__363 = load i32 i32* %tail
    %arrayReg__73 = getelementptr i32 i32* %loadReg__362 i32 %loadReg__363
    %loadReg__364 = load i32 i32* %arrayReg__73
    %loadReg__365 = load i32 i32* %x
    store i32 %loadReg__365 i32* %arrayReg__73
    %loadReg__366 = load i32* i32** %ylist
    %loadReg__367 = load i32 i32* %tail
    %arrayReg__74 = getelementptr i32 i32* %loadReg__366 i32 %loadReg__367
    %loadReg__368 = load i32 i32* %arrayReg__74
    %loadReg__369 = load i32 i32* %y
    store i32 %loadReg__369 i32* %arrayReg__74
    %loadReg__370 = load i32** i32*** %step
    %loadReg__371 = load i32 i32* %x
    %arrayReg__75 = getelementptr i32* i32** %loadReg__370 i32 %loadReg__371
    %loadReg__372 = load i32* i32** %arrayReg__75
    %loadReg__373 = load i32 i32* %y
    %arrayReg__76 = getelementptr i32 i32* %loadReg__372 i32 %loadReg__373
    %loadReg__374 = load i32 i32* %arrayReg__76
    %loadReg__375 = load i32 i32* %now
    %addReg__27 = add i32 %loadReg__375 1
    store i32 %addReg__27 i32* %arrayReg__76
    %loadReg__376 = load i32 i32* %x
    %loadReg__377 = load i32 i32* %targetx
    %eqReg__22 = icmp eq i32 %loadReg__376 %loadReg__377
    move %LogicAndReg__23 %eqReg__22
    br i1 %eqReg__22, label %andRhs23, label %andEnd23

andRhs23:
    %loadReg__378 = load i32 i32* %y
    %loadReg__379 = load i32 i32* %targety
    %eqReg__23 = icmp eq i32 %loadReg__378 %loadReg__379
    move %LogicAndReg__23 %eqReg__23
    br label %andEnd23

andEnd23:
    br i1 %LogicAndReg__23, label %ifTrue15, label %ifEnd15

ifTrue15:
    %loadReg__380 = load i32 i32* %ok
    store i32 1 i32* %ok
    br label %ifEnd15

ifEnd15:
    br label %ifEnd14

ifEnd14:
    %loadReg__381 = load i32 i32* %ok
    %eqReg__24 = icmp eq i32 %loadReg__381 1
    br i1 %eqReg__24, label %ifTrue16, label %ifEnd16

ifTrue16:
    br label %whileEnd
    br label %ifEnd16

ifEnd16:
    %loadReg__382 = load i32 i32* %head
    %loadReg__383 = load i32 i32* %head
    %addReg__28 = add i32 %loadReg__383 1
    store i32 %addReg__28 i32* %head
    br label %whileCond

ifTrue17:
    %loadReg__385 = load i32** i32*** %step
    %loadReg__386 = load i32 i32* %targetx
    %arrayReg__77 = getelementptr i32* i32** %loadReg__385 i32 %loadReg__386
    %loadReg__387 = load i32* i32** %arrayReg__77
    %loadReg__388 = load i32 i32* %targety
    %arrayReg__78 = getelementptr i32 i32* %loadReg__387 i32 %loadReg__388
    %loadReg__389 = load i32 i32* %arrayReg__78
    %funcReg__17 = call i8* toString(i32 %loadReg__389)
    %funcReg__18 = call void println(i8* %funcReg__17)
    br label %ifEnd17

ifFalse17:
    %funcReg__19 = call void print(i8* @no solution!
)
    br label %ifEnd17

ifEnd17:
    ret i32 0

}

