; ModuleID = '/home/grosu/celliso2/c-semantics/tests/gcc-torture/vrp-4.ll'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

define void @test(i32 %x, i32 %y) nounwind uwtable {
entry:
  %cmp = icmp eq i32 %x, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @abort() noreturn nounwind
  unreachable

if.end:                                           ; preds = %entry
  %cmp2 = icmp eq i32 %y, 1
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @abort() noreturn nounwind
  unreachable

if.end4:                                          ; preds = %if.end
  %div = sdiv i32 %x, %y
  %cmp8 = icmp eq i32 %div, 1
  br i1 %cmp8, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end4
  tail call void @abort() noreturn nounwind
  unreachable

if.end10:                                         ; preds = %if.end4
  ret void
}

declare void @abort() noreturn

define i32 @main() noreturn nounwind uwtable {
entry:
  tail call void @exit(i32 0) noreturn nounwind
  unreachable
}

declare void @exit(i32) noreturn
