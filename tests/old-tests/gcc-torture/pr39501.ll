; ModuleID = '/home/grosu/celliso2/c-semantics/tests/gcc-torture/pr39501.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

define i32 @gnu_dev_major(i64 %__dev) nounwind uwtable inlinehint {
entry:
  %__dev.addr = alloca i64, align 8
  store i64 %__dev, i64* %__dev.addr, align 8
  %tmp = load i64* %__dev.addr, align 8
  %shr = lshr i64 %tmp, 8
  %and = and i64 %shr, 4095
  %tmp1 = load i64* %__dev.addr, align 8
  %shr2 = lshr i64 %tmp1, 32
  %conv = trunc i64 %shr2 to i32
  %and3 = and i32 %conv, -4096
  %conv4 = zext i32 %and3 to i64
  %or = or i64 %and, %conv4
  %conv5 = trunc i64 %or to i32
  ret i32 %conv5
}

define i32 @gnu_dev_minor(i64 %__dev) nounwind uwtable inlinehint {
entry:
  %__dev.addr = alloca i64, align 8
  store i64 %__dev, i64* %__dev.addr, align 8
  %tmp = load i64* %__dev.addr, align 8
  %and = and i64 %tmp, 255
  %tmp1 = load i64* %__dev.addr, align 8
  %shr = lshr i64 %tmp1, 12
  %conv = trunc i64 %shr to i32
  %and2 = and i32 %conv, -256
  %conv3 = zext i32 %and2 to i64
  %or = or i64 %and, %conv3
  %conv4 = trunc i64 %or to i32
  ret i32 %conv4
}

define i64 @gnu_dev_makedev(i32 %__major, i32 %__minor) nounwind uwtable inlinehint {
entry:
  %__major.addr = alloca i32, align 4
  %__minor.addr = alloca i32, align 4
  store i32 %__major, i32* %__major.addr, align 4
  store i32 %__minor, i32* %__minor.addr, align 4
  %tmp = load i32* %__minor.addr, align 4
  %and = and i32 %tmp, 255
  %tmp1 = load i32* %__major.addr, align 4
  %and2 = and i32 %tmp1, 4095
  %shl = shl i32 %and2, 8
  %or = or i32 %and, %shl
  %conv = zext i32 %or to i64
  %tmp3 = load i32* %__minor.addr, align 4
  %and4 = and i32 %tmp3, -256
  %conv5 = zext i32 %and4 to i64
  %shl6 = shl i64 %conv5, 12
  %or7 = or i64 %conv, %shl6
  %tmp8 = load i32* %__major.addr, align 4
  %and9 = and i32 %tmp8, -4096
  %conv10 = zext i32 %and9 to i64
  %shl11 = shl i64 %conv10, 32
  %or12 = or i64 %or7, %shl11
  ret i64 %or12
}

define float @float_min1(float %a, float %b) nounwind uwtable noinline {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  %tmp = load float* %a.addr, align 4
  %tmp1 = load float* %b.addr, align 4
  %cmp = fcmp olt float %tmp, %tmp1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %tmp2 = load float* %a.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %tmp3 = load float* %b.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %tmp2, %cond.true ], [ %tmp3, %cond.false ]
  ret float %cond
}

define float @float_min2(float %a, float %b) nounwind uwtable noinline {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  %tmp = load float* %a.addr, align 4
  %tmp1 = load float* %b.addr, align 4
  %cmp = fcmp ole float %tmp, %tmp1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %tmp2 = load float* %a.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %tmp3 = load float* %b.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %tmp2, %cond.true ], [ %tmp3, %cond.false ]
  ret float %cond
}

define float @float_max1(float %a, float %b) nounwind uwtable noinline {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  %tmp = load float* %a.addr, align 4
  %tmp1 = load float* %b.addr, align 4
  %cmp = fcmp ogt float %tmp, %tmp1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %tmp2 = load float* %a.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %tmp3 = load float* %b.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %tmp2, %cond.true ], [ %tmp3, %cond.false ]
  ret float %cond
}

define float @float_max2(float %a, float %b) nounwind uwtable noinline {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  %tmp = load float* %a.addr, align 4
  %tmp1 = load float* %b.addr, align 4
  %cmp = fcmp oge float %tmp, %tmp1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %tmp2 = load float* %a.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %tmp3 = load float* %b.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %tmp2, %cond.true ], [ %tmp3, %cond.false ]
  ret float %cond
}

define double @double_min1(double %a, double %b) nounwind uwtable noinline {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  store double %a, double* %a.addr, align 8
  store double %b, double* %b.addr, align 8
  %tmp = load double* %a.addr, align 8
  %tmp1 = load double* %b.addr, align 8
  %cmp = fcmp olt double %tmp, %tmp1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %tmp2 = load double* %a.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %tmp3 = load double* %b.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %tmp2, %cond.true ], [ %tmp3, %cond.false ]
  ret double %cond
}

define double @double_min2(double %a, double %b) nounwind uwtable noinline {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  store double %a, double* %a.addr, align 8
  store double %b, double* %b.addr, align 8
  %tmp = load double* %a.addr, align 8
  %tmp1 = load double* %b.addr, align 8
  %cmp = fcmp ole double %tmp, %tmp1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %tmp2 = load double* %a.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %tmp3 = load double* %b.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %tmp2, %cond.true ], [ %tmp3, %cond.false ]
  ret double %cond
}

define double @double_max1(double %a, double %b) nounwind uwtable noinline {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  store double %a, double* %a.addr, align 8
  store double %b, double* %b.addr, align 8
  %tmp = load double* %a.addr, align 8
  %tmp1 = load double* %b.addr, align 8
  %cmp = fcmp ogt double %tmp, %tmp1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %tmp2 = load double* %a.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %tmp3 = load double* %b.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %tmp2, %cond.true ], [ %tmp3, %cond.false ]
  ret double %cond
}

define double @double_max2(double %a, double %b) nounwind uwtable noinline {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  store double %a, double* %a.addr, align 8
  store double %b, double* %b.addr, align 8
  %tmp = load double* %a.addr, align 8
  %tmp1 = load double* %b.addr, align 8
  %cmp = fcmp oge double %tmp, %tmp1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %tmp2 = load double* %a.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %tmp3 = load double* %b.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %tmp2, %cond.true ], [ %tmp3, %cond.false ]
  ret double %cond
}

define i32 @main() nounwind uwtable {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval
  %call = call float @float_min1(float 0.000000e+00, float -1.000000e+00)
  %cmp = fcmp une float %call, -1.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() noreturn nounwind
  unreachable

if.end:                                           ; preds = %entry
  %call1 = call float @float_min1(float -1.000000e+00, float 0.000000e+00)
  %cmp2 = fcmp une float %call1, -1.000000e+00
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @abort() noreturn nounwind
  unreachable

if.end4:                                          ; preds = %if.end
  %call5 = call float @float_min1(float 0.000000e+00, float 1.000000e+00)
  %cmp6 = fcmp une float %call5, 0.000000e+00
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @abort() noreturn nounwind
  unreachable

if.end8:                                          ; preds = %if.end4
  %call9 = call float @float_min1(float 1.000000e+00, float 0.000000e+00)
  %cmp10 = fcmp une float %call9, 0.000000e+00
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @abort() noreturn nounwind
  unreachable

if.end12:                                         ; preds = %if.end8
  %call13 = call float @float_min1(float -1.000000e+00, float 1.000000e+00)
  %cmp14 = fcmp une float %call13, -1.000000e+00
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  call void @abort() noreturn nounwind
  unreachable

if.end16:                                         ; preds = %if.end12
  %call17 = call float @float_min1(float 1.000000e+00, float -1.000000e+00)
  %cmp18 = fcmp une float %call17, -1.000000e+00
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  call void @abort() noreturn nounwind
  unreachable

if.end20:                                         ; preds = %if.end16
  %call21 = call float @float_max1(float 0.000000e+00, float -1.000000e+00)
  %cmp22 = fcmp une float %call21, 0.000000e+00
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end20
  call void @abort() noreturn nounwind
  unreachable

if.end24:                                         ; preds = %if.end20
  %call25 = call float @float_max1(float -1.000000e+00, float 0.000000e+00)
  %cmp26 = fcmp une float %call25, 0.000000e+00
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  call void @abort() noreturn nounwind
  unreachable

if.end28:                                         ; preds = %if.end24
  %call29 = call float @float_max1(float 0.000000e+00, float 1.000000e+00)
  %cmp30 = fcmp une float %call29, 1.000000e+00
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end28
  call void @abort() noreturn nounwind
  unreachable

if.end32:                                         ; preds = %if.end28
  %call33 = call float @float_max1(float 1.000000e+00, float 0.000000e+00)
  %cmp34 = fcmp une float %call33, 1.000000e+00
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end32
  call void @abort() noreturn nounwind
  unreachable

if.end36:                                         ; preds = %if.end32
  %call37 = call float @float_max1(float -1.000000e+00, float 1.000000e+00)
  %cmp38 = fcmp une float %call37, 1.000000e+00
  br i1 %cmp38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end36
  call void @abort() noreturn nounwind
  unreachable

if.end40:                                         ; preds = %if.end36
  %call41 = call float @float_max1(float 1.000000e+00, float -1.000000e+00)
  %cmp42 = fcmp une float %call41, 1.000000e+00
  br i1 %cmp42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end40
  call void @abort() noreturn nounwind
  unreachable

if.end44:                                         ; preds = %if.end40
  %call45 = call float @float_min2(float 0.000000e+00, float -1.000000e+00)
  %cmp46 = fcmp une float %call45, -1.000000e+00
  br i1 %cmp46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end44
  call void @abort() noreturn nounwind
  unreachable

if.end48:                                         ; preds = %if.end44
  %call49 = call float @float_min2(float -1.000000e+00, float 0.000000e+00)
  %cmp50 = fcmp une float %call49, -1.000000e+00
  br i1 %cmp50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end48
  call void @abort() noreturn nounwind
  unreachable

if.end52:                                         ; preds = %if.end48
  %call53 = call float @float_min2(float 0.000000e+00, float 1.000000e+00)
  %cmp54 = fcmp une float %call53, 0.000000e+00
  br i1 %cmp54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.end52
  call void @abort() noreturn nounwind
  unreachable

if.end56:                                         ; preds = %if.end52
  %call57 = call float @float_min2(float 1.000000e+00, float 0.000000e+00)
  %cmp58 = fcmp une float %call57, 0.000000e+00
  br i1 %cmp58, label %if.then59, label %if.end60

if.then59:                                        ; preds = %if.end56
  call void @abort() noreturn nounwind
  unreachable

if.end60:                                         ; preds = %if.end56
  %call61 = call float @float_min2(float -1.000000e+00, float 1.000000e+00)
  %cmp62 = fcmp une float %call61, -1.000000e+00
  br i1 %cmp62, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.end60
  call void @abort() noreturn nounwind
  unreachable

if.end64:                                         ; preds = %if.end60
  %call65 = call float @float_min2(float 1.000000e+00, float -1.000000e+00)
  %cmp66 = fcmp une float %call65, -1.000000e+00
  br i1 %cmp66, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.end64
  call void @abort() noreturn nounwind
  unreachable

if.end68:                                         ; preds = %if.end64
  %call69 = call float @float_max2(float 0.000000e+00, float -1.000000e+00)
  %cmp70 = fcmp une float %call69, 0.000000e+00
  br i1 %cmp70, label %if.then71, label %if.end72

if.then71:                                        ; preds = %if.end68
  call void @abort() noreturn nounwind
  unreachable

if.end72:                                         ; preds = %if.end68
  %call73 = call float @float_max2(float -1.000000e+00, float 0.000000e+00)
  %cmp74 = fcmp une float %call73, 0.000000e+00
  br i1 %cmp74, label %if.then75, label %if.end76

if.then75:                                        ; preds = %if.end72
  call void @abort() noreturn nounwind
  unreachable

if.end76:                                         ; preds = %if.end72
  %call77 = call float @float_max2(float 0.000000e+00, float 1.000000e+00)
  %cmp78 = fcmp une float %call77, 1.000000e+00
  br i1 %cmp78, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.end76
  call void @abort() noreturn nounwind
  unreachable

if.end80:                                         ; preds = %if.end76
  %call81 = call float @float_max2(float 1.000000e+00, float 0.000000e+00)
  %cmp82 = fcmp une float %call81, 1.000000e+00
  br i1 %cmp82, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.end80
  call void @abort() noreturn nounwind
  unreachable

if.end84:                                         ; preds = %if.end80
  %call85 = call float @float_max2(float -1.000000e+00, float 1.000000e+00)
  %cmp86 = fcmp une float %call85, 1.000000e+00
  br i1 %cmp86, label %if.then87, label %if.end88

if.then87:                                        ; preds = %if.end84
  call void @abort() noreturn nounwind
  unreachable

if.end88:                                         ; preds = %if.end84
  %call89 = call float @float_max2(float 1.000000e+00, float -1.000000e+00)
  %cmp90 = fcmp une float %call89, 1.000000e+00
  br i1 %cmp90, label %if.then91, label %if.end92

if.then91:                                        ; preds = %if.end88
  call void @abort() noreturn nounwind
  unreachable

if.end92:                                         ; preds = %if.end88
  %call93 = call double @double_min1(double 0.000000e+00, double -1.000000e+00)
  %cmp94 = fcmp une double %call93, -1.000000e+00
  br i1 %cmp94, label %if.then95, label %if.end96

if.then95:                                        ; preds = %if.end92
  call void @abort() noreturn nounwind
  unreachable

if.end96:                                         ; preds = %if.end92
  %call97 = call double @double_min1(double -1.000000e+00, double 0.000000e+00)
  %cmp98 = fcmp une double %call97, -1.000000e+00
  br i1 %cmp98, label %if.then99, label %if.end100

if.then99:                                        ; preds = %if.end96
  call void @abort() noreturn nounwind
  unreachable

if.end100:                                        ; preds = %if.end96
  %call101 = call double @double_min1(double 0.000000e+00, double 1.000000e+00)
  %cmp102 = fcmp une double %call101, 0.000000e+00
  br i1 %cmp102, label %if.then103, label %if.end104

if.then103:                                       ; preds = %if.end100
  call void @abort() noreturn nounwind
  unreachable

if.end104:                                        ; preds = %if.end100
  %call105 = call double @double_min1(double 1.000000e+00, double 0.000000e+00)
  %cmp106 = fcmp une double %call105, 0.000000e+00
  br i1 %cmp106, label %if.then107, label %if.end108

if.then107:                                       ; preds = %if.end104
  call void @abort() noreturn nounwind
  unreachable

if.end108:                                        ; preds = %if.end104
  %call109 = call double @double_min1(double -1.000000e+00, double 1.000000e+00)
  %cmp110 = fcmp une double %call109, -1.000000e+00
  br i1 %cmp110, label %if.then111, label %if.end112

if.then111:                                       ; preds = %if.end108
  call void @abort() noreturn nounwind
  unreachable

if.end112:                                        ; preds = %if.end108
  %call113 = call double @double_min1(double 1.000000e+00, double -1.000000e+00)
  %cmp114 = fcmp une double %call113, -1.000000e+00
  br i1 %cmp114, label %if.then115, label %if.end116

if.then115:                                       ; preds = %if.end112
  call void @abort() noreturn nounwind
  unreachable

if.end116:                                        ; preds = %if.end112
  %call117 = call double @double_max1(double 0.000000e+00, double -1.000000e+00)
  %cmp118 = fcmp une double %call117, 0.000000e+00
  br i1 %cmp118, label %if.then119, label %if.end120

if.then119:                                       ; preds = %if.end116
  call void @abort() noreturn nounwind
  unreachable

if.end120:                                        ; preds = %if.end116
  %call121 = call double @double_max1(double -1.000000e+00, double 0.000000e+00)
  %cmp122 = fcmp une double %call121, 0.000000e+00
  br i1 %cmp122, label %if.then123, label %if.end124

if.then123:                                       ; preds = %if.end120
  call void @abort() noreturn nounwind
  unreachable

if.end124:                                        ; preds = %if.end120
  %call125 = call double @double_max1(double 0.000000e+00, double 1.000000e+00)
  %cmp126 = fcmp une double %call125, 1.000000e+00
  br i1 %cmp126, label %if.then127, label %if.end128

if.then127:                                       ; preds = %if.end124
  call void @abort() noreturn nounwind
  unreachable

if.end128:                                        ; preds = %if.end124
  %call129 = call double @double_max1(double 1.000000e+00, double 0.000000e+00)
  %cmp130 = fcmp une double %call129, 1.000000e+00
  br i1 %cmp130, label %if.then131, label %if.end132

if.then131:                                       ; preds = %if.end128
  call void @abort() noreturn nounwind
  unreachable

if.end132:                                        ; preds = %if.end128
  %call133 = call double @double_max1(double -1.000000e+00, double 1.000000e+00)
  %cmp134 = fcmp une double %call133, 1.000000e+00
  br i1 %cmp134, label %if.then135, label %if.end136

if.then135:                                       ; preds = %if.end132
  call void @abort() noreturn nounwind
  unreachable

if.end136:                                        ; preds = %if.end132
  %call137 = call double @double_max1(double 1.000000e+00, double -1.000000e+00)
  %cmp138 = fcmp une double %call137, 1.000000e+00
  br i1 %cmp138, label %if.then139, label %if.end140

if.then139:                                       ; preds = %if.end136
  call void @abort() noreturn nounwind
  unreachable

if.end140:                                        ; preds = %if.end136
  %call141 = call double @double_min2(double 0.000000e+00, double -1.000000e+00)
  %cmp142 = fcmp une double %call141, -1.000000e+00
  br i1 %cmp142, label %if.then143, label %if.end144

if.then143:                                       ; preds = %if.end140
  call void @abort() noreturn nounwind
  unreachable

if.end144:                                        ; preds = %if.end140
  %call145 = call double @double_min2(double -1.000000e+00, double 0.000000e+00)
  %cmp146 = fcmp une double %call145, -1.000000e+00
  br i1 %cmp146, label %if.then147, label %if.end148

if.then147:                                       ; preds = %if.end144
  call void @abort() noreturn nounwind
  unreachable

if.end148:                                        ; preds = %if.end144
  %call149 = call double @double_min2(double 0.000000e+00, double 1.000000e+00)
  %cmp150 = fcmp une double %call149, 0.000000e+00
  br i1 %cmp150, label %if.then151, label %if.end152

if.then151:                                       ; preds = %if.end148
  call void @abort() noreturn nounwind
  unreachable

if.end152:                                        ; preds = %if.end148
  %call153 = call double @double_min2(double 1.000000e+00, double 0.000000e+00)
  %cmp154 = fcmp une double %call153, 0.000000e+00
  br i1 %cmp154, label %if.then155, label %if.end156

if.then155:                                       ; preds = %if.end152
  call void @abort() noreturn nounwind
  unreachable

if.end156:                                        ; preds = %if.end152
  %call157 = call double @double_min2(double -1.000000e+00, double 1.000000e+00)
  %cmp158 = fcmp une double %call157, -1.000000e+00
  br i1 %cmp158, label %if.then159, label %if.end160

if.then159:                                       ; preds = %if.end156
  call void @abort() noreturn nounwind
  unreachable

if.end160:                                        ; preds = %if.end156
  %call161 = call double @double_min2(double 1.000000e+00, double -1.000000e+00)
  %cmp162 = fcmp une double %call161, -1.000000e+00
  br i1 %cmp162, label %if.then163, label %if.end164

if.then163:                                       ; preds = %if.end160
  call void @abort() noreturn nounwind
  unreachable

if.end164:                                        ; preds = %if.end160
  %call165 = call double @double_max2(double 0.000000e+00, double -1.000000e+00)
  %cmp166 = fcmp une double %call165, 0.000000e+00
  br i1 %cmp166, label %if.then167, label %if.end168

if.then167:                                       ; preds = %if.end164
  call void @abort() noreturn nounwind
  unreachable

if.end168:                                        ; preds = %if.end164
  %call169 = call double @double_max2(double -1.000000e+00, double 0.000000e+00)
  %cmp170 = fcmp une double %call169, 0.000000e+00
  br i1 %cmp170, label %if.then171, label %if.end172

if.then171:                                       ; preds = %if.end168
  call void @abort() noreturn nounwind
  unreachable

if.end172:                                        ; preds = %if.end168
  %call173 = call double @double_max2(double 0.000000e+00, double 1.000000e+00)
  %cmp174 = fcmp une double %call173, 1.000000e+00
  br i1 %cmp174, label %if.then175, label %if.end176

if.then175:                                       ; preds = %if.end172
  call void @abort() noreturn nounwind
  unreachable

if.end176:                                        ; preds = %if.end172
  %call177 = call double @double_max2(double 1.000000e+00, double 0.000000e+00)
  %cmp178 = fcmp une double %call177, 1.000000e+00
  br i1 %cmp178, label %if.then179, label %if.end180

if.then179:                                       ; preds = %if.end176
  call void @abort() noreturn nounwind
  unreachable

if.end180:                                        ; preds = %if.end176
  %call181 = call double @double_max2(double -1.000000e+00, double 1.000000e+00)
  %cmp182 = fcmp une double %call181, 1.000000e+00
  br i1 %cmp182, label %if.then183, label %if.end184

if.then183:                                       ; preds = %if.end180
  call void @abort() noreturn nounwind
  unreachable

if.end184:                                        ; preds = %if.end180
  %call185 = call double @double_max2(double 1.000000e+00, double -1.000000e+00)
  %cmp186 = fcmp une double %call185, 1.000000e+00
  br i1 %cmp186, label %if.then187, label %if.end188

if.then187:                                       ; preds = %if.end184
  call void @abort() noreturn nounwind
  unreachable

if.end188:                                        ; preds = %if.end184
  call void @exit(i32 0) noreturn nounwind
  unreachable

return:                                           ; No predecessors!
  %0 = load i32* %retval
  ret i32 %0
}

declare void @abort() noreturn nounwind

declare void @exit(i32) noreturn nounwind
