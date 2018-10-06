; ModuleID = './outputs/translated.bc'
source_filename = "simple.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@global_value1 = global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c" [target finished!]\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c" [target] Execution Time: %ld\0A\00", align 1
@is_signature_queue_full = external global i32, align 4
@sub_func1_3_signature = global i32 0
@sub_func1_2_signature = global i32 0
@sub_func1_1_signature = global i32 0
@sub_func2_2_signature = global i32 0
@sub_func2_1_signature = global i32 0
@sub_func3_1_signature = global i32 0
@sub_func4_4_signature = global i32 0
@sub_func4_3_signature = global i32 0
@sub_func4_2_signature = global i32 0
@sub_func4_1_signature = global i32 0
@sub_func5_1_signature = global i32 0
@sub_func5_2_signature = global i32 0
@sub_func5_3_signature = global i32 0
@sub_func5_4_signature = global i32 0
@sub_func5_5_signature = global i32 0
@sub_func6_1_signature = global i32 0
@func1_signature = global i32 0
@func2_signature = global i32 0
@func3_signature = global i32 0
@func4_signature = global i32 0
@func5_signature = global i32 0
@func6_signature = global i32 0
@main_signature = global i32 0
@gettimeofday_signature = global i32 0
@printf_signature = global i32 0
@init_monitor_signature = global i32 0
@update_signature_signature = global i32 0
@verify_signature_signature = global i32 0
@enqueue_signature_with_return_signature = global i32 0
@enqueue_signature_with_remainder_process_signature = global i32 0
@update_signature2_signature = global i32 0
@update_signature3_signature = global i32 0
@CallcheckerSet_signature = global i32 0

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func1_3() #0 {
  call void @update_signature(i32* @sub_func1_3_signature, i32 65537)
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %7 = load i32, i32* %2, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %1, align 4
  %11 = add nsw i32 %9, %10
  store i32 %11, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %12 = load i32, i32* %1, align 4
  %13 = add nsw i32 %12, 2
  store i32 %13, i32* %4, align 4
  store i32 5, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 2
  store i32 %29, i32* %1, align 4
  store i32 3, i32* %6, align 4
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %1, align 4
  store i32 %32, i32* %4, align 4
  %34 = load i32, i32* %3, align 4
  store i32 %34, i32* %2, align 4
  call void @verify_signature(i32* @sub_func1_3_signature, i32 65537)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func1_2() #0 {
  call void @update_signature(i32* @sub_func1_2_signature, i32 131073)
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %7 = load i32, i32* %2, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %1, align 4
  %11 = add nsw i32 %9, %10
  store i32 %11, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %12 = load i32, i32* %1, align 4
  %13 = add nsw i32 %12, 2
  store i32 %13, i32* %4, align 4
  store i32 5, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 2
  store i32 %29, i32* %1, align 4
  store i32 3, i32* %6, align 4
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %1, align 4
  store i32 %32, i32* %4, align 4
  call void @verify_signature(i32* @sub_func1_2_signature, i32 131073)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func1_1() #0 {
  call void @update_signature(i32* @sub_func1_1_signature, i32 196609)
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %7 = load i32, i32* %2, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %1, align 4
  %11 = add nsw i32 %9, %10
  store i32 %11, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %12 = load i32, i32* %1, align 4
  %13 = add nsw i32 %12, 2
  store i32 %13, i32* %4, align 4
  store i32 5, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 2
  store i32 %29, i32* %1, align 4
  store i32 3, i32* %6, align 4
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %1, align 4
  store i32 %32, i32* %4, align 4
  %34 = load i32, i32* %3, align 4
  store i32 %34, i32* %2, align 4
  call void @verify_signature(i32* @sub_func1_1_signature, i32 196609)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func2_2() #0 {
  call void @update_signature(i32* @sub_func2_2_signature, i32 262145)
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %7 = load i32, i32* %2, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %1, align 4
  %11 = add nsw i32 %9, %10
  store i32 %11, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %12 = load i32, i32* %1, align 4
  %13 = add nsw i32 %12, 2
  store i32 %13, i32* %4, align 4
  store i32 5, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 2
  store i32 %29, i32* %1, align 4
  store i32 3, i32* %6, align 4
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %1, align 4
  store i32 %32, i32* %4, align 4
  %34 = load i32, i32* %3, align 4
  store i32 %34, i32* %2, align 4
  call void @verify_signature(i32* @sub_func2_2_signature, i32 262145)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func2_1() #0 {
  call void @update_signature(i32* @sub_func2_1_signature, i32 327681)
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %7 = load i32, i32* %2, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %1, align 4
  %11 = add nsw i32 %9, %10
  store i32 %11, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %12 = load i32, i32* %1, align 4
  %13 = add nsw i32 %12, 2
  store i32 %13, i32* %4, align 4
  store i32 5, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 2
  store i32 %29, i32* %1, align 4
  store i32 3, i32* %6, align 4
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %1, align 4
  store i32 %32, i32* %4, align 4
  %34 = load i32, i32* %3, align 4
  store i32 %34, i32* %2, align 4
  call void @verify_signature(i32* @sub_func2_1_signature, i32 327681)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func3_1() #0 {
  call void @update_signature(i32* @sub_func3_1_signature, i32 393217)
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %7 = load i32, i32* %2, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %1, align 4
  %11 = add nsw i32 %9, %10
  store i32 %11, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %12 = load i32, i32* %1, align 4
  %13 = add nsw i32 %12, 2
  store i32 %13, i32* %4, align 4
  store i32 5, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 2
  store i32 %29, i32* %1, align 4
  store i32 3, i32* %6, align 4
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %1, align 4
  store i32 %32, i32* %4, align 4
  %34 = load i32, i32* %3, align 4
  store i32 %34, i32* %2, align 4
  call void @verify_signature(i32* @sub_func3_1_signature, i32 393217)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func4_4() #0 {
  call void @update_signature(i32* @sub_func4_4_signature, i32 458753)
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %7 = load i32, i32* %2, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %1, align 4
  %11 = add nsw i32 %9, %10
  store i32 %11, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %12 = load i32, i32* %1, align 4
  %13 = add nsw i32 %12, 2
  store i32 %13, i32* %4, align 4
  store i32 5, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 2
  store i32 %29, i32* %1, align 4
  store i32 3, i32* %6, align 4
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %1, align 4
  store i32 %32, i32* %4, align 4
  %34 = load i32, i32* %3, align 4
  store i32 %34, i32* %2, align 4
  call void @verify_signature(i32* @sub_func4_4_signature, i32 458753)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func4_3() #0 {
  call void @update_signature(i32* @sub_func4_3_signature, i32 524289)
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %7 = load i32, i32* %2, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %1, align 4
  %11 = add nsw i32 %9, %10
  store i32 %11, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %12 = load i32, i32* %1, align 4
  %13 = add nsw i32 %12, 2
  store i32 %13, i32* %4, align 4
  store i32 5, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 2
  store i32 %29, i32* %1, align 4
  store i32 3, i32* %6, align 4
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %1, align 4
  store i32 %32, i32* %4, align 4
  %34 = load i32, i32* %3, align 4
  store i32 %34, i32* %2, align 4
  call void @verify_signature(i32* @sub_func4_3_signature, i32 524289)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func4_2() #0 {
  call void @update_signature(i32* @sub_func4_2_signature, i32 589825)
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %7 = load i32, i32* %2, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %1, align 4
  %11 = add nsw i32 %9, %10
  store i32 %11, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %12 = load i32, i32* %1, align 4
  %13 = add nsw i32 %12, 2
  store i32 %13, i32* %4, align 4
  store i32 5, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 2
  store i32 %29, i32* %1, align 4
  store i32 3, i32* %6, align 4
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %1, align 4
  store i32 %32, i32* %4, align 4
  %34 = load i32, i32* %3, align 4
  store i32 %34, i32* %2, align 4
  call void @verify_signature(i32* @sub_func4_2_signature, i32 589825)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func4_1() #0 {
  call void @update_signature(i32* @sub_func4_1_signature, i32 655361)
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %7 = load i32, i32* %2, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %1, align 4
  %11 = add nsw i32 %9, %10
  store i32 %11, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %12 = load i32, i32* %1, align 4
  %13 = add nsw i32 %12, 2
  store i32 %13, i32* %4, align 4
  store i32 5, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 2
  store i32 %29, i32* %1, align 4
  store i32 3, i32* %6, align 4
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %1, align 4
  store i32 %32, i32* %4, align 4
  %34 = load i32, i32* %3, align 4
  store i32 %34, i32* %2, align 4
  call void @verify_signature(i32* @sub_func4_1_signature, i32 655361)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func5_1() #0 {
  call void @update_signature(i32* @sub_func5_1_signature, i32 720897)
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %7 = load i32, i32* %2, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %1, align 4
  %11 = add nsw i32 %9, %10
  store i32 %11, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %12 = load i32, i32* %1, align 4
  %13 = add nsw i32 %12, 2
  store i32 %13, i32* %4, align 4
  store i32 5, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 2
  store i32 %29, i32* %1, align 4
  store i32 3, i32* %6, align 4
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %1, align 4
  store i32 %32, i32* %4, align 4
  %34 = load i32, i32* %3, align 4
  store i32 %34, i32* %2, align 4
  call void @verify_signature(i32* @sub_func5_1_signature, i32 720897)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func5_2() #0 {
  call void @update_signature(i32* @sub_func5_2_signature, i32 786433)
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %7 = load i32, i32* %2, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %1, align 4
  %11 = add nsw i32 %9, %10
  store i32 %11, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %12 = load i32, i32* %1, align 4
  %13 = add nsw i32 %12, 2
  store i32 %13, i32* %4, align 4
  store i32 5, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 2
  store i32 %29, i32* %1, align 4
  store i32 3, i32* %6, align 4
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %1, align 4
  store i32 %32, i32* %4, align 4
  %34 = load i32, i32* %3, align 4
  store i32 %34, i32* %2, align 4
  call void @verify_signature(i32* @sub_func5_2_signature, i32 786433)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func5_3() #0 {
  call void @update_signature(i32* @sub_func5_3_signature, i32 851969)
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %7 = load i32, i32* %2, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %1, align 4
  %11 = add nsw i32 %9, %10
  store i32 %11, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %12 = load i32, i32* %1, align 4
  %13 = add nsw i32 %12, 2
  store i32 %13, i32* %4, align 4
  store i32 5, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 2
  store i32 %29, i32* %1, align 4
  store i32 3, i32* %6, align 4
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %1, align 4
  store i32 %32, i32* %4, align 4
  %34 = load i32, i32* %3, align 4
  store i32 %34, i32* %2, align 4
  call void @verify_signature(i32* @sub_func5_3_signature, i32 851969)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func5_4() #0 {
  call void @update_signature(i32* @sub_func5_4_signature, i32 917505)
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %7 = load i32, i32* %2, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %1, align 4
  %11 = add nsw i32 %9, %10
  store i32 %11, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %12 = load i32, i32* %1, align 4
  %13 = add nsw i32 %12, 2
  store i32 %13, i32* %4, align 4
  store i32 5, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 2
  store i32 %29, i32* %1, align 4
  store i32 3, i32* %6, align 4
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %1, align 4
  store i32 %32, i32* %4, align 4
  %34 = load i32, i32* %3, align 4
  store i32 %34, i32* %2, align 4
  call void @verify_signature(i32* @sub_func5_4_signature, i32 917505)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func5_5() #0 {
  call void @update_signature(i32* @sub_func5_5_signature, i32 983041)
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %7 = load i32, i32* %2, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %1, align 4
  %11 = add nsw i32 %9, %10
  store i32 %11, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %12 = load i32, i32* %1, align 4
  %13 = add nsw i32 %12, 2
  store i32 %13, i32* %4, align 4
  store i32 5, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 2
  store i32 %29, i32* %1, align 4
  store i32 3, i32* %6, align 4
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %1, align 4
  store i32 %32, i32* %4, align 4
  %34 = load i32, i32* %3, align 4
  store i32 %34, i32* %2, align 4
  call void @verify_signature(i32* @sub_func5_5_signature, i32 983041)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func6_1() #0 {
  call void @update_signature(i32* @sub_func6_1_signature, i32 1048577)
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %7 = load i32, i32* %2, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %1, align 4
  %11 = add nsw i32 %9, %10
  store i32 %11, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %12 = load i32, i32* %1, align 4
  %13 = add nsw i32 %12, 2
  store i32 %13, i32* %4, align 4
  store i32 5, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 2
  store i32 %29, i32* %1, align 4
  store i32 3, i32* %6, align 4
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %1, align 4
  store i32 %32, i32* %4, align 4
  %34 = load i32, i32* %3, align 4
  store i32 %34, i32* %2, align 4
  call void @verify_signature(i32* @sub_func6_1_signature, i32 1048577)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @func1() #0 {
  call void @update_signature(i32* @func1_signature, i32 1114113)
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %7 = call i32 @sub_func1_1()
  call void @verify_signature(i32* @func1_signature, i32 1114113)
  br label %8

; <label>:8:                                      ; preds = %0
  call void @update_signature(i32* @func1_signature, i32 1114114)
  %9 = load i32, i32* %2, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %1, align 4
  %13 = add nsw i32 %11, %12
  store i32 %13, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %14 = load i32, i32* %1, align 4
  %15 = add nsw i32 %14, 2
  store i32 %15, i32* %4, align 4
  store i32 5, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* %2, align 4
  %23 = add nsw i32 %21, %22
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %1, align 4
  %29 = add nsw i32 %27, %28
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 2
  store i32 %31, i32* %1, align 4
  store i32 3, i32* %6, align 4
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %1, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %1, align 4
  store i32 %34, i32* %4, align 4
  %36 = load i32, i32* %3, align 4
  store i32 %36, i32* %2, align 4
  %37 = call i32 @sub_func1_2()
  call void @verify_signature(i32* @func1_signature, i32 1114114)
  br label %38

; <label>:38:                                     ; preds = %8
  call void @update_signature(i32* @func1_signature, i32 1114115)
  %39 = load i32, i32* %2, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %1, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %1, align 4
  %43 = add nsw i32 %41, %42
  store i32 %43, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %44 = load i32, i32* %1, align 4
  %45 = add nsw i32 %44, 2
  store i32 %45, i32* %4, align 4
  store i32 5, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %1, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %48, %49
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %1, align 4
  %52 = load i32, i32* %2, align 4
  %53 = add nsw i32 %51, %52
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %54, %55
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %1, align 4
  %59 = add nsw i32 %57, %58
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 2
  store i32 %61, i32* %1, align 4
  store i32 3, i32* %6, align 4
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* %1, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %1, align 4
  store i32 %64, i32* %4, align 4
  %66 = load i32, i32* %3, align 4
  store i32 %66, i32* %2, align 4
  %67 = call i32 @sub_func1_3()
  call void @verify_signature(i32* @func1_signature, i32 1114115)
  br label %68

; <label>:68:                                     ; preds = %38
  call void @update_signature(i32* @func1_signature, i32 1114116)
  %69 = load i32, i32* %2, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %1, align 4
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* %1, align 4
  %73 = add nsw i32 %71, %72
  store i32 %73, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %74 = load i32, i32* %1, align 4
  %75 = add nsw i32 %74, 2
  store i32 %75, i32* %4, align 4
  store i32 5, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %1, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %78, %79
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %1, align 4
  %82 = load i32, i32* %2, align 4
  %83 = add nsw i32 %81, %82
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %84, %85
  store i32 %86, i32* %3, align 4
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* %1, align 4
  %89 = add nsw i32 %87, %88
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 2
  store i32 %91, i32* %1, align 4
  store i32 3, i32* %6, align 4
  %92 = load i32, i32* %3, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %3, align 4
  %94 = load i32, i32* %1, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %1, align 4
  store i32 %94, i32* %4, align 4
  %96 = load i32, i32* %3, align 4
  store i32 %96, i32* %2, align 4
  call void @verify_signature(i32* @func1_signature, i32 1114116)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @func2() #0 {
  call void @update_signature(i32* @func2_signature, i32 1179649)
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %7 = call i32 @sub_func2_1()
  call void @verify_signature(i32* @func2_signature, i32 1179649)
  br label %8

; <label>:8:                                      ; preds = %0
  call void @update_signature(i32* @func2_signature, i32 1179650)
  %9 = load i32, i32* %2, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %1, align 4
  %13 = add nsw i32 %11, %12
  store i32 %13, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %14 = load i32, i32* %1, align 4
  %15 = add nsw i32 %14, 2
  store i32 %15, i32* %4, align 4
  store i32 5, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* %2, align 4
  %23 = add nsw i32 %21, %22
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %1, align 4
  %29 = add nsw i32 %27, %28
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 2
  store i32 %31, i32* %1, align 4
  store i32 3, i32* %6, align 4
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %1, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %1, align 4
  store i32 %34, i32* %4, align 4
  %36 = load i32, i32* %3, align 4
  store i32 %36, i32* %2, align 4
  %37 = call i32 @sub_func2_2()
  call void @verify_signature(i32* @func2_signature, i32 1179650)
  br label %38

; <label>:38:                                     ; preds = %8
  call void @update_signature(i32* @func2_signature, i32 1179651)
  %39 = load i32, i32* %2, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %1, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %1, align 4
  %43 = add nsw i32 %41, %42
  store i32 %43, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %44 = load i32, i32* %1, align 4
  %45 = add nsw i32 %44, 2
  store i32 %45, i32* %4, align 4
  store i32 5, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %1, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %48, %49
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %1, align 4
  %52 = load i32, i32* %2, align 4
  %53 = add nsw i32 %51, %52
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %54, %55
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %1, align 4
  %59 = add nsw i32 %57, %58
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 2
  store i32 %61, i32* %1, align 4
  store i32 3, i32* %6, align 4
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* %1, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %1, align 4
  store i32 %64, i32* %4, align 4
  %66 = load i32, i32* %3, align 4
  store i32 %66, i32* %2, align 4
  call void @verify_signature(i32* @func2_signature, i32 1179651)
  ret i32 2
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @func3() #0 {
  call void @update_signature(i32* @func3_signature, i32 1245185)
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %7 = load i32, i32* %2, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %1, align 4
  %11 = add nsw i32 %9, %10
  store i32 %11, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %12 = load i32, i32* %1, align 4
  %13 = add nsw i32 %12, 2
  store i32 %13, i32* %4, align 4
  store i32 5, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 2
  store i32 %29, i32* %1, align 4
  store i32 3, i32* %6, align 4
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %1, align 4
  store i32 %32, i32* %4, align 4
  %34 = load i32, i32* %3, align 4
  store i32 %34, i32* %2, align 4
  %35 = call i32 @sub_func3_1()
  call void @verify_signature(i32* @func3_signature, i32 1245185)
  br label %36

; <label>:36:                                     ; preds = %0
  call void @update_signature(i32* @func3_signature, i32 1245186)
  %37 = load i32, i32* %2, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %1, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %1, align 4
  %41 = add nsw i32 %39, %40
  store i32 %41, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %42 = load i32, i32* %1, align 4
  %43 = add nsw i32 %42, 2
  store i32 %43, i32* %4, align 4
  store i32 5, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %1, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %46, %47
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %1, align 4
  %50 = load i32, i32* %2, align 4
  %51 = add nsw i32 %49, %50
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %52, %53
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %1, align 4
  %57 = add nsw i32 %55, %56
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 2
  store i32 %59, i32* %1, align 4
  store i32 3, i32* %6, align 4
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* %1, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %1, align 4
  store i32 %62, i32* %4, align 4
  %64 = load i32, i32* %3, align 4
  store i32 %64, i32* %2, align 4
  call void @verify_signature(i32* @func3_signature, i32 1245186)
  ret i32 3
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @func4() #0 {
  call void @update_signature(i32* @func4_signature, i32 1310721)
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %7 = call i32 @sub_func4_1()
  call void @verify_signature(i32* @func4_signature, i32 1310721)
  br label %8

; <label>:8:                                      ; preds = %0
  call void @update_signature(i32* @func4_signature, i32 1310722)
  %9 = load i32, i32* %2, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %1, align 4
  %13 = add nsw i32 %11, %12
  store i32 %13, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %14 = load i32, i32* %1, align 4
  %15 = add nsw i32 %14, 2
  store i32 %15, i32* %4, align 4
  store i32 5, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* %2, align 4
  %23 = add nsw i32 %21, %22
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %1, align 4
  %29 = add nsw i32 %27, %28
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 2
  store i32 %31, i32* %1, align 4
  store i32 3, i32* %6, align 4
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %1, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %1, align 4
  store i32 %34, i32* %4, align 4
  %36 = load i32, i32* %3, align 4
  store i32 %36, i32* %2, align 4
  %37 = call i32 @sub_func4_2()
  call void @verify_signature(i32* @func4_signature, i32 1310722)
  br label %38

; <label>:38:                                     ; preds = %8
  call void @update_signature(i32* @func4_signature, i32 1310723)
  %39 = load i32, i32* %2, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %1, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %1, align 4
  %43 = add nsw i32 %41, %42
  store i32 %43, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %44 = load i32, i32* %1, align 4
  %45 = add nsw i32 %44, 2
  store i32 %45, i32* %4, align 4
  store i32 5, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %1, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %48, %49
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %1, align 4
  %52 = load i32, i32* %2, align 4
  %53 = add nsw i32 %51, %52
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %54, %55
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %1, align 4
  %59 = add nsw i32 %57, %58
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 2
  store i32 %61, i32* %1, align 4
  store i32 3, i32* %6, align 4
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* %1, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %1, align 4
  store i32 %64, i32* %4, align 4
  %66 = load i32, i32* %3, align 4
  store i32 %66, i32* %2, align 4
  %67 = call i32 @sub_func4_3()
  call void @verify_signature(i32* @func4_signature, i32 1310723)
  br label %68

; <label>:68:                                     ; preds = %38
  call void @update_signature(i32* @func4_signature, i32 1310724)
  %69 = load i32, i32* %2, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %1, align 4
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* %1, align 4
  %73 = add nsw i32 %71, %72
  store i32 %73, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %74 = load i32, i32* %1, align 4
  %75 = add nsw i32 %74, 2
  store i32 %75, i32* %4, align 4
  store i32 5, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %1, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %78, %79
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %1, align 4
  %82 = load i32, i32* %2, align 4
  %83 = add nsw i32 %81, %82
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %84, %85
  store i32 %86, i32* %3, align 4
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* %1, align 4
  %89 = add nsw i32 %87, %88
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 2
  store i32 %91, i32* %1, align 4
  store i32 3, i32* %6, align 4
  %92 = load i32, i32* %3, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %3, align 4
  %94 = load i32, i32* %1, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %1, align 4
  store i32 %94, i32* %4, align 4
  %96 = load i32, i32* %3, align 4
  store i32 %96, i32* %2, align 4
  %97 = call i32 @sub_func4_4()
  call void @verify_signature(i32* @func4_signature, i32 1310724)
  br label %98

; <label>:98:                                     ; preds = %68
  call void @update_signature(i32* @func4_signature, i32 1310725)
  %99 = load i32, i32* %2, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %1, align 4
  %101 = load i32, i32* %3, align 4
  %102 = load i32, i32* %1, align 4
  %103 = add nsw i32 %101, %102
  store i32 %103, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %104 = load i32, i32* %1, align 4
  %105 = add nsw i32 %104, 2
  store i32 %105, i32* %4, align 4
  store i32 5, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %1, align 4
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* %4, align 4
  %110 = add nsw i32 %108, %109
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %1, align 4
  %112 = load i32, i32* %2, align 4
  %113 = add nsw i32 %111, %112
  store i32 %113, i32* %4, align 4
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* %6, align 4
  %116 = add nsw i32 %114, %115
  store i32 %116, i32* %3, align 4
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* %1, align 4
  %119 = add nsw i32 %117, %118
  store i32 %119, i32* %5, align 4
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %120, 2
  store i32 %121, i32* %1, align 4
  store i32 3, i32* %6, align 4
  %122 = load i32, i32* %3, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %3, align 4
  %124 = load i32, i32* %1, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %1, align 4
  store i32 %124, i32* %4, align 4
  %126 = load i32, i32* %3, align 4
  store i32 %126, i32* %2, align 4
  call void @verify_signature(i32* @func4_signature, i32 1310725)
  ret i32 4
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @func5() #0 {
  call void @update_signature(i32* @func5_signature, i32 1376257)
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %7 = call i32 @sub_func5_1()
  call void @verify_signature(i32* @func5_signature, i32 1376257)
  br label %8

; <label>:8:                                      ; preds = %0
  call void @update_signature(i32* @func5_signature, i32 1376258)
  %9 = load i32, i32* %2, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %1, align 4
  %13 = add nsw i32 %11, %12
  store i32 %13, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %14 = load i32, i32* %1, align 4
  %15 = add nsw i32 %14, 2
  store i32 %15, i32* %4, align 4
  store i32 5, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* %2, align 4
  %23 = add nsw i32 %21, %22
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %1, align 4
  %29 = add nsw i32 %27, %28
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 2
  store i32 %31, i32* %1, align 4
  store i32 3, i32* %6, align 4
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %1, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %1, align 4
  store i32 %34, i32* %4, align 4
  %36 = load i32, i32* %3, align 4
  store i32 %36, i32* %2, align 4
  %37 = call i32 @sub_func5_2()
  call void @verify_signature(i32* @func5_signature, i32 1376258)
  br label %38

; <label>:38:                                     ; preds = %8
  call void @update_signature(i32* @func5_signature, i32 1376259)
  %39 = load i32, i32* %2, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %1, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %1, align 4
  %43 = add nsw i32 %41, %42
  store i32 %43, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %44 = load i32, i32* %1, align 4
  %45 = add nsw i32 %44, 2
  store i32 %45, i32* %4, align 4
  store i32 5, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %1, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %48, %49
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %1, align 4
  %52 = load i32, i32* %2, align 4
  %53 = add nsw i32 %51, %52
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %54, %55
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %1, align 4
  %59 = add nsw i32 %57, %58
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 2
  store i32 %61, i32* %1, align 4
  store i32 3, i32* %6, align 4
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* %1, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %1, align 4
  store i32 %64, i32* %4, align 4
  %66 = load i32, i32* %3, align 4
  store i32 %66, i32* %2, align 4
  %67 = call i32 @sub_func5_3()
  call void @verify_signature(i32* @func5_signature, i32 1376259)
  br label %68

; <label>:68:                                     ; preds = %38
  call void @update_signature(i32* @func5_signature, i32 1376260)
  %69 = load i32, i32* %2, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %1, align 4
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* %1, align 4
  %73 = add nsw i32 %71, %72
  store i32 %73, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %74 = load i32, i32* %1, align 4
  %75 = add nsw i32 %74, 2
  store i32 %75, i32* %4, align 4
  store i32 5, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %1, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %78, %79
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %1, align 4
  %82 = load i32, i32* %2, align 4
  %83 = add nsw i32 %81, %82
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %84, %85
  store i32 %86, i32* %3, align 4
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* %1, align 4
  %89 = add nsw i32 %87, %88
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 2
  store i32 %91, i32* %1, align 4
  store i32 3, i32* %6, align 4
  %92 = load i32, i32* %3, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %3, align 4
  %94 = load i32, i32* %1, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %1, align 4
  store i32 %94, i32* %4, align 4
  %96 = load i32, i32* %3, align 4
  store i32 %96, i32* %2, align 4
  %97 = call i32 @sub_func5_4()
  call void @verify_signature(i32* @func5_signature, i32 1376260)
  br label %98

; <label>:98:                                     ; preds = %68
  call void @update_signature(i32* @func5_signature, i32 1376261)
  %99 = load i32, i32* %2, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %1, align 4
  %101 = load i32, i32* %3, align 4
  %102 = load i32, i32* %1, align 4
  %103 = add nsw i32 %101, %102
  store i32 %103, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %104 = load i32, i32* %1, align 4
  %105 = add nsw i32 %104, 2
  store i32 %105, i32* %4, align 4
  store i32 5, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %1, align 4
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* %4, align 4
  %110 = add nsw i32 %108, %109
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %1, align 4
  %112 = load i32, i32* %2, align 4
  %113 = add nsw i32 %111, %112
  store i32 %113, i32* %4, align 4
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* %6, align 4
  %116 = add nsw i32 %114, %115
  store i32 %116, i32* %3, align 4
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* %1, align 4
  %119 = add nsw i32 %117, %118
  store i32 %119, i32* %5, align 4
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %120, 2
  store i32 %121, i32* %1, align 4
  store i32 3, i32* %6, align 4
  %122 = load i32, i32* %3, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %3, align 4
  %124 = load i32, i32* %1, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %1, align 4
  store i32 %124, i32* %4, align 4
  %126 = load i32, i32* %3, align 4
  store i32 %126, i32* %2, align 4
  %127 = call i32 @sub_func5_5()
  call void @verify_signature(i32* @func5_signature, i32 1376261)
  br label %128

; <label>:128:                                    ; preds = %98
  call void @update_signature(i32* @func5_signature, i32 1376262)
  %129 = load i32, i32* %2, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %1, align 4
  %131 = load i32, i32* %3, align 4
  %132 = load i32, i32* %1, align 4
  %133 = add nsw i32 %131, %132
  store i32 %133, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %134 = load i32, i32* %1, align 4
  %135 = add nsw i32 %134, 2
  store i32 %135, i32* %4, align 4
  store i32 5, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %136 = load i32, i32* %6, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %1, align 4
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* %4, align 4
  %140 = add nsw i32 %138, %139
  store i32 %140, i32* %6, align 4
  %141 = load i32, i32* %1, align 4
  %142 = load i32, i32* %2, align 4
  %143 = add nsw i32 %141, %142
  store i32 %143, i32* %4, align 4
  %144 = load i32, i32* %4, align 4
  %145 = load i32, i32* %6, align 4
  %146 = add nsw i32 %144, %145
  store i32 %146, i32* %3, align 4
  %147 = load i32, i32* %5, align 4
  %148 = load i32, i32* %1, align 4
  %149 = add nsw i32 %147, %148
  store i32 %149, i32* %5, align 4
  %150 = load i32, i32* %6, align 4
  %151 = add nsw i32 %150, 2
  store i32 %151, i32* %1, align 4
  store i32 3, i32* %6, align 4
  %152 = load i32, i32* %3, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %3, align 4
  %154 = load i32, i32* %1, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %1, align 4
  store i32 %154, i32* %4, align 4
  %156 = load i32, i32* %3, align 4
  store i32 %156, i32* %2, align 4
  call void @verify_signature(i32* @func5_signature, i32 1376262)
  ret i32 5
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @func6() #0 {
  call void @update_signature(i32* @func6_signature, i32 1441793)
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %7 = call i32 @sub_func6_1()
  call void @verify_signature(i32* @func6_signature, i32 1441793)
  br label %8

; <label>:8:                                      ; preds = %0
  call void @update_signature(i32* @func6_signature, i32 1441794)
  %9 = load i32, i32* %2, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %1, align 4
  %13 = add nsw i32 %11, %12
  store i32 %13, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %14 = load i32, i32* %1, align 4
  %15 = add nsw i32 %14, 2
  store i32 %15, i32* %4, align 4
  store i32 5, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* %2, align 4
  %23 = add nsw i32 %21, %22
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %1, align 4
  %29 = add nsw i32 %27, %28
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 2
  store i32 %31, i32* %1, align 4
  store i32 3, i32* %6, align 4
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %1, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %1, align 4
  store i32 %34, i32* %4, align 4
  %36 = load i32, i32* %3, align 4
  store i32 %36, i32* %2, align 4
  call void @verify_signature(i32* @func6_signature, i32 1441794)
  ret i32 6
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main() #0 {
  call void @update_signature(i32* @main_signature, i32 1507329)
  %1 = alloca i32, align 4
  %2 = alloca %struct.timeval, align 8
  %3 = alloca %struct.timeval, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %11 = call i32 @gettimeofday(%struct.timeval* %2, %struct.timezone* null) #3
  call void @verify_signature(i32* @main_signature, i32 1507329)
  br label %12

; <label>:12:                                     ; preds = %0
  call void @update_signature(i32* @main_signature, i32 1507330)
  store i32 0, i32* %4, align 4
  call void @verify_signature(i32* @main_signature, i32 1507330)
  br label %13

; <label>:13:                                     ; preds = %225, %12
  call void @update_signature(i32* @main_signature, i32 1507331)
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 5000
  call void @verify_signature(i32* @main_signature, i32 1507331)
  br i1 %15, label %16, label %228

; <label>:16:                                     ; preds = %13
  call void @update_signature(i32* @main_signature, i32 1507332)
  store i32 3, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %6, align 4
  store i32 2, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 2
  store i32 %23, i32* %8, align 4
  store i32 5, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %32, %33
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %35, %36
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, 2
  store i32 %39, i32* %5, align 4
  store i32 3, i32* %10, align 4
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  store i32 %42, i32* %8, align 4
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %6, align 4
  %45 = call i32 @func1()
  call void @verify_signature(i32* @main_signature, i32 1507332)
  br label %46

; <label>:46:                                     ; preds = %16
  call void @update_signature(i32* @main_signature, i32 1507333)
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %49, %50
  store i32 %51, i32* %6, align 4
  store i32 2, i32* %7, align 4
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 2
  store i32 %53, i32* %8, align 4
  store i32 5, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %56, %57
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %59, %60
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %62, %63
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %65, %66
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 2
  store i32 %69, i32* %5, align 4
  store i32 3, i32* %10, align 4
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  store i32 %72, i32* %8, align 4
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %6, align 4
  %75 = call i32 @func2()
  call void @verify_signature(i32* @main_signature, i32 1507333)
  br label %76

; <label>:76:                                     ; preds = %46
  call void @update_signature(i32* @main_signature, i32 1507334)
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %79, %80
  store i32 %81, i32* %6, align 4
  store i32 2, i32* %7, align 4
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 2
  store i32 %83, i32* %8, align 4
  store i32 5, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %86, %87
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %89, %90
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %92, %93
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %95, %96
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 2
  store i32 %99, i32* %5, align 4
  store i32 3, i32* %10, align 4
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %5, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %5, align 4
  store i32 %102, i32* %8, align 4
  %104 = load i32, i32* %7, align 4
  store i32 %104, i32* %6, align 4
  %105 = call i32 @func3()
  call void @verify_signature(i32* @main_signature, i32 1507334)
  br label %106

; <label>:106:                                    ; preds = %76
  call void @update_signature(i32* @main_signature, i32 1507335)
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %109, %110
  store i32 %111, i32* %6, align 4
  store i32 2, i32* %7, align 4
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 %112, 2
  store i32 %113, i32* %8, align 4
  store i32 5, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %116, %117
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %119, %120
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %122, %123
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %5, align 4
  %127 = add nsw i32 %125, %126
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %10, align 4
  %129 = add nsw i32 %128, 2
  store i32 %129, i32* %5, align 4
  store i32 3, i32* %10, align 4
  %130 = load i32, i32* %7, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %5, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %5, align 4
  store i32 %132, i32* %8, align 4
  %134 = load i32, i32* %7, align 4
  store i32 %134, i32* %6, align 4
  %135 = call i32 @func4()
  call void @verify_signature(i32* @main_signature, i32 1507335)
  br label %136

; <label>:136:                                    ; preds = %106
  call void @update_signature(i32* @main_signature, i32 1507336)
  %137 = load i32, i32* %6, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %5, align 4
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* %5, align 4
  %141 = add nsw i32 %139, %140
  store i32 %141, i32* %6, align 4
  store i32 2, i32* %7, align 4
  %142 = load i32, i32* %5, align 4
  %143 = add nsw i32 %142, 2
  store i32 %143, i32* %8, align 4
  store i32 5, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %144 = load i32, i32* %10, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %5, align 4
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* %8, align 4
  %148 = add nsw i32 %146, %147
  store i32 %148, i32* %10, align 4
  %149 = load i32, i32* %5, align 4
  %150 = load i32, i32* %6, align 4
  %151 = add nsw i32 %149, %150
  store i32 %151, i32* %8, align 4
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* %10, align 4
  %154 = add nsw i32 %152, %153
  store i32 %154, i32* %7, align 4
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* %5, align 4
  %157 = add nsw i32 %155, %156
  store i32 %157, i32* %9, align 4
  %158 = load i32, i32* %10, align 4
  %159 = add nsw i32 %158, 2
  store i32 %159, i32* %5, align 4
  store i32 3, i32* %10, align 4
  %160 = load i32, i32* %7, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %7, align 4
  %162 = load i32, i32* %5, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %5, align 4
  store i32 %162, i32* %8, align 4
  %164 = load i32, i32* %7, align 4
  store i32 %164, i32* %6, align 4
  %165 = call i32 @func5()
  call void @verify_signature(i32* @main_signature, i32 1507336)
  br label %166

; <label>:166:                                    ; preds = %136
  call void @update_signature(i32* @main_signature, i32 1507337)
  %167 = load i32, i32* %6, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %5, align 4
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* %5, align 4
  %171 = add nsw i32 %169, %170
  store i32 %171, i32* %6, align 4
  store i32 2, i32* %7, align 4
  %172 = load i32, i32* %5, align 4
  %173 = add nsw i32 %172, 2
  store i32 %173, i32* %8, align 4
  store i32 5, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %174 = load i32, i32* %10, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %5, align 4
  %176 = load i32, i32* %10, align 4
  %177 = load i32, i32* %8, align 4
  %178 = add nsw i32 %176, %177
  store i32 %178, i32* %10, align 4
  %179 = load i32, i32* %5, align 4
  %180 = load i32, i32* %6, align 4
  %181 = add nsw i32 %179, %180
  store i32 %181, i32* %8, align 4
  %182 = load i32, i32* %8, align 4
  %183 = load i32, i32* %10, align 4
  %184 = add nsw i32 %182, %183
  store i32 %184, i32* %7, align 4
  %185 = load i32, i32* %9, align 4
  %186 = load i32, i32* %5, align 4
  %187 = add nsw i32 %185, %186
  store i32 %187, i32* %9, align 4
  %188 = load i32, i32* %10, align 4
  %189 = add nsw i32 %188, 2
  store i32 %189, i32* %5, align 4
  store i32 3, i32* %10, align 4
  %190 = load i32, i32* %7, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %7, align 4
  %192 = load i32, i32* %5, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %5, align 4
  store i32 %192, i32* %8, align 4
  %194 = load i32, i32* %7, align 4
  store i32 %194, i32* %6, align 4
  %195 = call i32 @func6()
  call void @verify_signature(i32* @main_signature, i32 1507337)
  br label %196

; <label>:196:                                    ; preds = %166
  call void @update_signature(i32* @main_signature, i32 1507338)
  %197 = load i32, i32* %6, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %5, align 4
  %199 = load i32, i32* %7, align 4
  %200 = load i32, i32* %5, align 4
  %201 = add nsw i32 %199, %200
  store i32 %201, i32* %6, align 4
  store i32 2, i32* %7, align 4
  %202 = load i32, i32* %5, align 4
  %203 = add nsw i32 %202, 2
  store i32 %203, i32* %8, align 4
  store i32 5, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %204 = load i32, i32* %10, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %5, align 4
  %206 = load i32, i32* %10, align 4
  %207 = load i32, i32* %8, align 4
  %208 = add nsw i32 %206, %207
  store i32 %208, i32* %10, align 4
  %209 = load i32, i32* %5, align 4
  %210 = load i32, i32* %6, align 4
  %211 = add nsw i32 %209, %210
  store i32 %211, i32* %8, align 4
  %212 = load i32, i32* %8, align 4
  %213 = load i32, i32* %10, align 4
  %214 = add nsw i32 %212, %213
  store i32 %214, i32* %7, align 4
  %215 = load i32, i32* %9, align 4
  %216 = load i32, i32* %5, align 4
  %217 = add nsw i32 %215, %216
  store i32 %217, i32* %9, align 4
  %218 = load i32, i32* %10, align 4
  %219 = add nsw i32 %218, 2
  store i32 %219, i32* %5, align 4
  store i32 3, i32* %10, align 4
  %220 = load i32, i32* %7, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %7, align 4
  %222 = load i32, i32* %5, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %5, align 4
  store i32 %222, i32* %8, align 4
  %224 = load i32, i32* %7, align 4
  store i32 %224, i32* %6, align 4
  call void @verify_signature(i32* @main_signature, i32 1507338)
  br label %225

; <label>:225:                                    ; preds = %196
  call void @update_signature(i32* @main_signature, i32 1507339)
  %226 = load i32, i32* %4, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %4, align 4
  call void @verify_signature(i32* @main_signature, i32 1507339)
  br label %13

; <label>:228:                                    ; preds = %13
  call void @update_signature(i32* @main_signature, i32 1507340)
  %229 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0))
  call void @verify_signature(i32* @main_signature, i32 1507340)
  br label %230

; <label>:230:                                    ; preds = %228
  call void @update_signature(i32* @main_signature, i32 1507341)
  %231 = call i32 @gettimeofday(%struct.timeval* %3, %struct.timezone* null) #3
  call void @verify_signature(i32* @main_signature, i32 1507341)
  br label %232

; <label>:232:                                    ; preds = %230
  call void @update_signature(i32* @main_signature, i32 1507342)
  %233 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = sub nsw i64 %234, %236
  %238 = mul nsw i64 %237, 1000000
  %239 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = sub nsw i64 %240, %242
  %244 = add nsw i64 %238, %243
  %245 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0), i64 %244)
  call void @verify_signature(i32* @main_signature, i32 1507342)
  br label %246

; <label>:246:                                    ; preds = %232
  call void @update_signature(i32* @main_signature, i32 1507343)
  store i32 1, i32* @is_signature_queue_full, align 4
  %247 = load i32, i32* %1, align 4
  call void @verify_signature(i32* @main_signature, i32 1507343)
  ret i32 %247
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #1

declare i32 @printf(i8*, ...) #2

declare void @init_monitor()

declare void @update_signature(i32*, i32)

declare void @verify_signature(i32*, i32)

declare void @enqueue_signature_with_return(i32)

declare void @enqueue_signature_with_remainder_process(i32)

declare void @update_signature2(i32*, i32)

declare void @update_signature3(i32, i32)

define void @CallcheckerSet() {
entry:
  call void @init_monitor()
  call void @update_signature(i32* @CallcheckerSet_signature, i32 1)
  call void @verify_signature(i32* @CallcheckerSet_signature, i32 1)
  call void @enqueue_signature_with_return(i32 1)
  call void @enqueue_signature_with_remainder_process(i32 1)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 5.0.0 (tags/RELEASE_500/final)"}
