; ModuleID = '/home/grosu/celliso2/c-semantics/tests/unitTests/initCharpEmptyString.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str1 = private unnamed_addr constant [6 x i8] c"x%sx\0A\00", align 1

define i32 @main() nounwind uwtable {
entry:
  %retval = alloca i32, align 4
  %s = alloca i8*, align 8
  store i32 0, i32* %retval
  store i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8** %s, align 8
  %tmp = load i8** %s, align 8
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0), i8* %tmp)
  ret i32 0
}

declare i32 @printf(i8*, ...)
