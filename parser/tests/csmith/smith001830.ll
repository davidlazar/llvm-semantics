; ModuleID = '/home/grosu/celliso2/c-semantics/tests/csmith/smith001830.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

@g_3 = global i8 106, align 1
@g_5 = global i32 -10, align 4
@.str = private unnamed_addr constant [19 x i8] c"checksum g_3 = %d\0A\00", align 1
@.str1 = private unnamed_addr constant [19 x i8] c"checksum g_5 = %d\0A\00", align 1
@__undefined = common global i64 0, align 8

define i32 @func_1() nounwind uwtable {
entry:
  %l_2 = alloca i32, align 4
  %l_4 = alloca i32*, align 8
  store i32 -9, i32* %l_2, align 4
  store i32* @g_5, i32** %l_4, align 8
  %tmp = load i32* %l_2, align 4
  %tobool = icmp ne i32 %tmp, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %tmp1 = volatile load i8* @g_3, align 1
  %conv = sext i8 %tmp1 to i64
  %cmp = icmp sgt i64 3083795101, %conv
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  %land.ext = zext i1 %0 to i32
  %tmp3 = load i32** %l_4, align 8
  %tmp4 = load i32* %tmp3
  %xor = xor i32 %tmp4, %land.ext
  store i32 %xor, i32* %tmp3
  %cmp5 = icmp ne i32* null, %l_2
  %conv6 = zext i1 %cmp5 to i32
  %tmp7 = load i32** %l_4, align 8
  store i32 %conv6, i32* %tmp7
  %tmp8 = load i32* @g_5, align 4
  ret i32 %tmp8
}

define i32 @main(i32 %argc, i8** %argv) nounwind uwtable {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call i32 @func_1()
  %tmp = volatile load i8* @g_3, align 1
  %conv = sext i8 %tmp to i32
  %call1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str, i32 0, i32 0), i32 %conv)
  %tmp2 = load i32* @g_5, align 4
  %call3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 %tmp2)
  %0 = load i32* %retval
  ret i32 %0
}

declare i32 @printf(i8*, ...)
