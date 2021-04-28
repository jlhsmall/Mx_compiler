%A = type { , i32i32}

%string = type { , i8*}

%array = type { }

@object = global @A*

define i1 @stringLe(i8* %str1, i8* %str2)

define void @println(i8* %str)

define i32 @string__parseInt(i8* %str)

define i1 @stringNe(i8* %str1, i8* %str2)

define i1 @stringLe(i8* %str1, i8* %str2)

define i32 @string__length(i8* %str)

define i8* @string__substring(i8* %str, i32 %left, i32 %right)

define i1 @stringEq(i8* %str1, i8* %str2)

define i32 @string__ord(i8* %str, i32 %pos)

define void @A__func1(@A* %this, i32* %x, i32* %y){
entry:
    %loadReg = load @A @A* %this
    %x = getelementptr @A @A* %this i32 0, i32 0
    %loadReg__1 = load i32 i32* %x
    %loadReg__2 = load i32 i32* %x
    %mulReg = mul i32 %loadReg__1 %loadReg__2
    %loadReg__3 = load @A @A* %this
    %y = getelementptr @A @A* %this i32 0, i32 1
    %loadReg__4 = load i32 i32* %y
    %loadReg__5 = load i32 i32* %y
    %mulReg__1 = mul i32 %loadReg__4 %loadReg__5
    %funcReg = call void func2(i32 %mulReg, i32 %mulReg__1)
    %mallocReg = call i8* malloc(i32 4)
    %castReg = bitcast i8* %mallocReg to void*
    store void %funcReg void* %castReg

}


define i8* @malloc(i32 %size)

define void @A__func2(@A* %this, i32* %xx, i32* %yy){
entry:
    %x = getelementptr @A @A* %this i32 0, i32 0
    %loadReg = load i32 i32* %x
    %loadReg__1 = load @A @A* %this
    %x__1 = getelementptr @A @A* %this i32 0, i32 0
    %loadReg__2 = load i32 i32* %x__1
    %mulReg = mul i32 %loadReg %loadReg__2
    %y = getelementptr @A @A* %this i32 0, i32 1
    %loadReg__3 = load i32 i32* %y
    %loadReg__4 = load @A @A* %this
    %y__1 = getelementptr @A @A* %this i32 0, i32 1
    %loadReg__5 = load i32 i32* %y__1
    %mulReg__1 = mul i32 %loadReg__3 %loadReg__5
    %funcReg = call void func1(i32 %mulReg, i32 %mulReg__1)
    %mallocReg = call i8* malloc(i32 4)
    %castReg = bitcast i8* %mallocReg to void*
    store void %funcReg void* %castReg

}


define i1 @stringGe(i8* %str1, i8* %str2)

define i8* @stringAdd(i8* %str1, i8* %str2)

define void @init_main(){
entry:

}


define i8* @getString()

define @A @A__copy(@A* %this, @A* %other){
entry:
    %loadReg = load @A @A* %this
    ret @A %loadReg

}


define i32 @getInt()

define void @print(i8* %str)

define i1 @stringGe(i8* %str1, i8* %str2)

define @A @A__set(@A* %this, i32* %xx, i32* %yy){
entry:
    %x = getelementptr @A @A* %this i32 0, i32 0
    %loadReg = load i32 i32* %x
    %y = getelementptr @A @A* %this i32 0, i32 1
    %loadReg__1 = load i32 i32* %y
    %funcReg = call @A set(i32 %loadReg, i32 %loadReg__1)
    %mallocReg = call i8* malloc(i32 4)
    %castReg = bitcast i8* %mallocReg to @A*
    store @A %funcReg @A* %castReg
    %loadReg__2 = load @A @A* %this
    %x__1 = getelementptr @A @A* %this i32 0, i32 0
    %loadReg__3 = load i32 i32* %x__1
    %loadReg__4 = load @A @A* %this
    %y__1 = getelementptr @A @A* %this i32 0, i32 1
    %loadReg__5 = load i32 i32* %y__1
    %funcReg__1 = call @A A__set(@A* %castReg, i32 %loadReg__3, i32 %loadReg__5)
    %mallocReg__1 = call i8* malloc(i32 4)
    %castReg__1 = bitcast i8* %mallocReg__1 to @A*
    store @A %funcReg__1 @A* %castReg__1
    %loadReg__6 = load i32 i32* %xx
    %loadReg__7 = load i32 i32* %yy
    %funcReg__2 = call @A A__set(@A* %castReg__1, i32 %loadReg__6, i32 %loadReg__7)
    %mallocReg__2 = call i8* malloc(i32 4)
    %castReg__2 = bitcast i8* %mallocReg__2 to @A*
    store @A %funcReg__2 @A* %castReg__2
    %funcReg__3 = call @A A__getThis(@A* %castReg__2)
    %mallocReg__3 = call i8* malloc(i32 4)
    %castReg__3 = bitcast i8* %mallocReg__3 to @A*
    store @A %funcReg__3 @A* %castReg__3
    ret @A %funcReg__3

}


define @A @A__getThis(@A* %this){
entry:
    %funcReg = call @A getThis()
    %mallocReg = call i8* malloc(i32 4)
    %castReg = bitcast i8* %mallocReg to @A*
    store @A %funcReg @A* %castReg
    %funcReg__1 = call @A A__getThis(@A* %castReg)
    %mallocReg__1 = call i8* malloc(i32 4)
    %castReg__1 = bitcast i8* %mallocReg__1 to @A*
    store @A %funcReg__1 @A* %castReg__1
    %funcReg__2 = call @A A__getThis(@A* %castReg__1)
    %mallocReg__2 = call i8* malloc(i32 4)
    %castReg__2 = bitcast i8* %mallocReg__2 to @A*
    store @A %funcReg__2 @A* %castReg__2
    %funcReg__3 = call @A A__getThis(@A* %castReg__2)
    %mallocReg__3 = call i8* malloc(i32 4)
    %castReg__3 = bitcast i8* %mallocReg__3 to @A*
    store @A %funcReg__3 @A* %castReg__3
    %loadReg = load @A @A* %this
    %funcReg__4 = call @A A__copy(@A* %castReg__3, @A %loadReg)
    %mallocReg__4 = call i8* malloc(i32 4)
    %castReg__4 = bitcast i8* %mallocReg__4 to @A*
    store @A %funcReg__4 @A* %castReg__4
    ret @A %funcReg__4

}


define void @printInt(i32 %n)

define void @printlnInt(i32 %n)

define i8* @toString(i32 %i)

define i32 @array__size(i8* %arr)

define i32 @main(){
entry:
    call void init_main()
    %loadReg = load @A @A* @object
    %funcReg = call void A__func1(@A* @object, i32 2, i32 3)
    %mallocReg = call i8* malloc(i32 4)
    %castReg = bitcast i8* %mallocReg to void*
    store void %funcReg void* %castReg
    %loadReg__1 = load @A @A* @object
    %funcReg__1 = call @A A__set(@A* @object, i32 0, i32 1)
    %mallocReg__1 = call i8* malloc(i32 4)
    %castReg__1 = bitcast i8* %mallocReg__1 to @A*
    store @A %funcReg__1 @A* %castReg__1
    %funcReg__2 = call @A A__set(@A* %castReg__1, i32 1, i32 0)
    %mallocReg__2 = call i8* malloc(i32 4)
    %castReg__2 = bitcast i8* %mallocReg__2 to @A*
    store @A %funcReg__2 @A* %castReg__2
    %loadReg__2 = load @A @A* @object
    %loadReg__3 = load @A @A* @object
    %funcReg__3 = call @A A__getThis(@A* @object)
    %mallocReg__3 = call i8* malloc(i32 4)
    %castReg__3 = bitcast i8* %mallocReg__3 to @A*
    store @A %funcReg__3 @A* %castReg__3
    %funcReg__4 = call @A A__copy(@A* @object, @A %funcReg__3)
    %mallocReg__4 = call i8* malloc(i32 4)
    %castReg__4 = bitcast i8* %mallocReg__4 to @A*
    store @A %funcReg__4 @A* %castReg__4
    %loadReg__4 = load @A @A* @object
    %funcReg__5 = call @A A__getThis(@A* @object)
    %mallocReg__5 = call i8* malloc(i32 4)
    %castReg__5 = bitcast i8* %mallocReg__5 to @A*
    store @A %funcReg__5 @A* %castReg__5
    %funcReg__6 = call @A A__getThis(@A* %castReg__5)
    %mallocReg__6 = call i8* malloc(i32 4)
    %castReg__6 = bitcast i8* %mallocReg__6 to @A*
    store @A %funcReg__6 @A* %castReg__6
    %funcReg__7 = call @A A__copy(@A* %castReg__4, @A %funcReg__6)
    %mallocReg__7 = call i8* malloc(i32 4)
    %castReg__7 = bitcast i8* %mallocReg__7 to @A*
    store @A %funcReg__7 @A* %castReg__7
    ret i32 0

}

