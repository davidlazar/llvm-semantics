; ModuleID = '/home/grosu/celliso2/c-semantics/tests/csmith/smith001589.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

%0 = type <{ %1, %1, %1, %1, %1 }>
%1 = type <{ %2, %2 }>
%2 = type { i8, i8, i32, i8, i32, i16, [2 x i8] }
%struct.S0 = type { i8, i8, i32, i8, i32, i16 }

@func_1.l_2 = internal constant %0 <{ %1 <{ %2 { i8 -1, i8 -1, i32 0, i8 -1, i32 709089619, i16 -17647, [2 x i8] undef }, %2 { i8 -1, i8 -1, i32 0, i8 -1, i32 709089619, i16 -17647, [2 x i8] undef } }>, %1 <{ %2 { i8 -1, i8 -1, i32 0, i8 -1, i32 709089619, i16 -17647, [2 x i8] undef }, %2 { i8 -1, i8 -1, i32 0, i8 -1, i32 709089619, i16 -17647, [2 x i8] undef } }>, %1 <{ %2 { i8 -1, i8 -1, i32 0, i8 -1, i32 709089619, i16 -17647, [2 x i8] undef }, %2 { i8 -1, i8 -1, i32 0, i8 -1, i32 709089619, i16 -17647, [2 x i8] undef } }>, %1 <{ %2 { i8 -1, i8 -1, i32 0, i8 -1, i32 709089619, i16 -17647, [2 x i8] undef }, %2 { i8 -1, i8 -1, i32 0, i8 -1, i32 709089619, i16 -17647, [2 x i8] undef } }>, %1 <{ %2 { i8 -1, i8 -1, i32 0, i8 -1, i32 709089619, i16 -17647, [2 x i8] undef }, %2 { i8 -1, i8 -1, i32 0, i8 -1, i32 709089619, i16 -17647, [2 x i8] undef } }> }>, align 16
@__undefined = common global i64 0, align 8

define void @func_1(%struct.S0* sret %agg.result) nounwind uwtable {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %tmp = bitcast %struct.S0* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %tmp, i8* getelementptr inbounds ([5 x [2 x %struct.S0]]* bitcast (%0* @func_1.l_2 to [5 x [2 x %struct.S0]]*), i32 0, i64 3, i64 0, i32 0), i64 20, i32 4, i1 false)
  ret void
}

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

define i32 @main(i32 %argc, i8** %argv) nounwind uwtable {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %tmp = alloca %struct.S0, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  call void @func_1(%struct.S0* sret %tmp)
  %0 = load i32* %retval
  ret i32 %0
}
