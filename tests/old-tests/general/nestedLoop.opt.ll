; ModuleID = '/home/grosu/celliso2/c-semantics/tests/unitTests/nestedLoop.ll'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"(i, j)=(%d, %d)\00", align 1

define i32 @sec26() nounwind uwtable {
entry:
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str, i64 0, i64 0), i32 0, i32 0) nounwind
  %call.1 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str, i64 0, i64 0), i32 0, i32 1) nounwind
  %call.2 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str, i64 0, i64 0), i32 0, i32 2) nounwind
  %call.15 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str, i64 0, i64 0), i32 1, i32 0) nounwind
  %call.1.1 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str, i64 0, i64 0), i32 1, i32 1) nounwind
  %call.2.1 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str, i64 0, i64 0), i32 1, i32 2) nounwind
  %call.26 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str, i64 0, i64 0), i32 2, i32 0) nounwind
  %call.1.2 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str, i64 0, i64 0), i32 2, i32 1) nounwind
  %call.2.2 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str, i64 0, i64 0), i32 2, i32 2) nounwind
  %call.3 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str, i64 0, i64 0), i32 3, i32 0) nounwind
  %call.1.3 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str, i64 0, i64 0), i32 3, i32 1) nounwind
  %call.2.3 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str, i64 0, i64 0), i32 3, i32 2) nounwind
  ret i32 0
}

declare i32 @printf(i8* nocapture, ...) nounwind

define i32 @main() nounwind uwtable {
entry:
  %call = tail call i32 @sec26()
  %tobool = icmp eq i32 %call, 0
  %. = select i1 %tobool, i32 0, i32 26
  ret i32 %.
}
