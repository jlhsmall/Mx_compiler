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
    %mallocReg__1 = call i8* malloc(i32 %realSize__1)
    %castReg__1 = bitcast i8* %mallocReg__1 to i32*
    store i32 %mulReg__2 i32* %castReg__1
    %HeadI32Ptr__1 = getelementptr i32 i32* %castReg__1 i32 1
    %HeadPtr__1 = bitcast i32 %HeadI32Ptr__1 to i32*
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
    %mallocReg__2 = call i8* malloc(i32 %realSize__2)
    %castReg__2 = bitcast i8* %mallocReg__2 to i32*
    store i32 %loadReg__36 i32* %castReg__2
    %HeadI32Ptr__2 = getelementptr i32 i32* %castReg__2 i32 1
    %HeadPtr__2 = bitcast i32 %HeadI32Ptr__2 to i32**
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
    %mallocReg__3 = call i8* malloc(i32 %realSize__3)
    %castReg__3 = bitcast i8* %mallocReg__3 to i32*
    store i32 %loadReg__43 i32* %castReg__3
    %HeadI32Ptr__3 = getelementptr i32 i32* %castReg__3 i32 1
    %HeadPtr__3 = bitcast i32 %HeadI32Ptr__3 to i32*
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
    %arrayReg__4 = getelementptr i32* i32** %arrayReg__3 i32 %loadReg__50
    %loadReg__51 = load i32* i32** %arrayReg__4
    %minusReg = sub i32 0 1
    store i32* %minusReg i32** %arrayReg__4
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
    %arrayReg__8 = getelementptr i32* i32** %arrayReg__7 i32 %loadReg__63
    %loadReg__64 = load i32* i32** %arrayReg__8
    store i32* 0 i32** %arrayReg__8
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
    %arrayReg__12 = getelementptr i32* i32** %arrayReg__10 i32 %loadReg__75
    %loadReg__76 = load i32* i32** %arrayReg__12
    store i32 %loadReg__76 i32* %now
    %loadReg__77 = load i32 i32* %x
    %loadReg__78 = load i32* i32** %xlist
    %loadReg__79 = load i32 i32* %head
    %arrayReg__13 = getelementptr i32 i32* %loadReg__78 i32 %loadReg__79
    %loadReg__80 = load i32 i32* %arrayReg__13
    %addReg__4 = add i32 %loadReg__80 1
    store i32 %addReg__4 i32* %x
    %loadReg__81 = load i32 i32* %y
    %loadReg__82 = load i32* i32** %ylist
    %loadReg__83 = load i32 i32* %head
    %arrayReg__14 = getelementptr i32 i32* %loadReg__82 i32 %loadReg__83
    %loadReg__84 = load i32 i32* %arrayReg__14
    %addReg__5 = add i32 %loadReg__84 2
    store i32 %addReg__5 i32* %y
    %loadReg__85 = load i32 i32* %x
    %loadReg__86 = load i32 i32* %N
    %funcReg__1 = call i1 check(i32 %loadReg__85, i32 %loadReg__86)
    move %LogicAndReg %funcReg__1
    br i1 %funcReg__1, label %andRhs, label %andEnd

whileEnd:
    %loadReg__156 = load i32 i32* %ok
    %eqReg__7 = icmp eq i32 %loadReg__156 1
    br i1 %eqReg__7, label %ifTrue5, label %ifFalse5

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
    %arrayReg__16 = getelementptr i32* i32** %arrayReg__15 i32 %loadReg__92
    %loadReg__93 = load i32* i32** %arrayReg__16
    %minusReg__1 = sub i32 0 1
    %eqReg = icmp eq i32* %loadReg__93 %minusReg__1
    move %LogicAndReg__1 %eqReg
    br label %andEnd1

andEnd1:
    br i1 %LogicAndReg__1, label %ifTrue, label %ifEnd

ifTrue:
    %loadReg__94 = load i32 i32* %tail
    %loadReg__95 = load i32 i32* %tail
    %addReg__6 = add i32 %loadReg__95 1
    store i32 %addReg__6 i32* %tail
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
    %arrayReg__20 = getelementptr i32* i32** %arrayReg__19 i32 %loadReg__107
    %loadReg__108 = load i32* i32** %arrayReg__20
    %loadReg__109 = load i32 i32* %now
    %addReg__7 = add i32 %loadReg__109 1
    store i32* %addReg__7 i32** %arrayReg__20
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
    %addReg__8 = add i32 %loadReg__118 2
    store i32 %addReg__8 i32* %x
    %loadReg__119 = load i32 i32* %y
    %loadReg__120 = load i32* i32** %ylist
    %loadReg__121 = load i32 i32* %head
    %arrayReg__22 = getelementptr i32 i32* %loadReg__120 i32 %loadReg__121
    %loadReg__122 = load i32 i32* %arrayReg__22
    %addReg__9 = add i32 %loadReg__122 1
    store i32 %addReg__9 i32* %y
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
    %arrayReg__24 = getelementptr i32* i32** %arrayReg__23 i32 %loadReg__130
    %loadReg__131 = load i32* i32** %arrayReg__24
    %minusReg__2 = sub i32 0 1
    %eqReg__3 = icmp eq i32* %loadReg__131 %minusReg__2
    move %LogicAndReg__4 %eqReg__3
    br label %andEnd4

andEnd4:
    br i1 %LogicAndReg__4, label %ifTrue2, label %ifEnd2

ifTrue2:
    %loadReg__132 = load i32 i32* %tail
    %loadReg__133 = load i32 i32* %tail
    %addReg__10 = add i32 %loadReg__133 1
    store i32 %addReg__10 i32* %tail
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
    %arrayReg__28 = getelementptr i32* i32** %arrayReg__27 i32 %loadReg__145
    %loadReg__146 = load i32* i32** %arrayReg__28
    %loadReg__147 = load i32 i32* %now
    %addReg__11 = add i32 %loadReg__147 1
    store i32* %addReg__11 i32** %arrayReg__28
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
    %loadReg__153 = load i32 i32* %ok
    %eqReg__6 = icmp eq i32 %loadReg__153 1
    br i1 %eqReg__6, label %ifTrue4, label %ifEnd4

ifTrue4:
    br label %whileEnd
    br label %ifEnd4

ifEnd4:
    %loadReg__154 = load i32 i32* %head
    %loadReg__155 = load i32 i32* %head
    %addReg__12 = add i32 %loadReg__155 1
    store i32 %addReg__12 i32* %head
    br label %whileCond

ifTrue5:
    %loadReg__157 = load i32** i32*** %step
    %loadReg__158 = load i32 i32* %targetx
    %arrayReg__29 = getelementptr i32* i32** %loadReg__157 i32 %loadReg__158
    %loadReg__159 = load i32* i32** %arrayReg__29
    %loadReg__160 = load i32 i32* %targety
    %arrayReg__30 = getelementptr i32* i32** %arrayReg__29 i32 %loadReg__160
    %loadReg__161 = load i32* i32** %arrayReg__30
    %funcReg__5 = call i8* toString(i32* %loadReg__161)
    %funcReg__6 = call void println(i8* %funcReg__5)
    br label %ifEnd5

ifFalse5:
    %funcReg__7 = call void print(i8* @no solution!
)
    br label %ifEnd5

ifEnd5:
    ret i32 0

}

