; ModuleID = '/home/david/src/c-semantics/tests/cil/test51.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"hello world %d %d\0A\00", align 1

define i32 @x() nounwind uwtable readnone {
entry:
  ret i32 1
}

define i32 @y() nounwind uwtable readnone {
entry:
  ret i32 1
}

define i32 @main(i32 %argc, i8** nocapture %argv) nounwind uwtable {
entry:
  %call2 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str, i64 0, i64 0), i32 1, i32 1) nounwind
  ret i32 0
}

declare i32 @printf(i8* nocapture, ...) nounwind
