; ModuleID = './outputs/translated.bc'
source_filename = "blocked.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.timezone = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"hello.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"write.txt\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c" [target finished!]\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c" [target] Execution Time: %ld\0A\00", align 1
@is_signature_queue_full = external global i32, align 4
@calculation_type_A_signature = global i32 0
@calculation_type_B_signature = global i32 0
@main_signature = global i32 0
@gettimeofday_signature = global i32 0
@fopen_signature = global i32 0
@fgets_signature = global i32 0
@fputs_signature = global i32 0
@fclose_signature = global i32 0
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
define void @calculation_type_A() #0 {
  call void @update_signature(i32* @calculation_type_A_signature, i32 65537)
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  call void @verify_signature(i32* @calculation_type_A_signature, i32 65537)
  br label %3

; <label>:3:                                      ; preds = %14, %0
  call void @update_signature(i32* @calculation_type_A_signature, i32 65538)
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 30
  call void @verify_signature(i32* @calculation_type_A_signature, i32 65538)
  br i1 %5, label %6, label %17

; <label>:6:                                      ; preds = %3
  call void @update_signature(i32* @calculation_type_A_signature, i32 65539)
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %1, align 4
  %9 = add nsw i32 %8, %7
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = mul nsw i32 %10, 2
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* %1, align 4
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %1, align 4
  call void @verify_signature(i32* @calculation_type_A_signature, i32 65539)
  br label %14

; <label>:14:                                     ; preds = %6
  call void @update_signature(i32* @calculation_type_A_signature, i32 65540)
  %15 = load i32, i32* %2, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %2, align 4
  call void @verify_signature(i32* @calculation_type_A_signature, i32 65540)
  br label %3

; <label>:17:                                     ; preds = %3
  call void @update_signature(i32* @calculation_type_A_signature, i32 65541)
  call void @verify_signature(i32* @calculation_type_A_signature, i32 65541)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @calculation_type_B() #0 {
  call void @update_signature(i32* @calculation_type_B_signature, i32 131073)
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  store i32 1, i32* %2, align 4
  call void @verify_signature(i32* @calculation_type_B_signature, i32 131073)
  br label %3

; <label>:3:                                      ; preds = %12, %0
  call void @update_signature(i32* @calculation_type_B_signature, i32 131074)
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 50
  call void @verify_signature(i32* @calculation_type_B_signature, i32 131074)
  br i1 %5, label %6, label %15

; <label>:6:                                      ; preds = %3
  call void @update_signature(i32* @calculation_type_B_signature, i32 131075)
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %1, align 4
  %9 = mul nsw i32 %8, %7
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = add nsw i32 %10, 2
  store i32 %11, i32* %1, align 4
  call void @verify_signature(i32* @calculation_type_B_signature, i32 131075)
  br label %12

; <label>:12:                                     ; preds = %6
  call void @update_signature(i32* @calculation_type_B_signature, i32 131076)
  %13 = load i32, i32* %2, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %2, align 4
  call void @verify_signature(i32* @calculation_type_B_signature, i32 131076)
  br label %3

; <label>:15:                                     ; preds = %3
  call void @update_signature(i32* @calculation_type_B_signature, i32 131077)
  call void @verify_signature(i32* @calculation_type_B_signature, i32 131077)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main() #0 {
  call void @update_signature(i32* @main_signature, i32 196609)
  %1 = alloca i32, align 4
  %2 = alloca %struct.timeval, align 8
  %3 = alloca %struct.timeval, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [20 x i8], align 16
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct._IO_FILE*, align 8
  store i32 0, i32* %1, align 4
  %10 = call i32 @gettimeofday(%struct.timeval* %2, %struct.timezone* null) #3
  call void @verify_signature(i32* @main_signature, i32 196609)
  br label %11

; <label>:11:                                     ; preds = %0
  call void @update_signature(i32* @main_signature, i32 196610)
  store i32 50, i32* %4, align 4
  store i32 0, i32* %5, align 4
  call void @verify_signature(i32* @main_signature, i32 196610)
  br label %12

; <label>:12:                                     ; preds = %49, %11
  call void @update_signature(i32* @main_signature, i32 196611)
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %13, %14
  call void @verify_signature(i32* @main_signature, i32 196611)
  br i1 %15, label %16, label %52

; <label>:16:                                     ; preds = %12
  call void @update_signature(i32* @main_signature, i32 196612)
  call void @calculation_type_A()
  call void @verify_signature(i32* @main_signature, i32 196612)
  br label %17

; <label>:17:                                     ; preds = %16
  call void @update_signature(i32* @main_signature, i32 196613)
  %18 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  call void @verify_signature(i32* @main_signature, i32 196613)
  br label %19

; <label>:19:                                     ; preds = %17
  call void @update_signature(i32* @main_signature, i32 196614)
  store %struct._IO_FILE* %18, %struct._IO_FILE** %7, align 8
  call void @calculation_type_B()
  call void @verify_signature(i32* @main_signature, i32 196614)
  br label %20

; <label>:20:                                     ; preds = %19
  call void @update_signature(i32* @main_signature, i32 196615)
  store i32 0, i32* %8, align 4
  call void @verify_signature(i32* @main_signature, i32 196615)
  br label %21

; <label>:21:                                     ; preds = %42, %20
  call void @update_signature(i32* @main_signature, i32 196616)
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 50
  call void @verify_signature(i32* @main_signature, i32 196616)
  br i1 %23, label %24, label %45

; <label>:24:                                     ; preds = %21
  call void @update_signature(i32* @main_signature, i32 196617)
  call void @calculation_type_B()
  call void @verify_signature(i32* @main_signature, i32 196617)
  br label %25

; <label>:25:                                     ; preds = %24
  call void @update_signature(i32* @main_signature, i32 196618)
  %26 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i32 0, i32 0
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %28 = call i8* @fgets(i8* %26, i32 20, %struct._IO_FILE* %27)
  call void @verify_signature(i32* @main_signature, i32 196618)
  br label %29

; <label>:29:                                     ; preds = %25
  call void @update_signature(i32* @main_signature, i32 196619)
  call void @calculation_type_A()
  call void @verify_signature(i32* @main_signature, i32 196619)
  br label %30

; <label>:30:                                     ; preds = %29
  call void @update_signature(i32* @main_signature, i32 196620)
  %31 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  call void @verify_signature(i32* @main_signature, i32 196620)
  br label %32

; <label>:32:                                     ; preds = %30
  call void @update_signature(i32* @main_signature, i32 196621)
  store %struct._IO_FILE* %31, %struct._IO_FILE** %9, align 8
  call void @calculation_type_B()
  call void @verify_signature(i32* @main_signature, i32 196621)
  br label %33

; <label>:33:                                     ; preds = %32
  call void @update_signature(i32* @main_signature, i32 196622)
  %34 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i32 0, i32 0
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %36 = call i32 @fputs(i8* %34, %struct._IO_FILE* %35)
  call void @verify_signature(i32* @main_signature, i32 196622)
  br label %37

; <label>:37:                                     ; preds = %33
  call void @update_signature(i32* @main_signature, i32 196623)
  call void @calculation_type_A()
  call void @verify_signature(i32* @main_signature, i32 196623)
  br label %38

; <label>:38:                                     ; preds = %37
  call void @update_signature(i32* @main_signature, i32 196624)
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %40 = call i32 @fclose(%struct._IO_FILE* %39)
  call void @verify_signature(i32* @main_signature, i32 196624)
  br label %41

; <label>:41:                                     ; preds = %38
  call void @update_signature(i32* @main_signature, i32 196625)
  call void @calculation_type_B()
  call void @verify_signature(i32* @main_signature, i32 196625)
  br label %42

; <label>:42:                                     ; preds = %41
  call void @update_signature(i32* @main_signature, i32 196626)
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  call void @verify_signature(i32* @main_signature, i32 196626)
  br label %21

; <label>:45:                                     ; preds = %21
  call void @update_signature(i32* @main_signature, i32 196627)
  call void @calculation_type_A()
  call void @verify_signature(i32* @main_signature, i32 196627)
  br label %46

; <label>:46:                                     ; preds = %45
  call void @update_signature(i32* @main_signature, i32 196628)
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %48 = call i32 @fclose(%struct._IO_FILE* %47)
  call void @verify_signature(i32* @main_signature, i32 196628)
  br label %49

; <label>:49:                                     ; preds = %46
  call void @update_signature(i32* @main_signature, i32 196629)
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  call void @verify_signature(i32* @main_signature, i32 196629)
  br label %12

; <label>:52:                                     ; preds = %12
  call void @update_signature(i32* @main_signature, i32 196630)
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0))
  call void @verify_signature(i32* @main_signature, i32 196630)
  br label %54

; <label>:54:                                     ; preds = %52
  call void @update_signature(i32* @main_signature, i32 196631)
  %55 = call i32 @gettimeofday(%struct.timeval* %3, %struct.timezone* null) #3
  call void @verify_signature(i32* @main_signature, i32 196631)
  br label %56

; <label>:56:                                     ; preds = %54
  call void @update_signature(i32* @main_signature, i32 196632)
  %57 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %58, %60
  %62 = mul nsw i64 %61, 1000000
  %63 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %64, %66
  %68 = add nsw i64 %62, %67
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0), i64 %68)
  call void @verify_signature(i32* @main_signature, i32 196632)
  br label %70

; <label>:70:                                     ; preds = %56
  call void @update_signature(i32* @main_signature, i32 196633)
  store i32 1, i32* @is_signature_queue_full, align 4
  call void @verify_signature(i32* @main_signature, i32 196633)
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

declare i32 @fputs(i8*, %struct._IO_FILE*) #2

declare i32 @fclose(%struct._IO_FILE*) #2

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
