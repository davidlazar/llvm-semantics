; ModuleID = '/home/grosu/celliso2/c-semantics/tests/unitTests/testGotoStatic.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

@f.staticInt = internal global i32 0, align 4

define i32 @f(i32 %x) nounwind uwtable {
entry:
  %x.addr = alloca i32, align 4
  %retval1 = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 0, i32* %retval1, align 4
  %tmp = load i32* %x.addr, align 4
  %rem = srem i32 %tmp, 2
  %cmp = icmp eq i32 %rem, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %pastStatic

if.end:                                           ; preds = %entry
  br label %pastStatic

pastStatic:                                       ; preds = %if.end, %if.then
  %tmp2 = load i32* @f.staticInt, align 4
  %inc = add nsw i32 %tmp2, 1
  store i32 %inc, i32* @f.staticInt, align 4
  store i32 %inc, i32* %retval1, align 4
  %tmp3 = load i32* %retval1, align 4
  ret i32 %tmp3
}

define i32 @main() nounwind uwtable {
entry:
  %retval = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 0, i32* %retval1, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %tmp = load i32* %i, align 4
  %cmp = icmp slt i32 %tmp, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %tmp2 = load i32* %i, align 4
  %call = call i32 @f(i32 %tmp2)
  store i32 %call, i32* %retval1, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %tmp3 = load i32* %i, align 4
  %inc = add nsw i32 %tmp3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %tmp4 = load i32* %retval1, align 4
  ret i32 %tmp4
}
