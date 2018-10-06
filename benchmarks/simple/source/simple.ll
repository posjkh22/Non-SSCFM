; ModuleID = 'simple.c'
source_filename = "simple.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@global_value1 = global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c" [target finished!]\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c" [target] Execution Time: %ld\0A\00", align 1
@is_signature_queue_full = external global i32, align 4

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func1_3() #0 {
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
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func1_2() #0 {
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
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func1_1() #0 {
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
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func2_2() #0 {
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
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func2_1() #0 {
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
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func3_1() #0 {
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
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func4_4() #0 {
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
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func4_3() #0 {
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
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func4_2() #0 {
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
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func4_1() #0 {
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
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func5_1() #0 {
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
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func5_2() #0 {
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
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func5_3() #0 {
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
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func5_4() #0 {
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
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func5_5() #0 {
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
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sub_func6_1() #0 {
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
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @func1() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %7 = call i32 @sub_func1_1()
  %8 = load i32, i32* %2, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %1, align 4
  %12 = add nsw i32 %10, %11
  store i32 %12, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %13 = load i32, i32* %1, align 4
  %14 = add nsw i32 %13, 2
  store i32 %14, i32* %4, align 4
  store i32 5, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* %2, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 2
  store i32 %30, i32* %1, align 4
  store i32 3, i32* %6, align 4
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %1, align 4
  store i32 %33, i32* %4, align 4
  %35 = load i32, i32* %3, align 4
  store i32 %35, i32* %2, align 4
  %36 = call i32 @sub_func1_2()
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
  %65 = call i32 @sub_func1_3()
  %66 = load i32, i32* %2, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %1, align 4
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* %1, align 4
  %70 = add nsw i32 %68, %69
  store i32 %70, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %71 = load i32, i32* %1, align 4
  %72 = add nsw i32 %71, 2
  store i32 %72, i32* %4, align 4
  store i32 5, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %1, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %75, %76
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %1, align 4
  %79 = load i32, i32* %2, align 4
  %80 = add nsw i32 %78, %79
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %81, %82
  store i32 %83, i32* %3, align 4
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %1, align 4
  %86 = add nsw i32 %84, %85
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 2
  store i32 %88, i32* %1, align 4
  store i32 3, i32* %6, align 4
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %3, align 4
  %91 = load i32, i32* %1, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %1, align 4
  store i32 %91, i32* %4, align 4
  %93 = load i32, i32* %3, align 4
  store i32 %93, i32* %2, align 4
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @func2() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %7 = call i32 @sub_func2_1()
  %8 = load i32, i32* %2, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %1, align 4
  %12 = add nsw i32 %10, %11
  store i32 %12, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %13 = load i32, i32* %1, align 4
  %14 = add nsw i32 %13, 2
  store i32 %14, i32* %4, align 4
  store i32 5, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* %2, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 2
  store i32 %30, i32* %1, align 4
  store i32 3, i32* %6, align 4
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %1, align 4
  store i32 %33, i32* %4, align 4
  %35 = load i32, i32* %3, align 4
  store i32 %35, i32* %2, align 4
  %36 = call i32 @sub_func2_2()
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
  ret i32 2
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @func3() #0 {
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
  %36 = load i32, i32* %2, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %1, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* %1, align 4
  %40 = add nsw i32 %38, %39
  store i32 %40, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %41 = load i32, i32* %1, align 4
  %42 = add nsw i32 %41, 2
  store i32 %42, i32* %4, align 4
  store i32 5, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %1, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %45, %46
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %1, align 4
  %49 = load i32, i32* %2, align 4
  %50 = add nsw i32 %48, %49
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %51, %52
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %1, align 4
  %56 = add nsw i32 %54, %55
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 2
  store i32 %58, i32* %1, align 4
  store i32 3, i32* %6, align 4
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* %1, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %1, align 4
  store i32 %61, i32* %4, align 4
  %63 = load i32, i32* %3, align 4
  store i32 %63, i32* %2, align 4
  ret i32 3
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @func4() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %7 = call i32 @sub_func4_1()
  %8 = load i32, i32* %2, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %1, align 4
  %12 = add nsw i32 %10, %11
  store i32 %12, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %13 = load i32, i32* %1, align 4
  %14 = add nsw i32 %13, 2
  store i32 %14, i32* %4, align 4
  store i32 5, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* %2, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 2
  store i32 %30, i32* %1, align 4
  store i32 3, i32* %6, align 4
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %1, align 4
  store i32 %33, i32* %4, align 4
  %35 = load i32, i32* %3, align 4
  store i32 %35, i32* %2, align 4
  %36 = call i32 @sub_func4_2()
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
  %65 = call i32 @sub_func4_3()
  %66 = load i32, i32* %2, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %1, align 4
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* %1, align 4
  %70 = add nsw i32 %68, %69
  store i32 %70, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %71 = load i32, i32* %1, align 4
  %72 = add nsw i32 %71, 2
  store i32 %72, i32* %4, align 4
  store i32 5, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %1, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %75, %76
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %1, align 4
  %79 = load i32, i32* %2, align 4
  %80 = add nsw i32 %78, %79
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %81, %82
  store i32 %83, i32* %3, align 4
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %1, align 4
  %86 = add nsw i32 %84, %85
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 2
  store i32 %88, i32* %1, align 4
  store i32 3, i32* %6, align 4
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %3, align 4
  %91 = load i32, i32* %1, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %1, align 4
  store i32 %91, i32* %4, align 4
  %93 = load i32, i32* %3, align 4
  store i32 %93, i32* %2, align 4
  %94 = call i32 @sub_func4_4()
  %95 = load i32, i32* %2, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %1, align 4
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* %1, align 4
  %99 = add nsw i32 %97, %98
  store i32 %99, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %100 = load i32, i32* %1, align 4
  %101 = add nsw i32 %100, 2
  store i32 %101, i32* %4, align 4
  store i32 5, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %1, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %4, align 4
  %106 = add nsw i32 %104, %105
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %1, align 4
  %108 = load i32, i32* %2, align 4
  %109 = add nsw i32 %107, %108
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %110, %111
  store i32 %112, i32* %3, align 4
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* %1, align 4
  %115 = add nsw i32 %113, %114
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 %116, 2
  store i32 %117, i32* %1, align 4
  store i32 3, i32* %6, align 4
  %118 = load i32, i32* %3, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %3, align 4
  %120 = load i32, i32* %1, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %1, align 4
  store i32 %120, i32* %4, align 4
  %122 = load i32, i32* %3, align 4
  store i32 %122, i32* %2, align 4
  ret i32 4
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @func5() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %7 = call i32 @sub_func5_1()
  %8 = load i32, i32* %2, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %1, align 4
  %12 = add nsw i32 %10, %11
  store i32 %12, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %13 = load i32, i32* %1, align 4
  %14 = add nsw i32 %13, 2
  store i32 %14, i32* %4, align 4
  store i32 5, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* %2, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 2
  store i32 %30, i32* %1, align 4
  store i32 3, i32* %6, align 4
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %1, align 4
  store i32 %33, i32* %4, align 4
  %35 = load i32, i32* %3, align 4
  store i32 %35, i32* %2, align 4
  %36 = call i32 @sub_func5_2()
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
  %65 = call i32 @sub_func5_3()
  %66 = load i32, i32* %2, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %1, align 4
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* %1, align 4
  %70 = add nsw i32 %68, %69
  store i32 %70, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %71 = load i32, i32* %1, align 4
  %72 = add nsw i32 %71, 2
  store i32 %72, i32* %4, align 4
  store i32 5, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %1, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %75, %76
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %1, align 4
  %79 = load i32, i32* %2, align 4
  %80 = add nsw i32 %78, %79
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %81, %82
  store i32 %83, i32* %3, align 4
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %1, align 4
  %86 = add nsw i32 %84, %85
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 2
  store i32 %88, i32* %1, align 4
  store i32 3, i32* %6, align 4
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %3, align 4
  %91 = load i32, i32* %1, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %1, align 4
  store i32 %91, i32* %4, align 4
  %93 = load i32, i32* %3, align 4
  store i32 %93, i32* %2, align 4
  %94 = call i32 @sub_func5_4()
  %95 = load i32, i32* %2, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %1, align 4
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* %1, align 4
  %99 = add nsw i32 %97, %98
  store i32 %99, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %100 = load i32, i32* %1, align 4
  %101 = add nsw i32 %100, 2
  store i32 %101, i32* %4, align 4
  store i32 5, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %1, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %4, align 4
  %106 = add nsw i32 %104, %105
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %1, align 4
  %108 = load i32, i32* %2, align 4
  %109 = add nsw i32 %107, %108
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %110, %111
  store i32 %112, i32* %3, align 4
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* %1, align 4
  %115 = add nsw i32 %113, %114
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 %116, 2
  store i32 %117, i32* %1, align 4
  store i32 3, i32* %6, align 4
  %118 = load i32, i32* %3, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %3, align 4
  %120 = load i32, i32* %1, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %1, align 4
  store i32 %120, i32* %4, align 4
  %122 = load i32, i32* %3, align 4
  store i32 %122, i32* %2, align 4
  %123 = call i32 @sub_func5_5()
  %124 = load i32, i32* %2, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %1, align 4
  %126 = load i32, i32* %3, align 4
  %127 = load i32, i32* %1, align 4
  %128 = add nsw i32 %126, %127
  store i32 %128, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %129 = load i32, i32* %1, align 4
  %130 = add nsw i32 %129, 2
  store i32 %130, i32* %4, align 4
  store i32 5, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %1, align 4
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* %4, align 4
  %135 = add nsw i32 %133, %134
  store i32 %135, i32* %6, align 4
  %136 = load i32, i32* %1, align 4
  %137 = load i32, i32* %2, align 4
  %138 = add nsw i32 %136, %137
  store i32 %138, i32* %4, align 4
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* %6, align 4
  %141 = add nsw i32 %139, %140
  store i32 %141, i32* %3, align 4
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* %1, align 4
  %144 = add nsw i32 %142, %143
  store i32 %144, i32* %5, align 4
  %145 = load i32, i32* %6, align 4
  %146 = add nsw i32 %145, 2
  store i32 %146, i32* %1, align 4
  store i32 3, i32* %6, align 4
  %147 = load i32, i32* %3, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %3, align 4
  %149 = load i32, i32* %1, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %1, align 4
  store i32 %149, i32* %4, align 4
  %151 = load i32, i32* %3, align 4
  store i32 %151, i32* %2, align 4
  ret i32 5
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @func6() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  %7 = call i32 @sub_func6_1()
  %8 = load i32, i32* %2, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %1, align 4
  %12 = add nsw i32 %10, %11
  store i32 %12, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %13 = load i32, i32* %1, align 4
  %14 = add nsw i32 %13, 2
  store i32 %14, i32* %4, align 4
  store i32 5, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* %2, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 2
  store i32 %30, i32* %1, align 4
  store i32 3, i32* %6, align 4
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %1, align 4
  store i32 %33, i32* %4, align 4
  %35 = load i32, i32* %3, align 4
  store i32 %35, i32* %2, align 4
  ret i32 6
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main() #0 {
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
  store i32 0, i32* %4, align 4
  br label %12

; <label>:12:                                     ; preds = %218, %0
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 5000
  br i1 %14, label %15, label %221

; <label>:15:                                     ; preds = %12
  store i32 3, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %6, align 4
  store i32 2, i32* %7, align 4
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 2
  store i32 %22, i32* %8, align 4
  store i32 5, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %28, %29
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %34, %35
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 2
  store i32 %38, i32* %5, align 4
  store i32 3, i32* %10, align 4
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  store i32 %41, i32* %8, align 4
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %6, align 4
  %44 = call i32 @func1()
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %47, %48
  store i32 %49, i32* %6, align 4
  store i32 2, i32* %7, align 4
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 2
  store i32 %51, i32* %8, align 4
  store i32 5, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %54, %55
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %57, %58
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %60, %61
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %63, %64
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 2
  store i32 %67, i32* %5, align 4
  store i32 3, i32* %10, align 4
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  store i32 %70, i32* %8, align 4
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %6, align 4
  %73 = call i32 @func2()
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %76, %77
  store i32 %78, i32* %6, align 4
  store i32 2, i32* %7, align 4
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 2
  store i32 %80, i32* %8, align 4
  store i32 5, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %83, %84
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %86, %87
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %89, %90
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %92, %93
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 2
  store i32 %96, i32* %5, align 4
  store i32 3, i32* %10, align 4
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %5, align 4
  store i32 %99, i32* %8, align 4
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %6, align 4
  %102 = call i32 @func3()
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %105, %106
  store i32 %107, i32* %6, align 4
  store i32 2, i32* %7, align 4
  %108 = load i32, i32* %5, align 4
  %109 = add nsw i32 %108, 2
  store i32 %109, i32* %8, align 4
  store i32 5, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %112, %113
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 %115, %116
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %118, %119
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %5, align 4
  %123 = add nsw i32 %121, %122
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 2
  store i32 %125, i32* %5, align 4
  store i32 3, i32* %10, align 4
  %126 = load i32, i32* %7, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %5, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %5, align 4
  store i32 %128, i32* %8, align 4
  %130 = load i32, i32* %7, align 4
  store i32 %130, i32* %6, align 4
  %131 = call i32 @func4()
  %132 = load i32, i32* %6, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %5, align 4
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* %5, align 4
  %136 = add nsw i32 %134, %135
  store i32 %136, i32* %6, align 4
  store i32 2, i32* %7, align 4
  %137 = load i32, i32* %5, align 4
  %138 = add nsw i32 %137, 2
  store i32 %138, i32* %8, align 4
  store i32 5, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %139 = load i32, i32* %10, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %5, align 4
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %8, align 4
  %143 = add nsw i32 %141, %142
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* %5, align 4
  %145 = load i32, i32* %6, align 4
  %146 = add nsw i32 %144, %145
  store i32 %146, i32* %8, align 4
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* %10, align 4
  %149 = add nsw i32 %147, %148
  store i32 %149, i32* %7, align 4
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* %5, align 4
  %152 = add nsw i32 %150, %151
  store i32 %152, i32* %9, align 4
  %153 = load i32, i32* %10, align 4
  %154 = add nsw i32 %153, 2
  store i32 %154, i32* %5, align 4
  store i32 3, i32* %10, align 4
  %155 = load i32, i32* %7, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %7, align 4
  %157 = load i32, i32* %5, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %5, align 4
  store i32 %157, i32* %8, align 4
  %159 = load i32, i32* %7, align 4
  store i32 %159, i32* %6, align 4
  %160 = call i32 @func5()
  %161 = load i32, i32* %6, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %5, align 4
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* %5, align 4
  %165 = add nsw i32 %163, %164
  store i32 %165, i32* %6, align 4
  store i32 2, i32* %7, align 4
  %166 = load i32, i32* %5, align 4
  %167 = add nsw i32 %166, 2
  store i32 %167, i32* %8, align 4
  store i32 5, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %168 = load i32, i32* %10, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %5, align 4
  %170 = load i32, i32* %10, align 4
  %171 = load i32, i32* %8, align 4
  %172 = add nsw i32 %170, %171
  store i32 %172, i32* %10, align 4
  %173 = load i32, i32* %5, align 4
  %174 = load i32, i32* %6, align 4
  %175 = add nsw i32 %173, %174
  store i32 %175, i32* %8, align 4
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* %10, align 4
  %178 = add nsw i32 %176, %177
  store i32 %178, i32* %7, align 4
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* %5, align 4
  %181 = add nsw i32 %179, %180
  store i32 %181, i32* %9, align 4
  %182 = load i32, i32* %10, align 4
  %183 = add nsw i32 %182, 2
  store i32 %183, i32* %5, align 4
  store i32 3, i32* %10, align 4
  %184 = load i32, i32* %7, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %7, align 4
  %186 = load i32, i32* %5, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %5, align 4
  store i32 %186, i32* %8, align 4
  %188 = load i32, i32* %7, align 4
  store i32 %188, i32* %6, align 4
  %189 = call i32 @func6()
  %190 = load i32, i32* %6, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %5, align 4
  %192 = load i32, i32* %7, align 4
  %193 = load i32, i32* %5, align 4
  %194 = add nsw i32 %192, %193
  store i32 %194, i32* %6, align 4
  store i32 2, i32* %7, align 4
  %195 = load i32, i32* %5, align 4
  %196 = add nsw i32 %195, 2
  store i32 %196, i32* %8, align 4
  store i32 5, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %197 = load i32, i32* %10, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %5, align 4
  %199 = load i32, i32* %10, align 4
  %200 = load i32, i32* %8, align 4
  %201 = add nsw i32 %199, %200
  store i32 %201, i32* %10, align 4
  %202 = load i32, i32* %5, align 4
  %203 = load i32, i32* %6, align 4
  %204 = add nsw i32 %202, %203
  store i32 %204, i32* %8, align 4
  %205 = load i32, i32* %8, align 4
  %206 = load i32, i32* %10, align 4
  %207 = add nsw i32 %205, %206
  store i32 %207, i32* %7, align 4
  %208 = load i32, i32* %9, align 4
  %209 = load i32, i32* %5, align 4
  %210 = add nsw i32 %208, %209
  store i32 %210, i32* %9, align 4
  %211 = load i32, i32* %10, align 4
  %212 = add nsw i32 %211, 2
  store i32 %212, i32* %5, align 4
  store i32 3, i32* %10, align 4
  %213 = load i32, i32* %7, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %7, align 4
  %215 = load i32, i32* %5, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %5, align 4
  store i32 %215, i32* %8, align 4
  %217 = load i32, i32* %7, align 4
  store i32 %217, i32* %6, align 4
  br label %218

; <label>:218:                                    ; preds = %15
  %219 = load i32, i32* %4, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %4, align 4
  br label %12

; <label>:221:                                    ; preds = %12
  %222 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0))
  %223 = call i32 @gettimeofday(%struct.timeval* %3, %struct.timezone* null) #3
  %224 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = sub nsw i64 %225, %227
  %229 = mul nsw i64 %228, 1000000
  %230 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = sub nsw i64 %231, %233
  %235 = add nsw i64 %229, %234
  %236 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0), i64 %235)
  store i32 1, i32* @is_signature_queue_full, align 4
  %237 = load i32, i32* %1, align 4
  ret i32 %237
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
