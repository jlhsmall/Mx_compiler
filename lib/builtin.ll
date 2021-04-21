; ModuleID = 'builtIn.c'
source_filename = "builtIn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %0)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @println(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printInt(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printlnInt(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @getString() #0 {
entry:
  %ret = alloca i8*, align 8
  %call = call noalias i8* @malloc(i64 1000) #5
  store i8* %call, i8** %ret, align 8
  %0 = load i8*, i8** %ret, align 8
  %call1 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %0)
  %1 = load i8*, i8** %ret, align 8
  ret i8* %1
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

declare dso_local i32 @__isoc99_scanf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getInt() #0 {
entry:
  %ret = alloca i32, align 4
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %ret)
  %0 = load i32, i32* %ret, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @toString(i32 %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  %ret = alloca i8*, align 8
  store i32 %i, i32* %i.addr, align 4
  %call = call noalias i8* @malloc(i64 15) #5
  store i8* %call, i8** %ret, align 8
  %0 = load i8*, i8** %ret, align 8
  %1 = load i32, i32* %i.addr, align 4
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %1) #5
  %2 = load i8*, i8** %ret, align 8
  ret i8* %2
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @stringAdd(i8* %str1, i8* %str2) #0 {
entry:
  %str1.addr = alloca i8*, align 8
  %str2.addr = alloca i8*, align 8
  %ret = alloca i8*, align 8
  store i8* %str1, i8** %str1.addr, align 8
  store i8* %str2, i8** %str2.addr, align 8
  %0 = load i8*, i8** %str1.addr, align 8
  %call = call i64 @strlen(i8* %0) #6
  %1 = load i8*, i8** %str2.addr, align 8
  %call1 = call i64 @strlen(i8* %1) #6
  %add = add i64 %call, %call1
  %add2 = add i64 %add, 1
  %call3 = call noalias i8* @malloc(i64 %add2) #5
  store i8* %call3, i8** %ret, align 8
  %2 = load i8*, i8** %ret, align 8
  %3 = load i8*, i8** %str1.addr, align 8
  %call4 = call i8* @strcpy(i8* %2, i8* %3) #5
  %4 = load i8*, i8** %ret, align 8
  %5 = load i8*, i8** %str2.addr, align 8
  %call5 = call i8* @strcat(i8* %4, i8* %5) #5
  %6 = load i8*, i8** %ret, align 8
  ret i8* %6
}

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @stringEq(i8* %str1, i8* %str2) #0 {
entry:
  %str1.addr = alloca i8*, align 8
  %str2.addr = alloca i8*, align 8
  store i8* %str1, i8** %str1.addr, align 8
  store i8* %str2, i8** %str2.addr, align 8
  %0 = load i8*, i8** %str1.addr, align 8
  %1 = load i8*, i8** %str2.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* %1) #6
  %cmp = icmp eq i32 %call, 0
  %conv = zext i1 %cmp to i32
  %conv1 = trunc i32 %conv to i8
  ret i8 %conv1
}

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @stringNe(i8* %str1, i8* %str2) #0 {
entry:
  %str1.addr = alloca i8*, align 8
  %str2.addr = alloca i8*, align 8
  store i8* %str1, i8** %str1.addr, align 8
  store i8* %str2, i8** %str2.addr, align 8
  %0 = load i8*, i8** %str1.addr, align 8
  %1 = load i8*, i8** %str2.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* %1) #6
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %conv1 = trunc i32 %conv to i8
  ret i8 %conv1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @stringGe(i8* %str1, i8* %str2) #0 {
entry:
  %str1.addr = alloca i8*, align 8
  %str2.addr = alloca i8*, align 8
  store i8* %str1, i8** %str1.addr, align 8
  store i8* %str2, i8** %str2.addr, align 8
  %0 = load i8*, i8** %str1.addr, align 8
  %1 = load i8*, i8** %str2.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* %1) #6
  %cmp = icmp sge i32 %call, 0
  %conv = zext i1 %cmp to i32
  %conv1 = trunc i32 %conv to i8
  ret i8 %conv1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @stringGt(i8* %str1, i8* %str2) #0 {
entry:
  %str1.addr = alloca i8*, align 8
  %str2.addr = alloca i8*, align 8
  store i8* %str1, i8** %str1.addr, align 8
  store i8* %str2, i8** %str2.addr, align 8
  %0 = load i8*, i8** %str1.addr, align 8
  %1 = load i8*, i8** %str2.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* %1) #6
  %cmp = icmp sgt i32 %call, 0
  %conv = zext i1 %cmp to i32
  %conv1 = trunc i32 %conv to i8
  ret i8 %conv1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @stringLe(i8* %str1, i8* %str2) #0 {
entry:
  %str1.addr = alloca i8*, align 8
  %str2.addr = alloca i8*, align 8
  store i8* %str1, i8** %str1.addr, align 8
  store i8* %str2, i8** %str2.addr, align 8
  %0 = load i8*, i8** %str1.addr, align 8
  %1 = load i8*, i8** %str2.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* %1) #6
  %cmp = icmp sle i32 %call, 0
  %conv = zext i1 %cmp to i32
  %conv1 = trunc i32 %conv to i8
  ret i8 %conv1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @stringLt(i8* %str1, i8* %str2) #0 {
entry:
  %str1.addr = alloca i8*, align 8
  %str2.addr = alloca i8*, align 8
  store i8* %str1, i8** %str1.addr, align 8
  store i8* %str2, i8** %str2.addr, align 8
  %0 = load i8*, i8** %str1.addr, align 8
  %1 = load i8*, i8** %str2.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* %1) #6
  %cmp = icmp slt i32 %call, 0
  %conv = zext i1 %cmp to i32
  %conv1 = trunc i32 %conv to i8
  ret i8 %conv1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @string__length(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %0) #6
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @string__substring(i8* %str, i32 %left, i32 %right) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %left.addr = alloca i32, align 4
  %right.addr = alloca i32, align 4
  %len = alloca i32, align 4
  %ret = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32 %left, i32* %left.addr, align 4
  store i32 %right, i32* %right.addr, align 4
  %0 = load i32, i32* %right.addr, align 4
  %1 = load i32, i32* %left.addr, align 4
  %sub = sub nsw i32 %0, %1
  store i32 %sub, i32* %len, align 4
  %2 = load i32, i32* %len, align 4
  %add = add nsw i32 %2, 1
  %conv = sext i32 %add to i64
  %call = call noalias i8* @malloc(i64 %conv) #5
  store i8* %call, i8** %ret, align 8
  %3 = load i8*, i8** %ret, align 8
  %4 = load i8*, i8** %str.addr, align 8
  %5 = load i32, i32* %left.addr, align 4
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  %6 = load i32, i32* %len, align 4
  %conv1 = sext i32 %6 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %add.ptr, i64 %conv1, i1 false)
  %7 = load i8*, i8** %ret, align 8
  %8 = load i32, i32* %len, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %9 = load i8*, i8** %ret, align 8
  ret i8* %9
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @string__parseInt(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %ret) #5
  %1 = load i32, i32* %ret, align 4
  ret i32 %1
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @string__ord(i8* %str, i32 %pos) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %pos.addr = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @array__size(i8* %arr) #0 {
entry:
  %arr.addr = alloca i8*, align 8
  store i8* %arr, i8** %arr.addr, align 8
  %0 = load i8*, i8** %arr.addr, align 8
  %1 = bitcast i8* %0 to i32*
  %add.ptr = getelementptr inbounds i32, i32* %1, i64 -1
  %2 = load i32, i32* %add.ptr, align 4
  ret i32 %2
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1~18.04.2 "}
