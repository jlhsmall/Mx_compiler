%string = type { , i8*}

%array = type { }

@p = global i32*
@<<  = global i8* c"<< "
@  = global i8* c" "
@>>  = global i8* c">> "
@)  = global i8* c") "
@( = global i8* c"("
@i = global i32*
@k = global i32*
@n = global i32*

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
    %loadReg = load i32 i32* @n
    %funcReg = call i32 getInt()
    %mallocReg = call i8* malloc(i32 4)
    %castReg = bitcast i8* %mallocReg to i32*
    store i32 %funcReg i32* %castReg
    store i32 %funcReg i32* @n
    %loadReg__1 = load i32 i32* @p
    %funcReg__1 = call i32 getInt()
    %mallocReg__1 = call i8* malloc(i32 4)
    %castReg__1 = bitcast i8* %mallocReg__1 to i32*
    store i32 %funcReg__1 i32* %castReg__1
    store i32 %funcReg__1 i32* @p
    %loadReg__2 = load i32 i32* @k
    %funcReg__2 = call i32 getInt()
    %mallocReg__2 = call i8* malloc(i32 4)
    %castReg__2 = bitcast i8* %mallocReg__2 to i32*
    store i32 %funcReg__2 i32* %castReg__2
    store i32 %funcReg__2 i32* @k
    %loadReg__3 = load i32 i32* @p
    %loadReg__4 = load i32 i32* @k
    %subReg = sub i32 %loadReg__3 %loadReg__4
    %gtReg = icmp sgt i32 %subReg 1
    br i1 %gtReg, label %ifTrue, label %ifEnd

ifTrue:
    %funcReg__3 = call void* print(i8* @<< )
    br label %ifEnd

ifEnd:
    %loadReg__5 = load i32 i32* @i
    %loadReg__6 = load i32 i32* @p
    %loadReg__7 = load i32 i32* @k
    %subReg__1 = sub i32 %loadReg__6 %loadReg__7
    store i32 %subReg__1 i32* @i
    br label %forCond

forCond:
    %loadReg__8 = load i32 i32* @i
    %loadReg__9 = load i32 i32* @p
    %loadReg__10 = load i32 i32* @k
    %addReg = add i32 %loadReg__9 %loadReg__10
    %leReg = icmp sle i32 %loadReg__8 %addReg
    br i1 %leReg, label %forBody, label %forEnd

forBody:
    %loadReg__11 = load i32 i32* @i
    %leReg__1 = icmp sle i32 1 %loadReg__11
    move %LogicAndReg %leReg__1
    br i1 %leReg__1, label %andRhs, label %andEnd

andRhs:
    %loadReg__12 = load i32 i32* @i
    %loadReg__13 = load i32 i32* @n
    %leReg__2 = icmp sle i32 %loadReg__12 %loadReg__13
    move %LogicAndReg %leReg__2
    br label %andEnd

andEnd:
    br i1 %LogicAndReg, label %ifTrue1, label %ifEnd1

ifTrue1:
    %loadReg__14 = load i32 i32* @i
    %loadReg__15 = load i32 i32* @p
    %eqReg = icmp eq i32 %loadReg__14 %loadReg__15
    br i1 %eqReg, label %ifTrue2, label %ifFalse2

ifTrue2:
    %funcReg__4 = call void* print(i8* @()
    %loadReg__16 = load i32 i32* @i
    %funcReg__5 = call i8* toString(i32 %loadReg__16)
    %mallocReg__3 = call i8* malloc(i32 4)
    %castReg__3 = bitcast i8* %mallocReg__3 to i8**
    store i8* %funcReg__5 i8** %castReg__3
    %funcReg__6 = call void* print(i8* %funcReg__5)
    %funcReg__7 = call void* print(i8* @) )
    br label %ifEnd2

ifFalse2:
    %loadReg__17 = load i32 i32* @i
    %funcReg__8 = call void* printInt(i32 %loadReg__17)
    %funcReg__9 = call void* print(i8* @ )
    br label %ifEnd2

ifEnd2:
    br label %ifEnd1

ifEnd1:
    br label %forIncr

forIncr:
    %loadReg__18 = load i32 i32* @i
    %addReg__1 = add i32 %loadReg__18 1
    store i32 %addReg__1 i32* @i
    br label %forCond

forEnd:
    %loadReg__19 = load i32 i32* @p
    %loadReg__20 = load i32 i32* @k
    %addReg__2 = add i32 %loadReg__19 %loadReg__20
    %loadReg__21 = load i32 i32* @n
    %ltReg = icmp slt i32 %addReg__2 %loadReg__21
    br i1 %ltReg, label %ifTrue3, label %ifEnd3

ifTrue3:
    %funcReg__10 = call void* print(i8* @>> )
    br label %ifEnd3

ifEnd3:
    ret i32 0

}

