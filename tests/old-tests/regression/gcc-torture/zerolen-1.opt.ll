; ModuleID = '/home/grosu/celliso2/c-semantics/tests/gcc-torture/zerolen-1.ll'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

%union.iso_directory_record = type { [4 x i8] }

@entry = common global %union.iso_directory_record zeroinitializer, align 1

define i32 @main() noreturn nounwind uwtable {
if.then:
  store i8 1, i8* getelementptr inbounds (%union.iso_directory_record* @entry, i64 0, i32 0, i64 0), align 1
  store i8 0, i8* getelementptr inbounds (%union.iso_directory_record* @entry, i64 0, i32 0, i64 1), align 1
  tail call void @exit(i32 0) noreturn nounwind
  unreachable
}

define void @set(%union.iso_directory_record* %p) nounwind uwtable {
entry:
  %arrayidx = getelementptr inbounds %union.iso_directory_record* %p, i64 0, i32 0, i64 0
  store i8 1, i8* %arrayidx, align 1
  %arrayidx3 = getelementptr inbounds %union.iso_directory_record* %p, i64 0, i32 0, i64 1
  store i8 0, i8* %arrayidx3, align 1
  ret void
}

declare void @exit(i32) noreturn
