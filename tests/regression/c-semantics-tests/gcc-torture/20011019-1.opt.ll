; ModuleID = '/home/david/src/c-semantics/tests/gcc-torture/20011019-1.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, [5 x i32] }

@y = common global i32* null, align 8
@x = common global %struct.anon zeroinitializer, align 4

define i32 @foo() nounwind uwtable readonly {
entry:
  %0 = load i32** @y, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint i32* %0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint (i32* getelementptr inbounds (%struct.anon* @x, i64 0, i32 1, i64 0) to i64)
  %sub.ptr.div1 = lshr exact i64 %sub.ptr.sub, 2
  %conv = trunc i64 %sub.ptr.div1 to i32
  ret i32 %conv
}

define i32 @main() noreturn nounwind uwtable {
if.end:
  store i32* getelementptr inbounds (%struct.anon* @x, i64 0, i32 1, i64 0), i32** @y, align 8, !tbaa !0
  tail call void @exit(i32 0) noreturn nounwind
  unreachable
}

declare void @exit(i32) noreturn

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA", null}
