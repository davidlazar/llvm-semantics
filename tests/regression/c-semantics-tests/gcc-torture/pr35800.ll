; ModuleID = '/home/david/src/c-semantics/tests/gcc-torture/pr35800.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str2 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str3 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str4 = private unnamed_addr constant [14 x i8] c"unsigned char\00", align 1
@.str5 = private unnamed_addr constant [12 x i8] c"signed char\00", align 1
@.str6 = private unnamed_addr constant [15 x i8] c"unsigned short\00", align 1
@.str7 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str8 = private unnamed_addr constant [9 x i8] c"unsigned\00", align 1
@.str9 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str10 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str11 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str12 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str13 = private unnamed_addr constant [12 x i8] c"long double\00", align 1
@.str14 = private unnamed_addr constant [8 x i8] c"integer\00", align 1
@.str15 = private unnamed_addr constant [8 x i8] c"boolean\00", align 1
@.str16 = private unnamed_addr constant [11 x i8] c"short real\00", align 1
@.str17 = private unnamed_addr constant [5 x i8] c"real\00", align 1
@.str18 = private unnamed_addr constant [10 x i8] c"stringptr\00", align 1
@.str19 = private unnamed_addr constant [10 x i8] c"character\00", align 1
@.str20 = private unnamed_addr constant [10 x i8] c"logical*1\00", align 1
@.str21 = private unnamed_addr constant [10 x i8] c"logical*2\00", align 1
@.str22 = private unnamed_addr constant [10 x i8] c"logical*4\00", align 1
@.str23 = private unnamed_addr constant [8 x i8] c"logical\00", align 1
@.str24 = private unnamed_addr constant [8 x i8] c"complex\00", align 1
@.str25 = private unnamed_addr constant [15 x i8] c"double complex\00", align 1
@.str26 = private unnamed_addr constant [10 x i8] c"integer*1\00", align 1
@.str27 = private unnamed_addr constant [10 x i8] c"integer*2\00", align 1
@.str28 = private unnamed_addr constant [10 x i8] c"integer*4\00", align 1
@.str29 = private unnamed_addr constant [6 x i8] c"wchar\00", align 1
@.str30 = private unnamed_addr constant [10 x i8] c"long long\00", align 1
@.str31 = private unnamed_addr constant [19 x i8] c"unsigned long long\00", align 1
@.str32 = private unnamed_addr constant [10 x i8] c"logical*8\00", align 1
@.str33 = private unnamed_addr constant [10 x i8] c"integer*8\00", align 1

define i32 @stab_xcoff_builtin_type(i32 %typenum) nounwind uwtable {
entry:
  %retval = alloca i32, align 4
  %typenum.addr = alloca i32, align 4
  %name = alloca i8*, align 8
  store i32 %typenum, i32* %typenum.addr, align 4
  %0 = load i32* %typenum.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32* %typenum.addr, align 4
  %cmp1 = icmp slt i32 %1, -34
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32* %typenum.addr, align 4
  %sub = sub nsw i32 0, %2
  switch i32 %sub, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
    i32 5, label %sw.bb5
    i32 6, label %sw.bb6
    i32 7, label %sw.bb7
    i32 8, label %sw.bb8
    i32 9, label %sw.bb9
    i32 10, label %sw.bb10
    i32 11, label %sw.bb11
    i32 12, label %sw.bb12
    i32 13, label %sw.bb13
    i32 14, label %sw.bb14
    i32 15, label %sw.bb15
    i32 16, label %sw.bb16
    i32 17, label %sw.bb17
    i32 18, label %sw.bb18
    i32 19, label %sw.bb19
    i32 20, label %sw.bb20
    i32 21, label %sw.bb21
    i32 22, label %sw.bb22
    i32 23, label %sw.bb23
    i32 24, label %sw.bb24
    i32 25, label %sw.bb25
    i32 26, label %sw.bb26
    i32 27, label %sw.bb27
    i32 28, label %sw.bb28
    i32 29, label %sw.bb29
    i32 30, label %sw.bb30
    i32 31, label %sw.bb31
    i32 32, label %sw.bb32
    i32 33, label %sw.bb33
    i32 34, label %sw.bb34
  ]

sw.bb:                                            ; preds = %if.end
  store i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0), i8** %name, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([5 x i8]* @.str1, i32 0, i32 0), i8** %name, align 8
  br label %sw.bb3

sw.bb3:                                           ; preds = %if.end, %sw.bb2
  store i8* getelementptr inbounds ([6 x i8]* @.str2, i32 0, i32 0), i8** %name, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([5 x i8]* @.str3, i32 0, i32 0), i8** %name, align 8
  br label %sw.bb5

sw.bb5:                                           ; preds = %if.end, %sw.bb4
  store i8* getelementptr inbounds ([14 x i8]* @.str4, i32 0, i32 0), i8** %name, align 8
  br label %sw.bb6

sw.bb6:                                           ; preds = %if.end, %sw.bb5
  store i8* getelementptr inbounds ([12 x i8]* @.str5, i32 0, i32 0), i8** %name, align 8
  br label %sw.bb7

sw.bb7:                                           ; preds = %if.end, %sw.bb6
  store i8* getelementptr inbounds ([15 x i8]* @.str6, i32 0, i32 0), i8** %name, align 8
  br label %sw.bb8

sw.bb8:                                           ; preds = %if.end, %sw.bb7
  store i8* getelementptr inbounds ([13 x i8]* @.str7, i32 0, i32 0), i8** %name, align 8
  br label %sw.bb9

sw.bb9:                                           ; preds = %if.end, %sw.bb8
  store i8* getelementptr inbounds ([9 x i8]* @.str8, i32 0, i32 0), i8** %name, align 8
  br label %sw.bb10

sw.bb10:                                          ; preds = %if.end, %sw.bb9
  store i8* getelementptr inbounds ([14 x i8]* @.str9, i32 0, i32 0), i8** %name, align 8
  br label %sw.bb11

sw.bb11:                                          ; preds = %if.end, %sw.bb10
  store i8* getelementptr inbounds ([5 x i8]* @.str10, i32 0, i32 0), i8** %name, align 8
  br label %sw.bb12

sw.bb12:                                          ; preds = %if.end, %sw.bb11
  store i8* getelementptr inbounds ([6 x i8]* @.str11, i32 0, i32 0), i8** %name, align 8
  br label %sw.bb13

sw.bb13:                                          ; preds = %if.end, %sw.bb12
  store i8* getelementptr inbounds ([7 x i8]* @.str12, i32 0, i32 0), i8** %name, align 8
  br label %sw.bb14

sw.bb14:                                          ; preds = %if.end, %sw.bb13
  store i8* getelementptr inbounds ([12 x i8]* @.str13, i32 0, i32 0), i8** %name, align 8
  br label %sw.bb15

sw.bb15:                                          ; preds = %if.end, %sw.bb14
  store i8* getelementptr inbounds ([8 x i8]* @.str14, i32 0, i32 0), i8** %name, align 8
  br label %sw.bb16

sw.bb16:                                          ; preds = %if.end, %sw.bb15
  store i8* getelementptr inbounds ([8 x i8]* @.str15, i32 0, i32 0), i8** %name, align 8
  br label %sw.bb17

sw.bb17:                                          ; preds = %if.end, %sw.bb16
  store i8* getelementptr inbounds ([11 x i8]* @.str16, i32 0, i32 0), i8** %name, align 8
  br label %sw.bb18

sw.bb18:                                          ; preds = %if.end, %sw.bb17
  store i8* getelementptr inbounds ([5 x i8]* @.str17, i32 0, i32 0), i8** %name, align 8
  br label %sw.bb19

sw.bb19:                                          ; preds = %if.end, %sw.bb18
  store i8* getelementptr inbounds ([10 x i8]* @.str18, i32 0, i32 0), i8** %name, align 8
  br label %sw.bb20

sw.bb20:                                          ; preds = %if.end, %sw.bb19
  store i8* getelementptr inbounds ([10 x i8]* @.str19, i32 0, i32 0), i8** %name, align 8
  br label %sw.bb21

sw.bb21:                                          ; preds = %if.end, %sw.bb20
  store i8* getelementptr inbounds ([10 x i8]* @.str20, i32 0, i32 0), i8** %name, align 8
  br label %sw.bb22

sw.bb22:                                          ; preds = %if.end, %sw.bb21
  store i8* getelementptr inbounds ([10 x i8]* @.str21, i32 0, i32 0), i8** %name, align 8
  br label %sw.bb23

sw.bb23:                                          ; preds = %if.end, %sw.bb22
  store i8* getelementptr inbounds ([10 x i8]* @.str22, i32 0, i32 0), i8** %name, align 8
  br label %sw.bb24

sw.bb24:                                          ; preds = %if.end, %sw.bb23
  store i8* getelementptr inbounds ([8 x i8]* @.str23, i32 0, i32 0), i8** %name, align 8
  br label %sw.bb25

sw.bb25:                                          ; preds = %if.end, %sw.bb24
  store i8* getelementptr inbounds ([8 x i8]* @.str24, i32 0, i32 0), i8** %name, align 8
  br label %sw.bb26

sw.bb26:                                          ; preds = %if.end, %sw.bb25
  store i8* getelementptr inbounds ([15 x i8]* @.str25, i32 0, i32 0), i8** %name, align 8
  br label %sw.bb27

sw.bb27:                                          ; preds = %if.end, %sw.bb26
  store i8* getelementptr inbounds ([10 x i8]* @.str26, i32 0, i32 0), i8** %name, align 8
  br label %sw.bb28

sw.bb28:                                          ; preds = %if.end, %sw.bb27
  store i8* getelementptr inbounds ([10 x i8]* @.str27, i32 0, i32 0), i8** %name, align 8
  br label %sw.bb29

sw.bb29:                                          ; preds = %if.end, %sw.bb28
  store i8* getelementptr inbounds ([10 x i8]* @.str28, i32 0, i32 0), i8** %name, align 8
  br label %sw.bb30

sw.bb30:                                          ; preds = %if.end, %sw.bb29
  store i8* getelementptr inbounds ([6 x i8]* @.str29, i32 0, i32 0), i8** %name, align 8
  br label %sw.bb31

sw.bb31:                                          ; preds = %if.end, %sw.bb30
  store i8* getelementptr inbounds ([10 x i8]* @.str30, i32 0, i32 0), i8** %name, align 8
  br label %sw.bb32

sw.bb32:                                          ; preds = %if.end, %sw.bb31
  store i8* getelementptr inbounds ([19 x i8]* @.str31, i32 0, i32 0), i8** %name, align 8
  br label %sw.bb33

sw.bb33:                                          ; preds = %if.end, %sw.bb32
  store i8* getelementptr inbounds ([10 x i8]* @.str32, i32 0, i32 0), i8** %name, align 8
  br label %sw.bb34

sw.bb34:                                          ; preds = %if.end, %sw.bb33
  store i8* getelementptr inbounds ([10 x i8]* @.str33, i32 0, i32 0), i8** %name, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb34, %if.end, %sw.bb3, %sw.bb
  %3 = load i8** %name, align 8
  %arrayidx = getelementptr inbounds i8* %3, i64 0
  %4 = load i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then
  %5 = load i32* %retval
  ret i32 %5
}

define i32 @main() nounwind uwtable {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval
  %call = call i32 @stab_xcoff_builtin_type(i32 0)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() noreturn nounwind
  unreachable

if.end:                                           ; preds = %entry
  %call1 = call i32 @stab_xcoff_builtin_type(i32 -1)
  %cmp2 = icmp ne i32 %call1, 105
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @abort() noreturn nounwind
  unreachable

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @stab_xcoff_builtin_type(i32 -2)
  %cmp6 = icmp ne i32 %call5, 115
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @abort() noreturn nounwind
  unreachable

if.end8:                                          ; preds = %if.end4
  %call9 = call i32 @stab_xcoff_builtin_type(i32 -3)
  %cmp10 = icmp ne i32 %call9, 115
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @abort() noreturn nounwind
  unreachable

if.end12:                                         ; preds = %if.end8
  store i32 -4, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end12
  %0 = load i32* %i, align 4
  %cmp13 = icmp sge i32 %0, -34
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32* %i, align 4
  %call14 = call i32 @stab_xcoff_builtin_type(i32 %1)
  %cmp15 = icmp ne i32 %call14, 105
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %for.body
  call void @abort() noreturn nounwind
  unreachable

if.end17:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end17
  %2 = load i32* %i, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call18 = call i32 @stab_xcoff_builtin_type(i32 -35)
  %cmp19 = icmp ne i32 %call18, 0
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %for.end
  call void @abort() noreturn nounwind
  unreachable

if.end21:                                         ; preds = %for.end
  ret i32 0
}

declare void @abort() noreturn nounwind
