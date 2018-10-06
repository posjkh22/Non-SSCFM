; ModuleID = 'simple.c'
source_filename = "simple.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c" [target finished!]\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c" [target] Execution Time: %ld\0A\00", align 1
@is_signature_queue_full = external global i32, align 4

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func1_3() #0 {
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func1_2() #0 {
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func1_1() #0 {
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func2_2() #0 {
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func2_1() #0 {
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func3_1() #0 {
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func4_4() #0 {
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func4_3() #0 {
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func4_2() #0 {
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func4_1() #0 {
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func5_1() #0 {
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func5_2() #0 {
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func5_3() #0 {
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func5_4() #0 {
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func5_5() #0 {
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func6_1() #0 {
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @func1() #0 {
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %2 = call i32 @sub_func1_1()
  %3 = call i32 @sub_func1_2()
  %4 = call i32 @sub_func1_3()
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @func2() #0 {
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %2 = call i32 @sub_func2_1()
  %3 = call i32 @sub_func2_2()
  ret i32 2
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @func3() #0 {
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %2 = call i32 @sub_func3_1()
  ret i32 3
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @func4() #0 {
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %2 = call i32 @sub_func4_1()
  %3 = call i32 @sub_func4_2()
  %4 = call i32 @sub_func4_3()
  %5 = call i32 @sub_func4_4()
  ret i32 4
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @func5() #0 {
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %2 = call i32 @sub_func5_1()
  %3 = call i32 @sub_func5_2()
  %4 = call i32 @sub_func5_3()
  %5 = call i32 @sub_func5_4()
  %6 = call i32 @sub_func5_5()
  ret i32 5
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @func6() #0 {
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %2 = call i32 @sub_func6_1()
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

; <label>:7:                                      ; preds = %17, %0
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 100
  br i1 %9, label %10, label %20

; <label>:10:                                     ; preds = %7
  store i32 3, i32* %5, align 4
  %11 = call i32 @func1()
  %12 = call i32 @func2()
  %13 = call i32 @func3()
  %14 = call i32 @func4()
  %15 = call i32 @func5()
  %16 = call i32 @func6()
  br label %17

; <label>:17:                                     ; preds = %10
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %4, align 4
  br label %7

; <label>:20:                                     ; preds = %7
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0))
  %22 = call i32 @gettimeofday(%struct.timeval* %3, %struct.timezone* null) #3
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %24, %26
  %28 = mul nsw i64 %27, 1000
  %29 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %30, %32
  %34 = sdiv i64 %33, 1000
  %35 = add nsw i64 %28, %34
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0), i64 %35)
  store i32 1, i32* @is_signature_queue_full, align 4
  %37 = load i32, i32* %1, align 4
  ret i32 %37
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #1

declare i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 5.0.0 (tags/RELEASE_500/final)"}
