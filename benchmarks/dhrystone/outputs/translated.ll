; ModuleID = './outputs/translated.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.record = type { %struct.record*, i32, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32, [31 x i8] }
%struct.timeval = type { i64, i64 }

@Reg = global i32 0, align 4
@Next_Ptr_Glob = common global %struct.record* null, align 8
@Ptr_Glob = common global %struct.record* null, align 8
@Arr_2_Glob = common global [50 x [50 x i32]] zeroinitializer, align 16
@Bool_Glob = common global i32 0, align 4
@Arr_1_Glob = common global [50 x i32] zeroinitializer, align 16
@Ch_2_Glob = common global i8 0, align 1
@Int_Glob = common global i32 0, align 4
@End_Time = common global i64 0, align 8
@Begin_Time = common global i64 0, align 8
@User_Time = common global i64 0, align 8
@Microseconds = common global float 0.000000e+00, align 4
@Dhrystones_Per_Second = common global float 0.000000e+00, align 4
@Ch_1_Glob = common global i8 0, align 1
@.str = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, SOME STRING\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, 1'ST STRING\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, 2'ND STRING\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, 3'RD STRING\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c" [target finished!]\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c" [target] Execution time: %ld\0A\00", align 1
@main_signature = global i32 0
@gettimeofday_signature = global i32 0
@malloc_signature = global i32 0
@strcpy_signature = global i32 0
@Proc_5_signature = global i32 0
@Proc_4_signature = global i32 0
@Proc_1_signature = global i32 0
@Proc_2_signature = global i32 0
@printf_signature = global i32 0
@llvm.memcpy.p0i8.p0i8.i64_signature = global i32 0
@Proc_3_signature = global i32 0
@Proc_6_signature = global i32 0
@Func_3_signature = global i32 0
@Proc_7_signature = global i32 0
@Proc_8_signature = global i32 0
@Func_1_signature = global i32 0
@Func_2_signature = global i32 0
@strcmp_signature = global i32 0
@init_monitor_signature = global i32 0
@update_signature_signature = global i32 0
@verify_signature_signature = global i32 0
@enqueue_signature_with_return_signature = global i32 0
@enqueue_signature_with_remainder_process_signature = global i32 0
@update_signature2_signature = global i32 0
@update_signature3_signature = global i32 0
@CallcheckerSet_signature = global i32 0

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main() #0 {
  call void @update_signature(i32* @main_signature, i32 65537)
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca [31 x i8], align 16
  %8 = alloca [31 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.timeval, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.timeval, align 8
  store i32 0, i32* %1, align 4
  %14 = call i32 (%struct.timeval*, i8*, ...) bitcast (i32 (...)* @gettimeofday to i32 (%struct.timeval*, i8*, ...)*)(%struct.timeval* %11, i8* null)
  call void @verify_signature(i32* @main_signature, i32 65537)
  br label %15

; <label>:15:                                     ; preds = %0
  call void @update_signature(i32* @main_signature, i32 65538)
  %16 = call i8* (i64, ...) bitcast (i8* (...)* @malloc to i8* (i64, ...)*)(i64 56)
  call void @verify_signature(i32* @main_signature, i32 65538)
  br label %17

; <label>:17:                                     ; preds = %15
  call void @update_signature(i32* @main_signature, i32 65539)
  %18 = bitcast i8* %16 to %struct.record*
  store %struct.record* %18, %struct.record** @Next_Ptr_Glob, align 8
  %19 = call i8* (i64, ...) bitcast (i8* (...)* @malloc to i8* (i64, ...)*)(i64 56)
  call void @verify_signature(i32* @main_signature, i32 65539)
  br label %20

; <label>:20:                                     ; preds = %17
  call void @update_signature(i32* @main_signature, i32 65540)
  %21 = bitcast i8* %19 to %struct.record*
  store %struct.record* %21, %struct.record** @Ptr_Glob, align 8
  %22 = load %struct.record*, %struct.record** @Next_Ptr_Glob, align 8
  %23 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %24 = getelementptr inbounds %struct.record, %struct.record* %23, i32 0, i32 0
  store %struct.record* %22, %struct.record** %24, align 8
  %25 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %26 = getelementptr inbounds %struct.record, %struct.record* %25, i32 0, i32 1
  store i32 0, i32* %26, align 8
  %27 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %28 = getelementptr inbounds %struct.record, %struct.record* %27, i32 0, i32 2
  %29 = bitcast %union.anon* %28 to %struct.anon*
  %30 = getelementptr inbounds %struct.anon, %struct.anon* %29, i32 0, i32 0
  store i32 2, i32* %30, align 4
  %31 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %32 = getelementptr inbounds %struct.record, %struct.record* %31, i32 0, i32 2
  %33 = bitcast %union.anon* %32 to %struct.anon*
  %34 = getelementptr inbounds %struct.anon, %struct.anon* %33, i32 0, i32 1
  store i32 40, i32* %34, align 4
  %35 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %36 = getelementptr inbounds %struct.record, %struct.record* %35, i32 0, i32 2
  %37 = bitcast %union.anon* %36 to %struct.anon*
  %38 = getelementptr inbounds %struct.anon, %struct.anon* %37, i32 0, i32 2
  %39 = getelementptr inbounds [31 x i8], [31 x i8]* %38, i32 0, i32 0
  %40 = call i8* @strcpy(i8* %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0))
  call void @verify_signature(i32* @main_signature, i32 65540)
  br label %41

; <label>:41:                                     ; preds = %20
  call void @update_signature(i32* @main_signature, i32 65541)
  %42 = getelementptr inbounds [31 x i8], [31 x i8]* %7, i32 0, i32 0
  %43 = call i8* @strcpy(i8* %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0))
  call void @verify_signature(i32* @main_signature, i32 65541)
  br label %44

; <label>:44:                                     ; preds = %41
  call void @update_signature(i32* @main_signature, i32 65542)
  store i32 10, i32* getelementptr inbounds ([50 x [50 x i32]], [50 x [50 x i32]]* @Arr_2_Glob, i64 0, i64 8, i64 7), align 4
  %45 = load i32, i32* @Reg, align 4
  %46 = icmp ne i32 %45, 0
  call void @verify_signature(i32* @main_signature, i32 65542)
  br i1 %46, label %47, label %48

; <label>:47:                                     ; preds = %44
  call void @update_signature(i32* @main_signature, i32 65543)
  call void @verify_signature(i32* @main_signature, i32 65543)
  br label %49

; <label>:48:                                     ; preds = %44
  call void @update_signature(i32* @main_signature, i32 65544)
  call void @verify_signature(i32* @main_signature, i32 65544)
  br label %49

; <label>:49:                                     ; preds = %48, %47
  call void @update_signature(i32* @main_signature, i32 65545)
  store i32 1000, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %10, align 4
  store i32 1, i32* %9, align 4
  call void @verify_signature(i32* @main_signature, i32 65545)
  br label %51

; <label>:51:                                     ; preds = %132, %49
  call void @update_signature(i32* @main_signature, i32 65546)
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp sle i32 %52, %53
  call void @verify_signature(i32* @main_signature, i32 65546)
  br i1 %54, label %55, label %135

; <label>:55:                                     ; preds = %51
  call void @update_signature(i32* @main_signature, i32 65547)
  %56 = call i32 @Proc_5()
  call void @verify_signature(i32* @main_signature, i32 65547)
  br label %57

; <label>:57:                                     ; preds = %55
  call void @update_signature(i32* @main_signature, i32 65548)
  %58 = call i32 @Proc_4()
  call void @verify_signature(i32* @main_signature, i32 65548)
  br label %59

; <label>:59:                                     ; preds = %57
  call void @update_signature(i32* @main_signature, i32 65549)
  store i32 2, i32* %2, align 4
  store i32 3, i32* %3, align 4
  %60 = getelementptr inbounds [31 x i8], [31 x i8]* %8, i32 0, i32 0
  %61 = call i8* @strcpy(i8* %60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0))
  call void @verify_signature(i32* @main_signature, i32 65549)
  br label %62

; <label>:62:                                     ; preds = %59
  call void @update_signature(i32* @main_signature, i32 65550)
  store i32 1, i32* %6, align 4
  %63 = getelementptr inbounds [31 x i8], [31 x i8]* %7, i32 0, i32 0
  %64 = getelementptr inbounds [31 x i8], [31 x i8]* %8, i32 0, i32 0
  %65 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @Func_2 to i32 (i8*, i8*, ...)*)(i8* %63, i8* %64)
  call void @verify_signature(i32* @main_signature, i32 65550)
  br label %66

; <label>:66:                                     ; preds = %62
  call void @update_signature(i32* @main_signature, i32 65551)
  %67 = icmp ne i32 %65, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  store i32 %69, i32* @Bool_Glob, align 4
  call void @verify_signature(i32* @main_signature, i32 65551)
  br label %70

; <label>:70:                                     ; preds = %82, %66
  call void @update_signature(i32* @main_signature, i32 65552)
  %71 = load i32, i32* %2, align 4
  %72 = load i32, i32* %3, align 4
  %73 = icmp slt i32 %71, %72
  call void @verify_signature(i32* @main_signature, i32 65552)
  br i1 %73, label %74, label %85

; <label>:74:                                     ; preds = %70
  call void @update_signature(i32* @main_signature, i32 65553)
  %75 = load i32, i32* %2, align 4
  %76 = mul nsw i32 5, %75
  %77 = load i32, i32* %3, align 4
  %78 = sub nsw i32 %76, %77
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %2, align 4
  %80 = load i32, i32* %3, align 4
  %81 = call i32 (i32, i32, i32*, ...) bitcast (i32 (i32, i32, i32*)* @Proc_7 to i32 (i32, i32, i32*, ...)*)(i32 %79, i32 %80, i32* %4)
  call void @verify_signature(i32* @main_signature, i32 65553)
  br label %82

; <label>:82:                                     ; preds = %74
  call void @update_signature(i32* @main_signature, i32 65554)
  %83 = load i32, i32* %2, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %2, align 4
  call void @verify_signature(i32* @main_signature, i32 65554)
  br label %70

; <label>:85:                                     ; preds = %70
  call void @update_signature(i32* @main_signature, i32 65555)
  %86 = load i32, i32* %2, align 4
  %87 = load i32, i32* %4, align 4
  %88 = call i32 (i32*, [50 x i32]*, i32, i32, ...) bitcast (i32 (i32*, [50 x i32]*, i32, i32)* @Proc_8 to i32 (i32*, [50 x i32]*, i32, i32, ...)*)(i32* getelementptr inbounds ([50 x i32], [50 x i32]* @Arr_1_Glob, i32 0, i32 0), [50 x i32]* getelementptr inbounds ([50 x [50 x i32]], [50 x [50 x i32]]* @Arr_2_Glob, i32 0, i32 0), i32 %86, i32 %87)
  call void @verify_signature(i32* @main_signature, i32 65555)
  br label %89

; <label>:89:                                     ; preds = %85
  call void @update_signature(i32* @main_signature, i32 65556)
  %90 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %91 = call i32 @Proc_1(%struct.record* %90)
  call void @verify_signature(i32* @main_signature, i32 65556)
  br label %92

; <label>:92:                                     ; preds = %89
  call void @update_signature(i32* @main_signature, i32 65557)
  store i8 65, i8* %5, align 1
  call void @verify_signature(i32* @main_signature, i32 65557)
  br label %93

; <label>:93:                                     ; preds = %115, %92
  call void @update_signature(i32* @main_signature, i32 65558)
  %94 = load i8, i8* %5, align 1
  %95 = sext i8 %94 to i32
  %96 = load i8, i8* @Ch_2_Glob, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp sle i32 %95, %97
  call void @verify_signature(i32* @main_signature, i32 65558)
  br i1 %98, label %99, label %118

; <label>:99:                                     ; preds = %93
  call void @update_signature(i32* @main_signature, i32 65559)
  %100 = load i32, i32* %6, align 4
  %101 = load i8, i8* %5, align 1
  %102 = sext i8 %101 to i32
  %103 = call i32 (i32, i32, ...) bitcast (i32 (i32, i32)* @Func_1 to i32 (i32, i32, ...)*)(i32 %102, i32 67)
  call void @verify_signature(i32* @main_signature, i32 65559)
  br label %104

; <label>:104:                                    ; preds = %99
  call void @update_signature(i32* @main_signature, i32 65560)
  %105 = icmp eq i32 %100, %103
  call void @verify_signature(i32* @main_signature, i32 65560)
  br i1 %105, label %106, label %114

; <label>:106:                                    ; preds = %104
  call void @update_signature(i32* @main_signature, i32 65561)
  %107 = call i32 (i32, i32*, ...) bitcast (i32 (i32, i32*)* @Proc_6 to i32 (i32, i32*, ...)*)(i32 0, i32* %6)
  call void @verify_signature(i32* @main_signature, i32 65561)
  br label %108

; <label>:108:                                    ; preds = %106
  call void @update_signature(i32* @main_signature, i32 65562)
  %109 = getelementptr inbounds [31 x i8], [31 x i8]* %8, i32 0, i32 0
  %110 = call i8* @strcpy(i8* %109, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0))
  call void @verify_signature(i32* @main_signature, i32 65562)
  br label %111

; <label>:111:                                    ; preds = %108
  call void @update_signature(i32* @main_signature, i32 65563)
  %112 = load i32, i32* %9, align 4
  store i32 %112, i32* %3, align 4
  %113 = load i32, i32* %9, align 4
  store i32 %113, i32* @Int_Glob, align 4
  call void @verify_signature(i32* @main_signature, i32 65563)
  br label %114

; <label>:114:                                    ; preds = %111, %104
  call void @update_signature(i32* @main_signature, i32 65564)
  call void @verify_signature(i32* @main_signature, i32 65564)
  br label %115

; <label>:115:                                    ; preds = %114
  call void @update_signature(i32* @main_signature, i32 65565)
  %116 = load i8, i8* %5, align 1
  %117 = add i8 %116, 1
  store i8 %117, i8* %5, align 1
  call void @verify_signature(i32* @main_signature, i32 65565)
  br label %93

; <label>:118:                                    ; preds = %93
  call void @update_signature(i32* @main_signature, i32 65566)
  %119 = load i32, i32* %3, align 4
  %120 = load i32, i32* %2, align 4
  %121 = mul nsw i32 %119, %120
  store i32 %121, i32* %3, align 4
  %122 = load i32, i32* %3, align 4
  %123 = load i32, i32* %4, align 4
  %124 = sdiv i32 %122, %123
  store i32 %124, i32* %2, align 4
  %125 = load i32, i32* %3, align 4
  %126 = load i32, i32* %4, align 4
  %127 = sub nsw i32 %125, %126
  %128 = mul nsw i32 7, %127
  %129 = load i32, i32* %2, align 4
  %130 = sub nsw i32 %128, %129
  store i32 %130, i32* %3, align 4
  %131 = call i32 @Proc_2(i32* %2)
  call void @verify_signature(i32* @main_signature, i32 65566)
  br label %132

; <label>:132:                                    ; preds = %118
  call void @update_signature(i32* @main_signature, i32 65567)
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %9, align 4
  call void @verify_signature(i32* @main_signature, i32 65567)
  br label %51

; <label>:135:                                    ; preds = %51
  call void @update_signature(i32* @main_signature, i32 65568)
  %136 = load i64, i64* @End_Time, align 8
  %137 = load i64, i64* @Begin_Time, align 8
  %138 = sub nsw i64 %136, %137
  store i64 %138, i64* @User_Time, align 8
  %139 = load i64, i64* @User_Time, align 8
  %140 = icmp slt i64 %139, 1000
  call void @verify_signature(i32* @main_signature, i32 65568)
  br i1 %140, label %141, label %142

; <label>:141:                                    ; preds = %135
  call void @update_signature(i32* @main_signature, i32 65569)
  call void @verify_signature(i32* @main_signature, i32 65569)
  br label %159

; <label>:142:                                    ; preds = %135
  call void @update_signature(i32* @main_signature, i32 65570)
  %143 = load i64, i64* @User_Time, align 8
  %144 = sitofp i64 %143 to float
  %145 = fpext float %144 to double
  %146 = fmul double %145, 1.000000e+06
  %147 = load i32, i32* %10, align 4
  %148 = sitofp i32 %147 to float
  %149 = fmul float 5.000000e+02, %148
  %150 = fpext float %149 to double
  %151 = fdiv double %146, %150
  %152 = fptrunc double %151 to float
  store float %152, float* @Microseconds, align 4
  %153 = load i32, i32* %10, align 4
  %154 = sitofp i32 %153 to float
  %155 = fmul float 5.000000e+02, %154
  %156 = load i64, i64* @User_Time, align 8
  %157 = sitofp i64 %156 to float
  %158 = fdiv float %155, %157
  store float %158, float* @Dhrystones_Per_Second, align 4
  call void @verify_signature(i32* @main_signature, i32 65570)
  br label %159

; <label>:159:                                    ; preds = %142, %141
  call void @update_signature(i32* @main_signature, i32 65571)
  %160 = call i32 (%struct.timeval*, i8*, ...) bitcast (i32 (...)* @gettimeofday to i32 (%struct.timeval*, i8*, ...)*)(%struct.timeval* %13, i8* null)
  call void @verify_signature(i32* @main_signature, i32 65571)
  br label %161

; <label>:161:                                    ; preds = %159
  call void @update_signature(i32* @main_signature, i32 65572)
  %162 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0))
  call void @verify_signature(i32* @main_signature, i32 65572)
  br label %163

; <label>:163:                                    ; preds = %161
  call void @update_signature(i32* @main_signature, i32 65573)
  %164 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = sub nsw i64 %165, %167
  %169 = mul nsw i64 %168, 1000000
  %170 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = sub nsw i64 %171, %173
  %175 = add nsw i64 %169, %174
  %176 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0), i64 %175)
  call void @verify_signature(i32* @main_signature, i32 65573)
  br label %177

; <label>:177:                                    ; preds = %163
  call void @update_signature(i32* @main_signature, i32 65574)
  %178 = load i32, i32* %1, align 4
  call void @verify_signature(i32* @main_signature, i32 65574)
  ret i32 %178
}

declare i32 @gettimeofday(...) #1

declare i8* @malloc(...) #1

declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Proc_5() #0 {
  call void @update_signature(i32* @Proc_5_signature, i32 327681)
  %1 = alloca i32, align 4
  store i8 65, i8* @Ch_1_Glob, align 1
  store i32 0, i32* @Bool_Glob, align 4
  %2 = load i32, i32* %1, align 4
  call void @verify_signature(i32* @Proc_5_signature, i32 327681)
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Proc_4() #0 {
  call void @update_signature(i32* @Proc_4_signature, i32 393217)
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i8, i8* @Ch_1_Glob, align 1
  %4 = sext i8 %3 to i32
  %5 = icmp eq i32 %4, 65
  %6 = zext i1 %5 to i32
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @Bool_Glob, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* @Bool_Glob, align 4
  store i8 66, i8* @Ch_2_Glob, align 1
  %10 = load i32, i32* %1, align 4
  call void @verify_signature(i32* @Proc_4_signature, i32 393217)
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Proc_1(%struct.record*) #0 {
  call void @update_signature(i32* @Proc_1_signature, i32 458753)
  %2 = alloca i32, align 4
  %3 = alloca %struct.record*, align 8
  %4 = alloca %struct.record*, align 8
  store %struct.record* %0, %struct.record** %3, align 8
  %5 = load %struct.record*, %struct.record** %3, align 8
  %6 = getelementptr inbounds %struct.record, %struct.record* %5, i32 0, i32 0
  %7 = load %struct.record*, %struct.record** %6, align 8
  store %struct.record* %7, %struct.record** %4, align 8
  %8 = load %struct.record*, %struct.record** %3, align 8
  %9 = getelementptr inbounds %struct.record, %struct.record* %8, i32 0, i32 0
  %10 = load %struct.record*, %struct.record** %9, align 8
  %11 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %12 = bitcast %struct.record* %10 to i8*
  %13 = bitcast %struct.record* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 56, i32 8, i1 false)
  call void @verify_signature(i32* @Proc_1_signature, i32 458753)
  br label %14

; <label>:14:                                     ; preds = %1
  call void @update_signature(i32* @Proc_1_signature, i32 458754)
  %15 = load %struct.record*, %struct.record** %3, align 8
  %16 = getelementptr inbounds %struct.record, %struct.record* %15, i32 0, i32 2
  %17 = bitcast %union.anon* %16 to %struct.anon*
  %18 = getelementptr inbounds %struct.anon, %struct.anon* %17, i32 0, i32 1
  store i32 5, i32* %18, align 4
  %19 = load %struct.record*, %struct.record** %3, align 8
  %20 = getelementptr inbounds %struct.record, %struct.record* %19, i32 0, i32 2
  %21 = bitcast %union.anon* %20 to %struct.anon*
  %22 = getelementptr inbounds %struct.anon, %struct.anon* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.record*, %struct.record** %4, align 8
  %25 = getelementptr inbounds %struct.record, %struct.record* %24, i32 0, i32 2
  %26 = bitcast %union.anon* %25 to %struct.anon*
  %27 = getelementptr inbounds %struct.anon, %struct.anon* %26, i32 0, i32 1
  store i32 %23, i32* %27, align 4
  %28 = load %struct.record*, %struct.record** %3, align 8
  %29 = getelementptr inbounds %struct.record, %struct.record* %28, i32 0, i32 0
  %30 = load %struct.record*, %struct.record** %29, align 8
  %31 = load %struct.record*, %struct.record** %4, align 8
  %32 = getelementptr inbounds %struct.record, %struct.record* %31, i32 0, i32 0
  store %struct.record* %30, %struct.record** %32, align 8
  %33 = load %struct.record*, %struct.record** %4, align 8
  %34 = getelementptr inbounds %struct.record, %struct.record* %33, i32 0, i32 0
  %35 = call i32 @Proc_3(%struct.record** %34)
  call void @verify_signature(i32* @Proc_1_signature, i32 458754)
  br label %36

; <label>:36:                                     ; preds = %14
  call void @update_signature(i32* @Proc_1_signature, i32 458755)
  %37 = load %struct.record*, %struct.record** %4, align 8
  %38 = getelementptr inbounds %struct.record, %struct.record* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 0
  call void @verify_signature(i32* @Proc_1_signature, i32 458755)
  br i1 %40, label %41, label %72

; <label>:41:                                     ; preds = %36
  call void @update_signature(i32* @Proc_1_signature, i32 458756)
  %42 = load %struct.record*, %struct.record** %4, align 8
  %43 = getelementptr inbounds %struct.record, %struct.record* %42, i32 0, i32 2
  %44 = bitcast %union.anon* %43 to %struct.anon*
  %45 = getelementptr inbounds %struct.anon, %struct.anon* %44, i32 0, i32 1
  store i32 6, i32* %45, align 4
  %46 = load %struct.record*, %struct.record** %3, align 8
  %47 = getelementptr inbounds %struct.record, %struct.record* %46, i32 0, i32 2
  %48 = bitcast %union.anon* %47 to %struct.anon*
  %49 = getelementptr inbounds %struct.anon, %struct.anon* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.record*, %struct.record** %4, align 8
  %52 = getelementptr inbounds %struct.record, %struct.record* %51, i32 0, i32 2
  %53 = bitcast %union.anon* %52 to %struct.anon*
  %54 = getelementptr inbounds %struct.anon, %struct.anon* %53, i32 0, i32 0
  %55 = call i32 (i32, i32*, ...) bitcast (i32 (i32, i32*)* @Proc_6 to i32 (i32, i32*, ...)*)(i32 %50, i32* %54)
  call void @verify_signature(i32* @Proc_1_signature, i32 458756)
  br label %56

; <label>:56:                                     ; preds = %41
  call void @update_signature(i32* @Proc_1_signature, i32 458757)
  %57 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %58 = getelementptr inbounds %struct.record, %struct.record* %57, i32 0, i32 0
  %59 = load %struct.record*, %struct.record** %58, align 8
  %60 = load %struct.record*, %struct.record** %4, align 8
  %61 = getelementptr inbounds %struct.record, %struct.record* %60, i32 0, i32 0
  store %struct.record* %59, %struct.record** %61, align 8
  %62 = load %struct.record*, %struct.record** %4, align 8
  %63 = getelementptr inbounds %struct.record, %struct.record* %62, i32 0, i32 2
  %64 = bitcast %union.anon* %63 to %struct.anon*
  %65 = getelementptr inbounds %struct.anon, %struct.anon* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.record*, %struct.record** %4, align 8
  %68 = getelementptr inbounds %struct.record, %struct.record* %67, i32 0, i32 2
  %69 = bitcast %union.anon* %68 to %struct.anon*
  %70 = getelementptr inbounds %struct.anon, %struct.anon* %69, i32 0, i32 1
  %71 = call i32 (i32, i32, i32*, ...) bitcast (i32 (i32, i32, i32*)* @Proc_7 to i32 (i32, i32, i32*, ...)*)(i32 %66, i32 10, i32* %70)
  call void @verify_signature(i32* @Proc_1_signature, i32 458757)
  br label %79

; <label>:72:                                     ; preds = %36
  call void @update_signature(i32* @Proc_1_signature, i32 458758)
  %73 = load %struct.record*, %struct.record** %3, align 8
  %74 = load %struct.record*, %struct.record** %3, align 8
  %75 = getelementptr inbounds %struct.record, %struct.record* %74, i32 0, i32 0
  %76 = load %struct.record*, %struct.record** %75, align 8
  %77 = bitcast %struct.record* %73 to i8*
  %78 = bitcast %struct.record* %76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %77, i8* %78, i64 56, i32 8, i1 false)
  call void @verify_signature(i32* @Proc_1_signature, i32 458758)
  br label %79

; <label>:79:                                     ; preds = %72, %56
  call void @update_signature(i32* @Proc_1_signature, i32 458759)
  %80 = load i32, i32* %2, align 4
  call void @verify_signature(i32* @Proc_1_signature, i32 458759)
  ret i32 %80
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Proc_2(i32*) #0 {
  call void @update_signature(i32* @Proc_2_signature, i32 524289)
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* %6, align 4
  %8 = add nsw i32 %7, 10
  store i32 %8, i32* %4, align 4
  call void @verify_signature(i32* @Proc_2_signature, i32 524289)
  br label %9

; <label>:9:                                      ; preds = %21, %1
  call void @update_signature(i32* @Proc_2_signature, i32 524290)
  %10 = load i8, i8* @Ch_1_Glob, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 65
  call void @verify_signature(i32* @Proc_2_signature, i32 524290)
  br i1 %12, label %13, label %20

; <label>:13:                                     ; preds = %9
  call void @update_signature(i32* @Proc_2_signature, i32 524291)
  %14 = load i32, i32* %4, align 4
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @Int_Glob, align 4
  %18 = sub nsw i32 %16, %17
  %19 = load i32*, i32** %3, align 8
  store i32 %18, i32* %19, align 4
  store i32 0, i32* %5, align 4
  call void @verify_signature(i32* @Proc_2_signature, i32 524291)
  br label %20

; <label>:20:                                     ; preds = %13, %9
  call void @update_signature(i32* @Proc_2_signature, i32 524292)
  call void @verify_signature(i32* @Proc_2_signature, i32 524292)
  br label %21

; <label>:21:                                     ; preds = %20
  call void @update_signature(i32* @Proc_2_signature, i32 524293)
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  call void @verify_signature(i32* @Proc_2_signature, i32 524293)
  br i1 %23, label %9, label %24

; <label>:24:                                     ; preds = %21
  call void @update_signature(i32* @Proc_2_signature, i32 524294)
  %25 = load i32, i32* %2, align 4
  call void @verify_signature(i32* @Proc_2_signature, i32 524294)
  ret i32 %25
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Proc_3(%struct.record**) #0 {
  call void @update_signature(i32* @Proc_3_signature, i32 720897)
  %2 = alloca i32, align 4
  %3 = alloca %struct.record**, align 8
  store %struct.record** %0, %struct.record*** %3, align 8
  %4 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %5 = icmp ne %struct.record* %4, null
  call void @verify_signature(i32* @Proc_3_signature, i32 720897)
  br i1 %5, label %6, label %11

; <label>:6:                                      ; preds = %1
  call void @update_signature(i32* @Proc_3_signature, i32 720898)
  %7 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %8 = getelementptr inbounds %struct.record, %struct.record* %7, i32 0, i32 0
  %9 = load %struct.record*, %struct.record** %8, align 8
  %10 = load %struct.record**, %struct.record*** %3, align 8
  store %struct.record* %9, %struct.record** %10, align 8
  call void @verify_signature(i32* @Proc_3_signature, i32 720898)
  br label %11

; <label>:11:                                     ; preds = %6, %1
  call void @update_signature(i32* @Proc_3_signature, i32 720899)
  %12 = load i32, i32* @Int_Glob, align 4
  %13 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %14 = getelementptr inbounds %struct.record, %struct.record* %13, i32 0, i32 2
  %15 = bitcast %union.anon* %14 to %struct.anon*
  %16 = getelementptr inbounds %struct.anon, %struct.anon* %15, i32 0, i32 1
  %17 = call i32 (i32, i32, i32*, ...) bitcast (i32 (i32, i32, i32*)* @Proc_7 to i32 (i32, i32, i32*, ...)*)(i32 10, i32 %12, i32* %16)
  call void @verify_signature(i32* @Proc_3_signature, i32 720899)
  br label %18

; <label>:18:                                     ; preds = %11
  call void @update_signature(i32* @Proc_3_signature, i32 720900)
  %19 = load i32, i32* %2, align 4
  call void @verify_signature(i32* @Proc_3_signature, i32 720900)
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Proc_6(i32, i32*) #0 {
  call void @update_signature(i32* @Proc_6_signature, i32 786433)
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32*, i32** %5, align 8
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @Func_3(i32 %8)
  call void @verify_signature(i32* @Proc_6_signature, i32 786433)
  br label %10

; <label>:10:                                     ; preds = %2
  call void @update_signature(i32* @Proc_6_signature, i32 786434)
  %11 = icmp ne i32 %9, 0
  call void @verify_signature(i32* @Proc_6_signature, i32 786434)
  br i1 %11, label %14, label %12

; <label>:12:                                     ; preds = %10
  call void @update_signature(i32* @Proc_6_signature, i32 786435)
  %13 = load i32*, i32** %5, align 8
  store i32 3, i32* %13, align 4
  call void @verify_signature(i32* @Proc_6_signature, i32 786435)
  br label %14

; <label>:14:                                     ; preds = %12, %10
  call void @update_signature(i32* @Proc_6_signature, i32 786436)
  %15 = load i32, i32* %3, align 4
  call void @verify_signature(i32* @Proc_6_signature, i32 786436)
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Func_3(i32) #0 {
  call void @update_signature(i32* @Func_3_signature, i32 851969)
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %6, 2
  call void @verify_signature(i32* @Func_3_signature, i32 851969)
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %1
  call void @update_signature(i32* @Func_3_signature, i32 851970)
  store i32 1, i32* %2, align 4
  call void @verify_signature(i32* @Func_3_signature, i32 851970)
  br label %10

; <label>:9:                                      ; preds = %1
  call void @update_signature(i32* @Func_3_signature, i32 851971)
  store i32 0, i32* %2, align 4
  call void @verify_signature(i32* @Func_3_signature, i32 851971)
  br label %10

; <label>:10:                                     ; preds = %9, %8
  call void @update_signature(i32* @Func_3_signature, i32 851972)
  %11 = load i32, i32* %2, align 4
  call void @verify_signature(i32* @Func_3_signature, i32 851972)
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Proc_7(i32, i32, i32*) #0 {
  call void @update_signature(i32* @Proc_7_signature, i32 917505)
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = add nsw i32 %9, 2
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %8, align 4
  %13 = add nsw i32 %11, %12
  %14 = load i32*, i32** %7, align 8
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %4, align 4
  call void @verify_signature(i32* @Proc_7_signature, i32 917505)
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Proc_8(i32*, [50 x i32]*, i32, i32) #0 {
  call void @update_signature(i32* @Proc_8_signature, i32 983041)
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca [50 x i32]*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store [50 x i32]* %1, [50 x i32]** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = add nsw i32 %12, 5
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %11, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  store i32 %14, i32* %18, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %11, align 4
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  store i32 %23, i32* %28, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %11, align 4
  %32 = add nsw i32 %31, 30
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  store i32 %29, i32* %34, align 4
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %10, align 4
  call void @verify_signature(i32* @Proc_8_signature, i32 983041)
  br label %36

; <label>:36:                                     ; preds = %50, %4
  call void @update_signature(i32* @Proc_8_signature, i32 983042)
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, 1
  %40 = icmp sle i32 %37, %39
  call void @verify_signature(i32* @Proc_8_signature, i32 983042)
  br i1 %40, label %41, label %53

; <label>:41:                                     ; preds = %36
  call void @update_signature(i32* @Proc_8_signature, i32 983043)
  %42 = load i32, i32* %11, align 4
  %43 = load [50 x i32]*, [50 x i32]** %7, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [50 x i32], [50 x i32]* %43, i64 %45
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [50 x i32], [50 x i32]* %46, i64 0, i64 %48
  store i32 %42, i32* %49, align 4
  call void @verify_signature(i32* @Proc_8_signature, i32 983043)
  br label %50

; <label>:50:                                     ; preds = %41
  call void @update_signature(i32* @Proc_8_signature, i32 983044)
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  call void @verify_signature(i32* @Proc_8_signature, i32 983044)
  br label %36

; <label>:53:                                     ; preds = %36
  call void @update_signature(i32* @Proc_8_signature, i32 983045)
  %54 = load [50 x i32]*, [50 x i32]** %7, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [50 x i32], [50 x i32]* %54, i64 %56
  %58 = load i32, i32* %11, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [50 x i32], [50 x i32]* %57, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load [50 x i32]*, [50 x i32]** %7, align 8
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, 20
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [50 x i32], [50 x i32]* %69, i64 %72
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [50 x i32], [50 x i32]* %73, i64 0, i64 %75
  store i32 %68, i32* %76, align 4
  store i32 5, i32* @Int_Glob, align 4
  %77 = load i32, i32* %5, align 4
  call void @verify_signature(i32* @Proc_8_signature, i32 983045)
  ret i32 %77
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Func_1(i32, i32) #0 {
  call void @update_signature(i32* @Func_1_signature, i32 1048577)
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = trunc i32 %0 to i8
  %9 = trunc i32 %1 to i8
  store i8 %8, i8* %4, align 1
  store i8 %9, i8* %5, align 1
  %10 = load i8, i8* %4, align 1
  store i8 %10, i8* %6, align 1
  %11 = load i8, i8* %6, align 1
  store i8 %11, i8* %7, align 1
  %12 = load i8, i8* %7, align 1
  %13 = sext i8 %12 to i32
  %14 = load i8, i8* %5, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %13, %15
  call void @verify_signature(i32* @Func_1_signature, i32 1048577)
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %2
  call void @update_signature(i32* @Func_1_signature, i32 1048578)
  store i32 0, i32* %3, align 4
  call void @verify_signature(i32* @Func_1_signature, i32 1048578)
  br label %20

; <label>:18:                                     ; preds = %2
  call void @update_signature(i32* @Func_1_signature, i32 1048579)
  %19 = load i8, i8* %6, align 1
  store i8 %19, i8* @Ch_1_Glob, align 1
  store i32 1, i32* %3, align 4
  call void @verify_signature(i32* @Func_1_signature, i32 1048579)
  br label %20

; <label>:20:                                     ; preds = %18, %17
  call void @update_signature(i32* @Func_1_signature, i32 1048580)
  %21 = load i32, i32* %3, align 4
  call void @verify_signature(i32* @Func_1_signature, i32 1048580)
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Func_2(i8*, i8*) #0 {
  call void @update_signature(i32* @Func_2_signature, i32 1114113)
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 2, i32* %6, align 4
  call void @verify_signature(i32* @Func_2_signature, i32 1114113)
  br label %8

; <label>:8:                                      ; preds = %31, %2
  call void @update_signature(i32* @Func_2_signature, i32 1114114)
  %9 = load i32, i32* %6, align 4
  %10 = icmp sle i32 %9, 2
  call void @verify_signature(i32* @Func_2_signature, i32 1114114)
  br i1 %10, label %11, label %32

; <label>:11:                                     ; preds = %8
  call void @update_signature(i32* @Func_2_signature, i32 1114115)
  %12 = load i8*, i8** %4, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %18, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = call i32 @Func_1(i32 %17, i32 %24)
  call void @verify_signature(i32* @Func_2_signature, i32 1114115)
  br label %26

; <label>:26:                                     ; preds = %11
  call void @update_signature(i32* @Func_2_signature, i32 1114116)
  %27 = icmp eq i32 %25, 0
  call void @verify_signature(i32* @Func_2_signature, i32 1114116)
  br i1 %27, label %28, label %31

; <label>:28:                                     ; preds = %26
  call void @update_signature(i32* @Func_2_signature, i32 1114117)
  store i8 65, i8* %7, align 1
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  call void @verify_signature(i32* @Func_2_signature, i32 1114117)
  br label %31

; <label>:31:                                     ; preds = %28, %26
  call void @update_signature(i32* @Func_2_signature, i32 1114118)
  call void @verify_signature(i32* @Func_2_signature, i32 1114118)
  br label %8

; <label>:32:                                     ; preds = %8
  call void @update_signature(i32* @Func_2_signature, i32 1114119)
  %33 = load i8, i8* %7, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp sge i32 %34, 87
  call void @verify_signature(i32* @Func_2_signature, i32 1114119)
  br i1 %35, label %36, label %41

; <label>:36:                                     ; preds = %32
  call void @update_signature(i32* @Func_2_signature, i32 1114120)
  %37 = load i8, i8* %7, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp slt i32 %38, 90
  call void @verify_signature(i32* @Func_2_signature, i32 1114120)
  br i1 %39, label %40, label %41

; <label>:40:                                     ; preds = %36
  call void @update_signature(i32* @Func_2_signature, i32 1114121)
  store i32 7, i32* %6, align 4
  call void @verify_signature(i32* @Func_2_signature, i32 1114121)
  br label %41

; <label>:41:                                     ; preds = %40, %36, %32
  call void @update_signature(i32* @Func_2_signature, i32 1114122)
  %42 = load i8, i8* %7, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 82
  call void @verify_signature(i32* @Func_2_signature, i32 1114122)
  br i1 %44, label %45, label %46

; <label>:45:                                     ; preds = %41
  call void @update_signature(i32* @Func_2_signature, i32 1114123)
  store i32 1, i32* %3, align 4
  call void @verify_signature(i32* @Func_2_signature, i32 1114123)
  br label %57

; <label>:46:                                     ; preds = %41
  call void @update_signature(i32* @Func_2_signature, i32 1114124)
  %47 = load i8*, i8** %4, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @strcmp(i8* %47, i8* %48)
  call void @verify_signature(i32* @Func_2_signature, i32 1114124)
  br label %50

; <label>:50:                                     ; preds = %46
  call void @update_signature(i32* @Func_2_signature, i32 1114125)
  %51 = icmp sgt i32 %49, 0
  call void @verify_signature(i32* @Func_2_signature, i32 1114125)
  br i1 %51, label %52, label %56

; <label>:52:                                     ; preds = %50
  call void @update_signature(i32* @Func_2_signature, i32 1114126)
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 7
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* @Int_Glob, align 4
  store i32 1, i32* %3, align 4
  call void @verify_signature(i32* @Func_2_signature, i32 1114126)
  br label %57

; <label>:56:                                     ; preds = %50
  call void @update_signature(i32* @Func_2_signature, i32 1114127)
  store i32 0, i32* %3, align 4
  call void @verify_signature(i32* @Func_2_signature, i32 1114127)
  br label %57

; <label>:57:                                     ; preds = %56, %52, %45
  call void @update_signature(i32* @Func_2_signature, i32 1114128)
  %58 = load i32, i32* %3, align 4
  call void @verify_signature(i32* @Func_2_signature, i32 1114128)
  ret i32 %58
}

declare i32 @strcmp(i8*, i8*) #1

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
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 5.0.0 (tags/RELEASE_500/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
