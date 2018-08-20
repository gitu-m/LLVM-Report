; ModuleID = 'bin_search.cpp'
source_filename = "bin_search.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_ZZ4mainE3arr = private unnamed_addr constant [5 x i32] [i32 2, i32 3, i32 4, i32 10, i32 40], align 16
@.str = private unnamed_addr constant [32 x i8] c"Element is not present in array\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Element is present at index %d\00", align 1

; Function Attrs: noinline optnone uwtable
define dso_local i32 @_Z12binarySearchPiiii(i32* %arr, i32 %l, i32 %r, i32 %x) #0 {
entry:
  %retval = alloca i32, align 4
  %arr.addr = alloca i32*, align 8
  %l.addr = alloca i32, align 4
  %r.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %mid = alloca i32, align 4
  store i32* %arr, i32** %arr.addr, align 8
  store i32 %l, i32* %l.addr, align 4
  store i32 %r, i32* %r.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* %r.addr, align 4
  %1 = load i32, i32* %l.addr, align 4
  %cmp = icmp sge i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %l.addr, align 4
  %3 = load i32, i32* %r.addr, align 4
  %4 = load i32, i32* %l.addr, align 4
  %sub = sub nsw i32 %3, %4
  %div = sdiv i32 %sub, 2
  %add = add nsw i32 %2, %div
  store i32 %add, i32* %mid, align 4
  %5 = load i32*, i32** %arr.addr, align 8
  %6 = load i32, i32* %mid, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  %8 = load i32, i32* %x.addr, align 4
  %cmp1 = icmp eq i32 %7, %8
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %9 = load i32, i32* %mid, align 4
  store i32 %9, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %10 = load i32*, i32** %arr.addr, align 8
  %11 = load i32, i32* %mid, align 4
  %idxprom3 = sext i32 %11 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %10, i64 %idxprom3
  %12 = load i32, i32* %arrayidx4, align 4
  %13 = load i32, i32* %x.addr, align 4
  %cmp5 = icmp sgt i32 %12, %13
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  %14 = load i32*, i32** %arr.addr, align 8
  %15 = load i32, i32* %l.addr, align 4
  %16 = load i32, i32* %mid, align 4
  %sub7 = sub nsw i32 %16, 1
  %17 = load i32, i32* %x.addr, align 4
  %call = call i32 @_Z12binarySearchPiiii(i32* %14, i32 %15, i32 %sub7, i32 %17)
  store i32 %call, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  %18 = load i32*, i32** %arr.addr, align 8
  %19 = load i32, i32* %mid, align 4
  %add9 = add nsw i32 %19, 1
  %20 = load i32, i32* %r.addr, align 4
  %21 = load i32, i32* %x.addr, align 4
  %call10 = call i32 @_Z12binarySearchPiiii(i32* %18, i32 %add9, i32 %20, i32 %21)
  store i32 %call10, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end11, %if.end8, %if.then6, %if.then2
  %22 = load i32, i32* %retval, align 4
  ret i32 %22
}

; Function Attrs: noinline norecurse optnone uwtable
define dso_local i32 @main() #1 {
entry:
  %retval = alloca i32, align 4
  %arr = alloca [5 x i32], align 16
  %n = alloca i32, align 4
  %x = alloca i32, align 4
  %result = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [5 x i32]* %arr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([5 x i32]* @_ZZ4mainE3arr to i8*), i64 20, i1 false)
  store i32 5, i32* %n, align 4
  store i32 10, i32* %x, align 4
  %arraydecay = getelementptr inbounds [5 x i32], [5 x i32]* %arr, i32 0, i32 0
  %1 = load i32, i32* %n, align 4
  %sub = sub nsw i32 %1, 1
  %2 = load i32, i32* %x, align 4
  %call = call i32 @_Z12binarySearchPiiii(i32* %arraydecay, i32 0, i32 %sub, i32 %2)
  store i32 %call, i32* %result, align 4
  %3 = load i32, i32* %result, align 4
  %cmp = icmp eq i32 %3, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0))
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i32, i32* %result, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0), i32 %4)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call1, %cond.true ], [ %call2, %cond.false ]
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.0 (https://git.llvm.org/git/clang.git/ 6c4fb3c5356d1a4fb031292c3a56458dd6e041b2) (https://git.llvm.org/git/llvm.git/ 922ac36549ebffa7764e0cefcc464cc3af25a8ac)"}
