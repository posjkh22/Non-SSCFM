; ModuleID = './outputs/translated.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.int_sqrt = type { i32, i32 }
%struct.timeval = type { i64, i64 }

@.str = private unnamed_addr constant [21 x i8] c" [target finished!]\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c" [target] Execution Time: %ld\0A\00", align 1
@is_signature_queue_full = external global i32, align 4
@main_signature = global i32 0
@gettimeofday_signature = global i32 0
@atan_signature = global i32 0
@printf_signature = global i32 0
@rad2deg_signature = global i32 0
@deg2rad_signature = global i32 0
@SolveCubic_signature = global i32 0
@sqrt_signature = global i32 0
@acos_signature = global i32 0
@cos_signature = global i32 0
@fabs_signature = global i32 0
@pow_signature = global i32 0
@usqrt_signature = global i32 0
@llvm.memcpy.p0i8.p0i8.i64_signature = global i32 0
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
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca [3 x double], align 16
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.int_sqrt, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.timeval, align 8
  %14 = alloca %struct.timeval, align 8
  store i32 0, i32* %1, align 4
  store double 1.000000e+00, double* %2, align 8
  store double -1.050000e+01, double* %3, align 8
  store double 3.200000e+01, double* %4, align 8
  store double -3.000000e+01, double* %5, align 8
  store i64 1072497001, i64* %10, align 8
  store i64 0, i64* %12, align 8
  %15 = call i32 @gettimeofday(%struct.timeval* %13, %struct.int_sqrt* null) #5
  call void @verify_signature(i32* @main_signature, i32 65537)
  br label %16

; <label>:16:                                     ; preds = %0
  call void @update_signature(i32* @main_signature, i32 65538)
  %17 = load double, double* %2, align 8
  %18 = load double, double* %3, align 8
  %19 = load double, double* %4, align 8
  %20 = load double, double* %5, align 8
  %21 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call void @SolveCubic(double %17, double %18, double %19, double %20, i32* %8, double* %21)
  call void @verify_signature(i32* @main_signature, i32 65538)
  br label %22

; <label>:22:                                     ; preds = %16
  call void @update_signature(i32* @main_signature, i32 65539)
  store i32 0, i32* %9, align 4
  call void @verify_signature(i32* @main_signature, i32 65539)
  br label %23

; <label>:23:                                     ; preds = %28, %22
  call void @update_signature(i32* @main_signature, i32 65540)
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %24, %25
  call void @verify_signature(i32* @main_signature, i32 65540)
  br i1 %26, label %27, label %31

; <label>:27:                                     ; preds = %23
  call void @update_signature(i32* @main_signature, i32 65541)
  store double 1.000000e+00, double* %2, align 8
  call void @verify_signature(i32* @main_signature, i32 65541)
  br label %28

; <label>:28:                                     ; preds = %27
  call void @update_signature(i32* @main_signature, i32 65542)
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %9, align 4
  call void @verify_signature(i32* @main_signature, i32 65542)
  br label %23

; <label>:31:                                     ; preds = %23
  call void @update_signature(i32* @main_signature, i32 65543)
  store double -4.500000e+00, double* %3, align 8
  store double 1.700000e+01, double* %4, align 8
  store double -3.000000e+01, double* %5, align 8
  %32 = load double, double* %2, align 8
  %33 = load double, double* %3, align 8
  %34 = load double, double* %4, align 8
  %35 = load double, double* %5, align 8
  %36 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call void @SolveCubic(double %32, double %33, double %34, double %35, i32* %8, double* %36)
  call void @verify_signature(i32* @main_signature, i32 65543)
  br label %37

; <label>:37:                                     ; preds = %31
  call void @update_signature(i32* @main_signature, i32 65544)
  store i32 0, i32* %9, align 4
  call void @verify_signature(i32* @main_signature, i32 65544)
  br label %38

; <label>:38:                                     ; preds = %43, %37
  call void @update_signature(i32* @main_signature, i32 65545)
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %39, %40
  call void @verify_signature(i32* @main_signature, i32 65545)
  br i1 %41, label %42, label %46

; <label>:42:                                     ; preds = %38
  call void @update_signature(i32* @main_signature, i32 65546)
  store double 1.000000e+00, double* %2, align 8
  call void @verify_signature(i32* @main_signature, i32 65546)
  br label %43

; <label>:43:                                     ; preds = %42
  call void @update_signature(i32* @main_signature, i32 65547)
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  call void @verify_signature(i32* @main_signature, i32 65547)
  br label %38

; <label>:46:                                     ; preds = %38
  call void @update_signature(i32* @main_signature, i32 65548)
  store double -3.500000e+00, double* %3, align 8
  store double 2.200000e+01, double* %4, align 8
  store double -3.100000e+01, double* %5, align 8
  %47 = load double, double* %2, align 8
  %48 = load double, double* %3, align 8
  %49 = load double, double* %4, align 8
  %50 = load double, double* %5, align 8
  %51 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call void @SolveCubic(double %47, double %48, double %49, double %50, i32* %8, double* %51)
  call void @verify_signature(i32* @main_signature, i32 65548)
  br label %52

; <label>:52:                                     ; preds = %46
  call void @update_signature(i32* @main_signature, i32 65549)
  store i32 0, i32* %9, align 4
  call void @verify_signature(i32* @main_signature, i32 65549)
  br label %53

; <label>:53:                                     ; preds = %58, %52
  call void @update_signature(i32* @main_signature, i32 65550)
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %54, %55
  call void @verify_signature(i32* @main_signature, i32 65550)
  br i1 %56, label %57, label %61

; <label>:57:                                     ; preds = %53
  call void @update_signature(i32* @main_signature, i32 65551)
  store double 1.000000e+00, double* %2, align 8
  call void @verify_signature(i32* @main_signature, i32 65551)
  br label %58

; <label>:58:                                     ; preds = %57
  call void @update_signature(i32* @main_signature, i32 65552)
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  call void @verify_signature(i32* @main_signature, i32 65552)
  br label %53

; <label>:61:                                     ; preds = %53
  call void @update_signature(i32* @main_signature, i32 65553)
  store double -1.370000e+01, double* %3, align 8
  store double 1.000000e+00, double* %4, align 8
  store double -3.500000e+01, double* %5, align 8
  %62 = load double, double* %2, align 8
  %63 = load double, double* %3, align 8
  %64 = load double, double* %4, align 8
  %65 = load double, double* %5, align 8
  %66 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call void @SolveCubic(double %62, double %63, double %64, double %65, i32* %8, double* %66)
  call void @verify_signature(i32* @main_signature, i32 65553)
  br label %67

; <label>:67:                                     ; preds = %61
  call void @update_signature(i32* @main_signature, i32 65554)
  store i32 0, i32* %9, align 4
  call void @verify_signature(i32* @main_signature, i32 65554)
  br label %68

; <label>:68:                                     ; preds = %73, %67
  call void @update_signature(i32* @main_signature, i32 65555)
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %69, %70
  call void @verify_signature(i32* @main_signature, i32 65555)
  br i1 %71, label %72, label %76

; <label>:72:                                     ; preds = %68
  call void @update_signature(i32* @main_signature, i32 65556)
  store double 3.000000e+00, double* %2, align 8
  call void @verify_signature(i32* @main_signature, i32 65556)
  br label %73

; <label>:73:                                     ; preds = %72
  call void @update_signature(i32* @main_signature, i32 65557)
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  call void @verify_signature(i32* @main_signature, i32 65557)
  br label %68

; <label>:76:                                     ; preds = %68
  call void @update_signature(i32* @main_signature, i32 65558)
  store double 1.234000e+01, double* %3, align 8
  store double 5.000000e+00, double* %4, align 8
  store double 1.200000e+01, double* %5, align 8
  %77 = load double, double* %2, align 8
  %78 = load double, double* %3, align 8
  %79 = load double, double* %4, align 8
  %80 = load double, double* %5, align 8
  %81 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call void @SolveCubic(double %77, double %78, double %79, double %80, i32* %8, double* %81)
  call void @verify_signature(i32* @main_signature, i32 65558)
  br label %82

; <label>:82:                                     ; preds = %76
  call void @update_signature(i32* @main_signature, i32 65559)
  store i32 0, i32* %9, align 4
  call void @verify_signature(i32* @main_signature, i32 65559)
  br label %83

; <label>:83:                                     ; preds = %88, %82
  call void @update_signature(i32* @main_signature, i32 65560)
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp slt i32 %84, %85
  call void @verify_signature(i32* @main_signature, i32 65560)
  br i1 %86, label %87, label %91

; <label>:87:                                     ; preds = %83
  call void @update_signature(i32* @main_signature, i32 65561)
  store double -8.000000e+00, double* %2, align 8
  call void @verify_signature(i32* @main_signature, i32 65561)
  br label %88

; <label>:88:                                     ; preds = %87
  call void @update_signature(i32* @main_signature, i32 65562)
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  call void @verify_signature(i32* @main_signature, i32 65562)
  br label %83

; <label>:91:                                     ; preds = %83
  call void @update_signature(i32* @main_signature, i32 65563)
  store double -6.789000e+01, double* %3, align 8
  store double 6.000000e+00, double* %4, align 8
  store double -2.360000e+01, double* %5, align 8
  %92 = load double, double* %2, align 8
  %93 = load double, double* %3, align 8
  %94 = load double, double* %4, align 8
  %95 = load double, double* %5, align 8
  %96 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call void @SolveCubic(double %92, double %93, double %94, double %95, i32* %8, double* %96)
  call void @verify_signature(i32* @main_signature, i32 65563)
  br label %97

; <label>:97:                                     ; preds = %91
  call void @update_signature(i32* @main_signature, i32 65564)
  store i32 0, i32* %9, align 4
  call void @verify_signature(i32* @main_signature, i32 65564)
  br label %98

; <label>:98:                                     ; preds = %103, %97
  call void @update_signature(i32* @main_signature, i32 65565)
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp slt i32 %99, %100
  call void @verify_signature(i32* @main_signature, i32 65565)
  br i1 %101, label %102, label %106

; <label>:102:                                    ; preds = %98
  call void @update_signature(i32* @main_signature, i32 65566)
  store double 4.500000e+01, double* %2, align 8
  call void @verify_signature(i32* @main_signature, i32 65566)
  br label %103

; <label>:103:                                    ; preds = %102
  call void @update_signature(i32* @main_signature, i32 65567)
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %9, align 4
  call void @verify_signature(i32* @main_signature, i32 65567)
  br label %98

; <label>:106:                                    ; preds = %98
  call void @update_signature(i32* @main_signature, i32 65568)
  store double 8.670000e+00, double* %3, align 8
  store double 7.500000e+00, double* %4, align 8
  store double 3.400000e+01, double* %5, align 8
  %107 = load double, double* %2, align 8
  %108 = load double, double* %3, align 8
  %109 = load double, double* %4, align 8
  %110 = load double, double* %5, align 8
  %111 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call void @SolveCubic(double %107, double %108, double %109, double %110, i32* %8, double* %111)
  call void @verify_signature(i32* @main_signature, i32 65568)
  br label %112

; <label>:112:                                    ; preds = %106
  call void @update_signature(i32* @main_signature, i32 65569)
  store i32 0, i32* %9, align 4
  call void @verify_signature(i32* @main_signature, i32 65569)
  br label %113

; <label>:113:                                    ; preds = %118, %112
  call void @update_signature(i32* @main_signature, i32 65570)
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp slt i32 %114, %115
  call void @verify_signature(i32* @main_signature, i32 65570)
  br i1 %116, label %117, label %121

; <label>:117:                                    ; preds = %113
  call void @update_signature(i32* @main_signature, i32 65571)
  store double -1.200000e+01, double* %2, align 8
  call void @verify_signature(i32* @main_signature, i32 65571)
  br label %118

; <label>:118:                                    ; preds = %117
  call void @update_signature(i32* @main_signature, i32 65572)
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %9, align 4
  call void @verify_signature(i32* @main_signature, i32 65572)
  br label %113

; <label>:121:                                    ; preds = %113
  call void @update_signature(i32* @main_signature, i32 65573)
  store double -1.700000e+00, double* %3, align 8
  store double 5.300000e+00, double* %4, align 8
  store double 1.600000e+01, double* %5, align 8
  %122 = load double, double* %2, align 8
  %123 = load double, double* %3, align 8
  %124 = load double, double* %4, align 8
  %125 = load double, double* %5, align 8
  %126 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call void @SolveCubic(double %122, double %123, double %124, double %125, i32* %8, double* %126)
  call void @verify_signature(i32* @main_signature, i32 65573)
  br label %127

; <label>:127:                                    ; preds = %121
  call void @update_signature(i32* @main_signature, i32 65574)
  store i32 0, i32* %9, align 4
  call void @verify_signature(i32* @main_signature, i32 65574)
  br label %128

; <label>:128:                                    ; preds = %170, %127
  call void @update_signature(i32* @main_signature, i32 65575)
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp slt i32 %129, %130
  call void @verify_signature(i32* @main_signature, i32 65575)
  br i1 %131, label %132, label %173

; <label>:132:                                    ; preds = %128
  call void @update_signature(i32* @main_signature, i32 65576)
  store double 1.000000e+00, double* %2, align 8
  call void @verify_signature(i32* @main_signature, i32 65576)
  br label %133

; <label>:133:                                    ; preds = %166, %132
  call void @update_signature(i32* @main_signature, i32 65577)
  %134 = load double, double* %2, align 8
  %135 = fcmp olt double %134, 1.000000e+01
  call void @verify_signature(i32* @main_signature, i32 65577)
  br i1 %135, label %136, label %169

; <label>:136:                                    ; preds = %133
  call void @update_signature(i32* @main_signature, i32 65578)
  store double 1.000000e+01, double* %3, align 8
  call void @verify_signature(i32* @main_signature, i32 65578)
  br label %137

; <label>:137:                                    ; preds = %162, %136
  call void @update_signature(i32* @main_signature, i32 65579)
  %138 = load double, double* %3, align 8
  %139 = fcmp ogt double %138, 0.000000e+00
  call void @verify_signature(i32* @main_signature, i32 65579)
  br i1 %139, label %140, label %165

; <label>:140:                                    ; preds = %137
  call void @update_signature(i32* @main_signature, i32 65580)
  store double 5.000000e+00, double* %4, align 8
  call void @verify_signature(i32* @main_signature, i32 65580)
  br label %141

; <label>:141:                                    ; preds = %158, %140
  call void @update_signature(i32* @main_signature, i32 65581)
  %142 = load double, double* %4, align 8
  %143 = fcmp olt double %142, 1.500000e+01
  call void @verify_signature(i32* @main_signature, i32 65581)
  br i1 %143, label %144, label %161

; <label>:144:                                    ; preds = %141
  call void @update_signature(i32* @main_signature, i32 65582)
  store double -1.000000e+00, double* %5, align 8
  call void @verify_signature(i32* @main_signature, i32 65582)
  br label %145

; <label>:145:                                    ; preds = %154, %144
  call void @update_signature(i32* @main_signature, i32 65583)
  %146 = load double, double* %5, align 8
  %147 = fcmp ogt double %146, -5.000000e+00
  call void @verify_signature(i32* @main_signature, i32 65583)
  br i1 %147, label %148, label %157

; <label>:148:                                    ; preds = %145
  call void @update_signature(i32* @main_signature, i32 65584)
  %149 = load double, double* %2, align 8
  %150 = load double, double* %3, align 8
  %151 = load double, double* %4, align 8
  %152 = load double, double* %5, align 8
  %153 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call void @SolveCubic(double %149, double %150, double %151, double %152, i32* %8, double* %153)
  call void @verify_signature(i32* @main_signature, i32 65584)
  br label %154

; <label>:154:                                    ; preds = %148
  call void @update_signature(i32* @main_signature, i32 65585)
  %155 = load double, double* %5, align 8
  %156 = fsub double %155, 4.510000e-01
  store double %156, double* %5, align 8
  call void @verify_signature(i32* @main_signature, i32 65585)
  br label %145

; <label>:157:                                    ; preds = %145
  call void @update_signature(i32* @main_signature, i32 65586)
  call void @verify_signature(i32* @main_signature, i32 65586)
  br label %158

; <label>:158:                                    ; preds = %157
  call void @update_signature(i32* @main_signature, i32 65587)
  %159 = load double, double* %4, align 8
  %160 = fadd double %159, 6.100000e-01
  store double %160, double* %4, align 8
  call void @verify_signature(i32* @main_signature, i32 65587)
  br label %141

; <label>:161:                                    ; preds = %141
  call void @update_signature(i32* @main_signature, i32 65588)
  call void @verify_signature(i32* @main_signature, i32 65588)
  br label %162

; <label>:162:                                    ; preds = %161
  call void @update_signature(i32* @main_signature, i32 65589)
  %163 = load double, double* %3, align 8
  %164 = fsub double %163, 2.500000e-01
  store double %164, double* %3, align 8
  call void @verify_signature(i32* @main_signature, i32 65589)
  br label %137

; <label>:165:                                    ; preds = %137
  call void @update_signature(i32* @main_signature, i32 65590)
  call void @verify_signature(i32* @main_signature, i32 65590)
  br label %166

; <label>:166:                                    ; preds = %165
  call void @update_signature(i32* @main_signature, i32 65591)
  %167 = load double, double* %2, align 8
  %168 = fadd double %167, 1.000000e+00
  store double %168, double* %2, align 8
  call void @verify_signature(i32* @main_signature, i32 65591)
  br label %133

; <label>:169:                                    ; preds = %133
  call void @update_signature(i32* @main_signature, i32 65592)
  call void @verify_signature(i32* @main_signature, i32 65592)
  br label %170

; <label>:170:                                    ; preds = %169
  call void @update_signature(i32* @main_signature, i32 65593)
  %171 = load i32, i32* %9, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %9, align 4
  call void @verify_signature(i32* @main_signature, i32 65593)
  br label %128

; <label>:173:                                    ; preds = %128
  call void @update_signature(i32* @main_signature, i32 65594)
  store i32 0, i32* %9, align 4
  call void @verify_signature(i32* @main_signature, i32 65594)
  br label %174

; <label>:174:                                    ; preds = %180, %173
  call void @update_signature(i32* @main_signature, i32 65595)
  %175 = load i32, i32* %9, align 4
  %176 = icmp slt i32 %175, 100000
  call void @verify_signature(i32* @main_signature, i32 65595)
  br i1 %176, label %177, label %183

; <label>:177:                                    ; preds = %174
  call void @update_signature(i32* @main_signature, i32 65596)
  %178 = load i32, i32* %9, align 4
  %179 = sext i32 %178 to i64
  call void @usqrt(i64 %179, %struct.int_sqrt* %11)
  call void @verify_signature(i32* @main_signature, i32 65596)
  br label %180

; <label>:180:                                    ; preds = %177
  call void @update_signature(i32* @main_signature, i32 65597)
  %181 = load i32, i32* %9, align 4
  %182 = add nsw i32 %181, 2
  store i32 %182, i32* %9, align 4
  call void @verify_signature(i32* @main_signature, i32 65597)
  br label %174

; <label>:183:                                    ; preds = %174
  call void @update_signature(i32* @main_signature, i32 65598)
  store i64 1072497001, i64* %10, align 8
  call void @verify_signature(i32* @main_signature, i32 65598)
  br label %184

; <label>:184:                                    ; preds = %189, %183
  call void @update_signature(i32* @main_signature, i32 65599)
  %185 = load i64, i64* %10, align 8
  %186 = icmp ult i64 %185, 1072513385
  call void @verify_signature(i32* @main_signature, i32 65599)
  br i1 %186, label %187, label %192

; <label>:187:                                    ; preds = %184
  call void @update_signature(i32* @main_signature, i32 65600)
  %188 = load i64, i64* %10, align 8
  call void @usqrt(i64 %188, %struct.int_sqrt* %11)
  call void @verify_signature(i32* @main_signature, i32 65600)
  br label %189

; <label>:189:                                    ; preds = %187
  call void @update_signature(i32* @main_signature, i32 65601)
  %190 = load i64, i64* %10, align 8
  %191 = add i64 %190, 1
  store i64 %191, i64* %10, align 8
  call void @verify_signature(i32* @main_signature, i32 65601)
  br label %184

; <label>:192:                                    ; preds = %184
  call void @update_signature(i32* @main_signature, i32 65602)
  store double 0.000000e+00, double* %7, align 8
  call void @verify_signature(i32* @main_signature, i32 65602)
  br label %193

; <label>:193:                                    ; preds = %203, %192
  call void @update_signature(i32* @main_signature, i32 65603)
  %194 = load double, double* %7, align 8
  %195 = fcmp ole double %194, 3.600000e+02
  call void @verify_signature(i32* @main_signature, i32 65603)
  br i1 %195, label %196, label %206

; <label>:196:                                    ; preds = %193
  call void @update_signature(i32* @main_signature, i32 65604)
  %197 = load double, double* %7, align 8
  %198 = call double @atan(double 1.000000e+00) #5
  call void @verify_signature(i32* @main_signature, i32 65604)
  br label %199

; <label>:199:                                    ; preds = %196
  call void @update_signature(i32* @main_signature, i32 65605)
  %200 = fmul double 4.000000e+00, %198
  %201 = fmul double %197, %200
  %202 = fdiv double %201, 1.800000e+02
  call void @verify_signature(i32* @main_signature, i32 65605)
  br label %203

; <label>:203:                                    ; preds = %199
  call void @update_signature(i32* @main_signature, i32 65606)
  %204 = load double, double* %7, align 8
  %205 = fadd double %204, 1.000000e-03
  store double %205, double* %7, align 8
  call void @verify_signature(i32* @main_signature, i32 65606)
  br label %193

; <label>:206:                                    ; preds = %193
  call void @update_signature(i32* @main_signature, i32 65607)
  store double 0.000000e+00, double* %7, align 8
  call void @verify_signature(i32* @main_signature, i32 65607)
  br label %207

; <label>:207:                                    ; preds = %224, %206
  call void @update_signature(i32* @main_signature, i32 65608)
  %208 = load double, double* %7, align 8
  %209 = call double @atan(double 1.000000e+00) #5
  call void @verify_signature(i32* @main_signature, i32 65608)
  br label %210

; <label>:210:                                    ; preds = %207
  call void @update_signature(i32* @main_signature, i32 65609)
  %211 = fmul double 4.000000e+00, %209
  %212 = fmul double 2.000000e+00, %211
  %213 = fadd double %212, 0x3EB0C6F7A0B5ED8D
  %214 = fcmp ole double %208, %213
  call void @verify_signature(i32* @main_signature, i32 65609)
  br i1 %214, label %215, label %229

; <label>:215:                                    ; preds = %210
  call void @update_signature(i32* @main_signature, i32 65610)
  %216 = load double, double* %7, align 8
  %217 = fmul double %216, 1.800000e+02
  %218 = call double @atan(double 1.000000e+00) #5
  call void @verify_signature(i32* @main_signature, i32 65610)
  br label %219

; <label>:219:                                    ; preds = %215
  call void @update_signature(i32* @main_signature, i32 65611)
  %220 = fmul double 4.000000e+00, %218
  %221 = fdiv double %217, %220
  call void @verify_signature(i32* @main_signature, i32 65611)
  br label %222

; <label>:222:                                    ; preds = %219
  call void @update_signature(i32* @main_signature, i32 65612)
  %223 = call double @atan(double 1.000000e+00) #5
  call void @verify_signature(i32* @main_signature, i32 65612)
  br label %224

; <label>:224:                                    ; preds = %222
  call void @update_signature(i32* @main_signature, i32 65613)
  %225 = fmul double 4.000000e+00, %223
  %226 = fdiv double %225, 5.760000e+03
  %227 = load double, double* %7, align 8
  %228 = fadd double %227, %226
  store double %228, double* %7, align 8
  call void @verify_signature(i32* @main_signature, i32 65613)
  br label %207

; <label>:229:                                    ; preds = %210
  call void @update_signature(i32* @main_signature, i32 65614)
  %230 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0))
  call void @verify_signature(i32* @main_signature, i32 65614)
  br label %231

; <label>:231:                                    ; preds = %229
  call void @update_signature(i32* @main_signature, i32 65615)
  %232 = call i32 @gettimeofday(%struct.timeval* %14, %struct.int_sqrt* null) #5
  call void @verify_signature(i32* @main_signature, i32 65615)
  br label %233

; <label>:233:                                    ; preds = %231
  call void @update_signature(i32* @main_signature, i32 65616)
  %234 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = sub nsw i64 %235, %237
  %239 = mul nsw i64 %238, 1000000
  %240 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = sub nsw i64 %241, %243
  %245 = add nsw i64 %239, %244
  %246 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0), i64 %245)
  call void @verify_signature(i32* @main_signature, i32 65616)
  br label %247

; <label>:247:                                    ; preds = %233
  call void @update_signature(i32* @main_signature, i32 65617)
  store i32 1, i32* @is_signature_queue_full, align 4
  call void @verify_signature(i32* @main_signature, i32 65617)
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.int_sqrt*) #1

; Function Attrs: nounwind
declare double @atan(double) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define double @rad2deg(double) #0 {
  call void @update_signature(i32* @rad2deg_signature, i32 327681)
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  %3 = load double, double* %2, align 8
  %4 = fmul double 1.800000e+02, %3
  %5 = call double @atan(double 1.000000e+00) #5
  call void @verify_signature(i32* @rad2deg_signature, i32 327681)
  br label %6

; <label>:6:                                      ; preds = %1
  call void @update_signature(i32* @rad2deg_signature, i32 327682)
  %7 = fmul double 4.000000e+00, %5
  %8 = fdiv double %4, %7
  call void @verify_signature(i32* @rad2deg_signature, i32 327682)
  ret double %8
}

; Function Attrs: noinline nounwind optnone uwtable
define double @deg2rad(double) #0 {
  call void @update_signature(i32* @deg2rad_signature, i32 393217)
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  %3 = call double @atan(double 1.000000e+00) #5
  call void @verify_signature(i32* @deg2rad_signature, i32 393217)
  br label %4

; <label>:4:                                      ; preds = %1
  call void @update_signature(i32* @deg2rad_signature, i32 393218)
  %5 = fmul double 4.000000e+00, %3
  %6 = load double, double* %2, align 8
  %7 = fmul double %5, %6
  %8 = fdiv double %7, 1.800000e+02
  call void @verify_signature(i32* @deg2rad_signature, i32 393218)
  ret double %8
}

; Function Attrs: noinline nounwind optnone uwtable
define void @SolveCubic(double, double, double, double, i32*, double*) #0 {
  call void @update_signature(i32* @SolveCubic_signature, i32 458753)
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32*, align 8
  %12 = alloca double*, align 8
  %13 = alloca x86_fp80, align 16
  %14 = alloca x86_fp80, align 16
  %15 = alloca x86_fp80, align 16
  %16 = alloca x86_fp80, align 16
  %17 = alloca x86_fp80, align 16
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  store double %0, double* %7, align 8
  store double %1, double* %8, align 8
  store double %2, double* %9, align 8
  store double %3, double* %10, align 8
  store i32* %4, i32** %11, align 8
  store double* %5, double** %12, align 8
  %20 = load double, double* %8, align 8
  %21 = load double, double* %7, align 8
  %22 = fdiv double %20, %21
  %23 = fpext double %22 to x86_fp80
  store x86_fp80 %23, x86_fp80* %13, align 16
  %24 = load double, double* %9, align 8
  %25 = load double, double* %7, align 8
  %26 = fdiv double %24, %25
  %27 = fpext double %26 to x86_fp80
  store x86_fp80 %27, x86_fp80* %14, align 16
  %28 = load double, double* %10, align 8
  %29 = load double, double* %7, align 8
  %30 = fdiv double %28, %29
  %31 = fpext double %30 to x86_fp80
  store x86_fp80 %31, x86_fp80* %15, align 16
  %32 = load x86_fp80, x86_fp80* %13, align 16
  %33 = load x86_fp80, x86_fp80* %13, align 16
  %34 = fmul x86_fp80 %32, %33
  %35 = load x86_fp80, x86_fp80* %14, align 16
  %36 = fmul x86_fp80 0xK4000C000000000000000, %35
  %37 = fsub x86_fp80 %34, %36
  %38 = fdiv x86_fp80 %37, 0xK40029000000000000000
  store x86_fp80 %38, x86_fp80* %16, align 16
  %39 = load x86_fp80, x86_fp80* %13, align 16
  %40 = fmul x86_fp80 0xK40008000000000000000, %39
  %41 = load x86_fp80, x86_fp80* %13, align 16
  %42 = fmul x86_fp80 %40, %41
  %43 = load x86_fp80, x86_fp80* %13, align 16
  %44 = fmul x86_fp80 %42, %43
  %45 = load x86_fp80, x86_fp80* %13, align 16
  %46 = fmul x86_fp80 0xK40029000000000000000, %45
  %47 = load x86_fp80, x86_fp80* %14, align 16
  %48 = fmul x86_fp80 %46, %47
  %49 = fsub x86_fp80 %44, %48
  %50 = load x86_fp80, x86_fp80* %15, align 16
  %51 = fmul x86_fp80 0xK4003D800000000000000, %50
  %52 = fadd x86_fp80 %49, %51
  %53 = fdiv x86_fp80 %52, 0xK4004D800000000000000
  store x86_fp80 %53, x86_fp80* %17, align 16
  %54 = load x86_fp80, x86_fp80* %17, align 16
  %55 = load x86_fp80, x86_fp80* %17, align 16
  %56 = fmul x86_fp80 %54, %55
  %57 = load x86_fp80, x86_fp80* %16, align 16
  %58 = load x86_fp80, x86_fp80* %16, align 16
  %59 = fmul x86_fp80 %57, %58
  %60 = load x86_fp80, x86_fp80* %16, align 16
  %61 = fmul x86_fp80 %59, %60
  %62 = fsub x86_fp80 %56, %61
  %63 = fptrunc x86_fp80 %62 to double
  store double %63, double* %18, align 8
  %64 = load double, double* %18, align 8
  %65 = fcmp ole double %64, 0.000000e+00
  call void @verify_signature(i32* @SolveCubic_signature, i32 458753)
  br i1 %65, label %66, label %143

; <label>:66:                                     ; preds = %6
  call void @update_signature(i32* @SolveCubic_signature, i32 458754)
  %67 = load i32*, i32** %11, align 8
  store i32 3, i32* %67, align 4
  %68 = load x86_fp80, x86_fp80* %17, align 16
  %69 = load x86_fp80, x86_fp80* %16, align 16
  %70 = load x86_fp80, x86_fp80* %16, align 16
  %71 = fmul x86_fp80 %69, %70
  %72 = load x86_fp80, x86_fp80* %16, align 16
  %73 = fmul x86_fp80 %71, %72
  %74 = fptrunc x86_fp80 %73 to double
  %75 = call double @sqrt(double %74) #5
  call void @verify_signature(i32* @SolveCubic_signature, i32 458754)
  br label %76

; <label>:76:                                     ; preds = %66
  call void @update_signature(i32* @SolveCubic_signature, i32 458755)
  %77 = fpext double %75 to x86_fp80
  %78 = fdiv x86_fp80 %68, %77
  %79 = fptrunc x86_fp80 %78 to double
  %80 = call double @acos(double %79) #5
  call void @verify_signature(i32* @SolveCubic_signature, i32 458755)
  br label %81

; <label>:81:                                     ; preds = %76
  call void @update_signature(i32* @SolveCubic_signature, i32 458756)
  store double %80, double* %19, align 8
  %82 = load x86_fp80, x86_fp80* %16, align 16
  %83 = fptrunc x86_fp80 %82 to double
  %84 = call double @sqrt(double %83) #5
  call void @verify_signature(i32* @SolveCubic_signature, i32 458756)
  br label %85

; <label>:85:                                     ; preds = %81
  call void @update_signature(i32* @SolveCubic_signature, i32 458757)
  %86 = fmul double -2.000000e+00, %84
  %87 = load double, double* %19, align 8
  %88 = fdiv double %87, 3.000000e+00
  %89 = call double @cos(double %88) #5
  call void @verify_signature(i32* @SolveCubic_signature, i32 458757)
  br label %90

; <label>:90:                                     ; preds = %85
  call void @update_signature(i32* @SolveCubic_signature, i32 458758)
  %91 = fmul double %86, %89
  %92 = fpext double %91 to x86_fp80
  %93 = load x86_fp80, x86_fp80* %13, align 16
  %94 = fdiv x86_fp80 %93, 0xK4000C000000000000000
  %95 = fsub x86_fp80 %92, %94
  %96 = fptrunc x86_fp80 %95 to double
  %97 = load double*, double** %12, align 8
  %98 = getelementptr inbounds double, double* %97, i64 0
  store double %96, double* %98, align 8
  %99 = load x86_fp80, x86_fp80* %16, align 16
  %100 = fptrunc x86_fp80 %99 to double
  %101 = call double @sqrt(double %100) #5
  call void @verify_signature(i32* @SolveCubic_signature, i32 458758)
  br label %102

; <label>:102:                                    ; preds = %90
  call void @update_signature(i32* @SolveCubic_signature, i32 458759)
  %103 = fmul double -2.000000e+00, %101
  %104 = load double, double* %19, align 8
  %105 = call double @atan(double 1.000000e+00) #5
  call void @verify_signature(i32* @SolveCubic_signature, i32 458759)
  br label %106

; <label>:106:                                    ; preds = %102
  call void @update_signature(i32* @SolveCubic_signature, i32 458760)
  %107 = fmul double 4.000000e+00, %105
  %108 = fmul double 2.000000e+00, %107
  %109 = fadd double %104, %108
  %110 = fdiv double %109, 3.000000e+00
  %111 = call double @cos(double %110) #5
  call void @verify_signature(i32* @SolveCubic_signature, i32 458760)
  br label %112

; <label>:112:                                    ; preds = %106
  call void @update_signature(i32* @SolveCubic_signature, i32 458761)
  %113 = fmul double %103, %111
  %114 = fpext double %113 to x86_fp80
  %115 = load x86_fp80, x86_fp80* %13, align 16
  %116 = fdiv x86_fp80 %115, 0xK4000C000000000000000
  %117 = fsub x86_fp80 %114, %116
  %118 = fptrunc x86_fp80 %117 to double
  %119 = load double*, double** %12, align 8
  %120 = getelementptr inbounds double, double* %119, i64 1
  store double %118, double* %120, align 8
  %121 = load x86_fp80, x86_fp80* %16, align 16
  %122 = fptrunc x86_fp80 %121 to double
  %123 = call double @sqrt(double %122) #5
  call void @verify_signature(i32* @SolveCubic_signature, i32 458761)
  br label %124

; <label>:124:                                    ; preds = %112
  call void @update_signature(i32* @SolveCubic_signature, i32 458762)
  %125 = fmul double -2.000000e+00, %123
  %126 = load double, double* %19, align 8
  %127 = call double @atan(double 1.000000e+00) #5
  call void @verify_signature(i32* @SolveCubic_signature, i32 458762)
  br label %128

; <label>:128:                                    ; preds = %124
  call void @update_signature(i32* @SolveCubic_signature, i32 458763)
  %129 = fmul double 4.000000e+00, %127
  %130 = fmul double 4.000000e+00, %129
  %131 = fadd double %126, %130
  %132 = fdiv double %131, 3.000000e+00
  %133 = call double @cos(double %132) #5
  call void @verify_signature(i32* @SolveCubic_signature, i32 458763)
  br label %134

; <label>:134:                                    ; preds = %128
  call void @update_signature(i32* @SolveCubic_signature, i32 458764)
  %135 = fmul double %125, %133
  %136 = fpext double %135 to x86_fp80
  %137 = load x86_fp80, x86_fp80* %13, align 16
  %138 = fdiv x86_fp80 %137, 0xK4000C000000000000000
  %139 = fsub x86_fp80 %136, %138
  %140 = fptrunc x86_fp80 %139 to double
  %141 = load double*, double** %12, align 8
  %142 = getelementptr inbounds double, double* %141, i64 2
  store double %140, double* %142, align 8
  call void @verify_signature(i32* @SolveCubic_signature, i32 458764)
  br label %186

; <label>:143:                                    ; preds = %6
  call void @update_signature(i32* @SolveCubic_signature, i32 458765)
  %144 = load i32*, i32** %11, align 8
  store i32 1, i32* %144, align 4
  %145 = load double, double* %18, align 8
  %146 = call double @sqrt(double %145) #5
  call void @verify_signature(i32* @SolveCubic_signature, i32 458765)
  br label %147

; <label>:147:                                    ; preds = %143
  call void @update_signature(i32* @SolveCubic_signature, i32 458766)
  %148 = load x86_fp80, x86_fp80* %17, align 16
  %149 = fptrunc x86_fp80 %148 to double
  %150 = call double @fabs(double %149) #6
  call void @verify_signature(i32* @SolveCubic_signature, i32 458766)
  br label %151

; <label>:151:                                    ; preds = %147
  call void @update_signature(i32* @SolveCubic_signature, i32 458767)
  %152 = fadd double %146, %150
  %153 = call double @pow(double %152, double 0x3FD5555555555555) #5
  call void @verify_signature(i32* @SolveCubic_signature, i32 458767)
  br label %154

; <label>:154:                                    ; preds = %151
  call void @update_signature(i32* @SolveCubic_signature, i32 458768)
  %155 = load double*, double** %12, align 8
  %156 = getelementptr inbounds double, double* %155, i64 0
  store double %153, double* %156, align 8
  %157 = load x86_fp80, x86_fp80* %16, align 16
  %158 = load double*, double** %12, align 8
  %159 = getelementptr inbounds double, double* %158, i64 0
  %160 = load double, double* %159, align 8
  %161 = fpext double %160 to x86_fp80
  %162 = fdiv x86_fp80 %157, %161
  %163 = load double*, double** %12, align 8
  %164 = getelementptr inbounds double, double* %163, i64 0
  %165 = load double, double* %164, align 8
  %166 = fpext double %165 to x86_fp80
  %167 = fadd x86_fp80 %166, %162
  %168 = fptrunc x86_fp80 %167 to double
  store double %168, double* %164, align 8
  %169 = load x86_fp80, x86_fp80* %17, align 16
  %170 = fcmp olt x86_fp80 %169, 0xK00000000000000000000
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, i32 1, i32 -1
  %173 = sitofp i32 %172 to double
  %174 = load double*, double** %12, align 8
  %175 = getelementptr inbounds double, double* %174, i64 0
  %176 = load double, double* %175, align 8
  %177 = fmul double %176, %173
  store double %177, double* %175, align 8
  %178 = load x86_fp80, x86_fp80* %13, align 16
  %179 = fdiv x86_fp80 %178, 0xK4000C000000000000000
  %180 = load double*, double** %12, align 8
  %181 = getelementptr inbounds double, double* %180, i64 0
  %182 = load double, double* %181, align 8
  %183 = fpext double %182 to x86_fp80
  %184 = fsub x86_fp80 %183, %179
  %185 = fptrunc x86_fp80 %184 to double
  store double %185, double* %181, align 8
  call void @verify_signature(i32* @SolveCubic_signature, i32 458768)
  br label %186

; <label>:186:                                    ; preds = %154, %134
  call void @update_signature(i32* @SolveCubic_signature, i32 458769)
  call void @verify_signature(i32* @SolveCubic_signature, i32 458769)
  ret void
}

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: nounwind
declare double @acos(double) #1

; Function Attrs: nounwind
declare double @cos(double) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind
declare double @pow(double, double) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @usqrt(i64, %struct.int_sqrt*) #0 {
  call void @update_signature(i32* @usqrt_signature, i32 851969)
  %3 = alloca i64, align 8
  %4 = alloca %struct.int_sqrt*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.int_sqrt* %1, %struct.int_sqrt** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  call void @verify_signature(i32* @usqrt_signature, i32 851969)
  br label %9

; <label>:9:                                      ; preds = %36, %2
  call void @update_signature(i32* @usqrt_signature, i32 851970)
  %10 = load i32, i32* %8, align 4
  %11 = icmp slt i32 %10, 32
  call void @verify_signature(i32* @usqrt_signature, i32 851970)
  br i1 %11, label %12, label %39

; <label>:12:                                     ; preds = %9
  call void @update_signature(i32* @usqrt_signature, i32 851971)
  %13 = load i64, i64* %6, align 8
  %14 = shl i64 %13, 2
  %15 = load i64, i64* %3, align 8
  %16 = and i64 %15, 3221225472
  %17 = lshr i64 %16, 30
  %18 = add i64 %14, %17
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %3, align 8
  %20 = shl i64 %19, 2
  store i64 %20, i64* %3, align 8
  %21 = load i64, i64* %5, align 8
  %22 = shl i64 %21, 1
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = shl i64 %23, 1
  %25 = add i64 %24, 1
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp uge i64 %26, %27
  call void @verify_signature(i32* @usqrt_signature, i32 851971)
  br i1 %28, label %29, label %35

; <label>:29:                                     ; preds = %12
  call void @update_signature(i32* @usqrt_signature, i32 851972)
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %6, align 8
  %32 = sub i64 %31, %30
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %5, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %5, align 8
  call void @verify_signature(i32* @usqrt_signature, i32 851972)
  br label %35

; <label>:35:                                     ; preds = %29, %12
  call void @update_signature(i32* @usqrt_signature, i32 851973)
  call void @verify_signature(i32* @usqrt_signature, i32 851973)
  br label %36

; <label>:36:                                     ; preds = %35
  call void @update_signature(i32* @usqrt_signature, i32 851974)
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  call void @verify_signature(i32* @usqrt_signature, i32 851974)
  br label %9

; <label>:39:                                     ; preds = %9
  call void @update_signature(i32* @usqrt_signature, i32 851975)
  %40 = load %struct.int_sqrt*, %struct.int_sqrt** %4, align 8
  %41 = bitcast %struct.int_sqrt* %40 to i8*
  %42 = bitcast i64* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 8, i32 4, i1 false)
  call void @verify_signature(i32* @usqrt_signature, i32 851975)
  br label %43

; <label>:43:                                     ; preds = %39
  call void @update_signature(i32* @usqrt_signature, i32 851976)
  call void @verify_signature(i32* @usqrt_signature, i32 851976)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

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
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }

!llvm.ident = !{!0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 5.0.0 (tags/RELEASE_500/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
