; ModuleID = '/home/david/src/c-semantics/tests/gcc-torture/20000227-1.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@f = internal constant [3 x i8] c"\00\FF\00", align 1
@g = internal constant [3 x i8] c"\00\FF\00", align 1

define i32 @main() nounwind uwtable {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval
  %0 = load i8* getelementptr inbounds ([3 x i8]* @f, i32 0, i64 0), align 1
  %conv = zext i8 %0 to i32
  %1 = load i8* getelementptr inbounds ([3 x i8]* @g, i32 0, i64 0), align 1
  %conv1 = zext i8 %1 to i32
  %cmp = icmp ne i32 %conv, %conv1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() noreturn nounwind
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i8* getelementptr inbounds ([3 x i8]* @f, i32 0, i64 1), align 1
  %conv3 = zext i8 %2 to i32
  %3 = load i8* getelementptr inbounds ([3 x i8]* @g, i32 0, i64 1), align 1
  %conv4 = zext i8 %3 to i32
  %cmp5 = icmp ne i32 %conv3, %conv4
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @abort() noreturn nounwind
  unreachable

if.end8:                                          ; preds = %if.end
  %4 = load i8* getelementptr inbounds ([3 x i8]* @f, i32 0, i64 2), align 1
  %conv9 = zext i8 %4 to i32
  %5 = load i8* getelementptr inbounds ([3 x i8]* @g, i32 0, i64 2), align 1
  %conv10 = zext i8 %5 to i32
  %cmp11 = icmp ne i32 %conv9, %conv10
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end8
  call void @abort() noreturn nounwind
  unreachable

if.end14:                                         ; preds = %if.end8
  ret i32 0
}

declare void @abort() noreturn nounwind
