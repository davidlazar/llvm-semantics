; ModuleID = '/home/grosu/celliso2/c-semantics/tests/csmith/smith001251.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

@g_2 = global i32 535539439, align 4
@g_3 = global [5 x i8] c"\EC\EC\EC\EC\EC", align 1
@g_6 = global i32 -273016243, align 4
@g_5 = constant i32* @g_6, align 8
@.str = private unnamed_addr constant [19 x i8] c"checksum g_2 = %d\0A\00", align 1
@.str1 = private unnamed_addr constant [22 x i8] c"checksum g_3[0] = %d\0A\00", align 1
@.str2 = private unnamed_addr constant [22 x i8] c"checksum g_3[1] = %d\0A\00", align 1
@.str3 = private unnamed_addr constant [22 x i8] c"checksum g_3[2] = %d\0A\00", align 1
@.str4 = private unnamed_addr constant [22 x i8] c"checksum g_3[3] = %d\0A\00", align 1
@.str5 = private unnamed_addr constant [22 x i8] c"checksum g_3[4] = %d\0A\00", align 1
@.str6 = private unnamed_addr constant [19 x i8] c"checksum g_6 = %d\0A\00", align 1
@__undefined = common global i64 0, align 8

define signext i8 @func_1() nounwind uwtable {
entry:
  %l_4 = alloca i64, align 8
  store i64 -1851238411739360625, i64* %l_4, align 8
  %tmp = volatile load i32* @g_2, align 4
  %tmp1 = load i8* getelementptr inbounds ([5 x i8]* @g_3, i32 0, i64 1), align 1
  %conv = zext i8 %tmp1 to i64
  %tmp2 = load i64* %l_4, align 8
  %tmp3 = load i64* %l_4, align 8
  %cmp = icmp ugt i64 %tmp2, %tmp3
  %conv4 = zext i1 %cmp to i32
  %conv5 = sext i32 %conv4 to i64
  %xor = xor i64 0, %conv5
  %cmp6 = icmp slt i64 %conv, %xor
  %conv7 = zext i1 %cmp6 to i32
  %cmp8 = icmp ugt i32 %tmp, %conv7
  %conv9 = zext i1 %cmp8 to i32
  %tmp10 = volatile load i32** @g_5, align 8
  store i32 %conv9, i32* %tmp10
  %tmp11 = load i64* %l_4, align 8
  %conv12 = trunc i64 %tmp11 to i8
  ret i8 %conv12
}

define i32 @main(i32 %argc, i8** %argv) nounwind uwtable {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call signext i8 @func_1()
  %tmp = volatile load i32* @g_2, align 4
  %call1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str, i32 0, i32 0), i32 %tmp)
  %tmp2 = load i8* getelementptr inbounds ([5 x i8]* @g_3, i32 0, i64 0), align 1
  %conv = zext i8 %tmp2 to i32
  %call3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str1, i32 0, i32 0), i32 %conv)
  %tmp4 = load i8* getelementptr inbounds ([5 x i8]* @g_3, i32 0, i64 1), align 1
  %conv5 = zext i8 %tmp4 to i32
  %call6 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str2, i32 0, i32 0), i32 %conv5)
  %tmp7 = load i8* getelementptr inbounds ([5 x i8]* @g_3, i32 0, i64 2), align 1
  %conv8 = zext i8 %tmp7 to i32
  %call9 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str3, i32 0, i32 0), i32 %conv8)
  %tmp10 = load i8* getelementptr inbounds ([5 x i8]* @g_3, i32 0, i64 3), align 1
  %conv11 = zext i8 %tmp10 to i32
  %call12 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str4, i32 0, i32 0), i32 %conv11)
  %tmp13 = load i8* getelementptr inbounds ([5 x i8]* @g_3, i32 0, i64 4), align 1
  %conv14 = zext i8 %tmp13 to i32
  %call15 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str5, i32 0, i32 0), i32 %conv14)
  %tmp16 = load i8* getelementptr inbounds ([5 x i8]* @g_3, i32 0, i64 1), align 1
  %conv17 = zext i8 %tmp16 to i32
  %call18 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str2, i32 0, i32 0), i32 %conv17)
  %tmp19 = load i32* @g_6, align 4
  %call20 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str6, i32 0, i32 0), i32 %tmp19)
  %0 = load i32* %retval
  ret i32 %0
}

declare i32 @printf(i8*, ...)
