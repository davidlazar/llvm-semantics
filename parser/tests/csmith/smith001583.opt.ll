; ModuleID = '/home/grosu/celliso2/c-semantics/tests/csmith/smith001583.ll'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

@__undefined = common global i64 0, align 8

define i64 @func_1() nounwind uwtable readnone {
entry:
  ret i64 3
}

define i32 @main(i32 %argc, i8** nocapture %argv) nounwind uwtable readnone {
entry:
  ret i32 0
}
