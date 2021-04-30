%string = type { , i8*}

%array = type { }


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
    %a = alloca i32**
    store i32* Null i32** %a
    %b = alloca i32***
    store i32** Null i32*** %b
    %eqReg = icmp eq void* Null Null
    br i1 %eqReg, label %ifTrue, label %ifFalse

ifTrue:
    %loadReg = load i32* i32** %a
    store i32* Null i32** %a
    br label %ifEnd

ifFalse:
    %loadReg__1 = load i32** i32*** %b
    store i32** Null i32*** %b
    br label %ifEnd

ifEnd:

}

