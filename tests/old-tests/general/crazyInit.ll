; ModuleID = '/home/grosu/celliso2/c-semantics/tests/unitTests/crazyInit.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

%struct.S1 = type { [3 x i32] }
%struct.S2 = type { %struct.S1 }

@main.s1 = internal unnamed_addr constant %struct.S1 { [3 x i32] [i32 1, i32 2, i32 3] }, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

define i32 @main() nounwind uwtable {
entry:
  %retval = alloca i32, align 4
  %s1 = alloca %struct.S1, align 4
  %s2 = alloca %struct.S2, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval
  %tmp = bitcast %struct.S1* %s1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %tmp, i8* bitcast (%struct.S1* @main.s1 to i8*), i64 12, i32 4, i1 false)
  %s = getelementptr inbounds %struct.S2* %s2, i32 0, i32 0
  %tmp2 = bitcast %struct.S1* %s to i8*
  %tmp3 = bitcast %struct.S1* %s1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %tmp2, i8* %tmp3, i64 12, i32 4, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %tmp5 = load i32* %i, align 4
  %cmp = icmp slt i32 %tmp5, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %tmp6 = load i32* %i, align 4
  %idxprom = sext i32 %tmp6 to i64
  %s7 = getelementptr inbounds %struct.S2* %s2, i32 0, i32 0
  %arr = getelementptr inbounds %struct.S1* %s7, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x i32]* %arr, i32 0, i64 %idxprom
  %tmp8 = load i32* %arrayidx, align 4
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0), i32 %tmp8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %tmp9 = load i32* %i, align 4
  %inc = add nsw i32 %tmp9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 0
}

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

declare i32 @printf(i8*, ...)
