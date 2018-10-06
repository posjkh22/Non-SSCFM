; ModuleID = 'simple.c'
source_filename = "simple.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c" [target function] sub_func1_2\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c" [target function] sub_func1_1\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c" [target function] sub_func2_2\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c" [target function] sub_func2_1\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c" [target function] sub_func3_1\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c" [target function] sub_func4_4\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c" [target function] sub_func4_3\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c" [target function] sub_func4_2\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c" [target function] sub_func4_1\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c" [target function] sub_func5_1\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c" [target function] sub_func5_2\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c" [target function] sub_func5_3\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c" [target function] sub_func5_4\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c" [target function] sub_func5_5\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c" [target function] sub_func6_1\0A\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c" [target function] func_1\0A\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c" [target function] func_2\0A\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c" [target function] func_3\0A\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c" [target function] func_4\0A\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c" [target function] func_5\0A\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c" [target function] func_6\0A\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c" [target function] main\0A\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c" [target finished!]\0A\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c" [target] Execution Time: %ld\0A\00", align 1
@is_signature_queue_full = external global i32, align 4

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func1_3() #0 {
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0))
  ret i32 1
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func1_2() #0 {
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0))
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func1_1() #0 {
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0))
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func2_2() #0 {
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func2_1() #0 {
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func3_1() #0 {
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0))
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func4_4() #0 {
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0))
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func4_3() #0 {
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i32 0, i32 0))
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func4_2() #0 {
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0))
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func4_1() #0 {
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i32 0, i32 0))
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func5_1() #0 {
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i32 0, i32 0))
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func5_2() #0 {
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0))
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func5_3() #0 {
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i32 0, i32 0))
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func5_4() #0 {
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i32 0, i32 0))
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func5_5() #0 {
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i32 0, i32 0))
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func6_1() #0 {
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i32 0, i32 0))
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @func1() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i32 0, i32 0))
  store i32 3, i32* %1, align 4
  %3 = call i32 @sub_func1_1()
  %4 = call i32 @sub_func1_2()
  %5 = call i32 @sub_func1_3()
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @func2() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0))
  store i32 3, i32* %1, align 4
  %3 = call i32 @sub_func2_1()
  %4 = call i32 @sub_func2_2()
  ret i32 2
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @func3() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i32 0, i32 0))
  store i32 3, i32* %1, align 4
  %3 = call i32 @sub_func3_1()
  ret i32 3
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @func4() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i32 0, i32 0))
  store i32 3, i32* %1, align 4
  %3 = call i32 @sub_func4_1()
  %4 = call i32 @sub_func4_2()
  %5 = call i32 @sub_func4_3()
  %6 = call i32 @sub_func4_4()
  ret i32 4
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @func5() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i32 0, i32 0))
  store i32 3, i32* %1, align 4
  %3 = call i32 @sub_func5_1()
  %4 = call i32 @sub_func5_2()
  %5 = call i32 @sub_func5_3()
  %6 = call i32 @sub_func5_4()
  %7 = call i32 @sub_func5_5()
  ret i32 5
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @func6() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i32 0, i32 0))
  store i32 3, i32* %1, align 4
  %3 = call i32 @sub_func6_1()
  ret i32 6
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.timeval, align 8
  %3 = alloca %struct.timeval, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = call i32 @gettimeofday(%struct.timeval* %2, %struct.timezone* null) #3
  store i32 0, i32* %4, align 4
  br label %7

; <label>:7:                                      ; preds = %18, %0
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 100
  br i1 %9, label %10, label %21

; <label>:10:                                     ; preds = %7
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i32 0, i32 0))
  store i32 3, i32* %5, align 4
  %12 = call i32 @func1()
  %13 = call i32 @func2()
  %14 = call i32 @func3()
  %15 = call i32 @func4()
  %16 = call i32 @func5()
  %17 = call i32 @func6()
  br label %18

; <label>:18:                                     ; preds = %10
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %4, align 4
  br label %7

; <label>:21:                                     ; preds = %7
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i32 0, i32 0))
  %23 = call i32 @gettimeofday(%struct.timeval* %3, %struct.timezone* null) #3
  %24 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %25, %27
  %29 = mul nsw i64 %28, 1000
  %30 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %31, %33
  %35 = sdiv i64 %34, 1000
  %36 = add nsw i64 %29, %35
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.23, i32 0, i32 0), i64 %36)
  store i32 1, i32* @is_signature_queue_full, align 4
  %38 = load i32, i32* %1, align 4
  ret i32 %38
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 5.0.0 (tags/RELEASE_500/final)"}
