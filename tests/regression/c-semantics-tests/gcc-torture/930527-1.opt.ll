; ModuleID = '/home/david/src/c-semantics/tests/gcc-torture/930527-1.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @f(i8 zeroext %x) nounwind uwtable readnone {
entry:
  %conv = zext i8 %x to i32
  %shr1 = lshr i32 %conv, 4
  %xor = xor i32 %shr1, 175
  ret i32 %xor
}

define i32 @main() noreturn nounwind uwtable {
if.end:
  tail call void @exit(i32 0) noreturn nounwind
  unreachable
}

declare void @exit(i32) noreturn nounwind
