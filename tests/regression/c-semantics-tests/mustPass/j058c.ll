; ModuleID = '/home/david/src/c-semantics/tests/mustPass/j058c.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._a = type { i32, i32 }

@a = global %struct._a { i32 0, i32 1 }, align 4
@ap = global %struct._a* @a, align 8
@p = global i32* getelementptr inbounds (%struct._a* @a, i32 0, i32 0), align 8
@x = common global i32 0, align 4
@y = common global i32 0, align 4

define i32 @main() nounwind uwtable {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval
  %0 = load i32** @p, align 8
  %1 = load i32* %0, align 4
  ret i32 %1
}
