; ModuleID = './outputs/translated.bc'
source_filename = "whetstone.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@T = common global double 0.000000e+00, align 8
@T1 = common global double 0.000000e+00, align 8
@T2 = common global double 0.000000e+00, align 8
@E1 = common global [5 x double] zeroinitializer, align 16
@J = common global i32 0, align 4
@K = common global i32 0, align 4
@L = common global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c" [target has finished!]\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c" [target] %ld\0A\00", align 1
@main_signature = global i32 0
@gettimeofday_signature = global i32 0
@PA_signature = global i32 0
@atan_signature = global i32 0
@sin_signature = global i32 0
@cos_signature = global i32 0
@P3_signature = global i32 0
@P0_signature = global i32 0
@sqrt_signature = global i32 0
@exp_signature = global i32 0
@log_signature = global i32 0
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
define i32 @main() #0 {
  call void @update_signature(i32* @main_signature, i32 65537)
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca float, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.timeval, align 8
  %29 = alloca %struct.timeval, align 8
  store i32 0, i32* %1, align 4
  store i64 100, i64* %23, align 8
  store i32 0, i32* %27, align 4
  %30 = call i32 @gettimeofday(%struct.timeval* %28, %struct.timezone* null) #3
  call void @verify_signature(i32* @main_signature, i32 65537)
  br label %31

; <label>:31:                                     ; preds = %0
  call void @update_signature(i32* @main_signature, i32 65538)
  store i32 1, i32* %21, align 4
  call void @verify_signature(i32* @main_signature, i32 65538)
  br label %32

; <label>:32:                                     ; preds = %31
  call void @update_signature(i32* @main_signature, i32 65539)
  store double 4.999750e-01, double* @T, align 8
  store double 5.002500e-01, double* @T1, align 8
  store double 2.000000e+00, double* @T2, align 8
  %33 = load i64, i64* %23, align 8
  store i64 %33, i64* %20, align 8
  store i32 1, i32* %21, align 4
  store i32 1, i32* %22, align 4
  call void @verify_signature(i32* @main_signature, i32 65539)
  br label %34

; <label>:34:                                     ; preds = %356, %32
  call void @update_signature(i32* @main_signature, i32 65540)
  store i64 0, i64* %3, align 8
  %35 = load i64, i64* %20, align 8
  %36 = mul nsw i64 12, %35
  store i64 %36, i64* %4, align 8
  %37 = load i64, i64* %20, align 8
  %38 = mul nsw i64 14, %37
  store i64 %38, i64* %5, align 8
  %39 = load i64, i64* %20, align 8
  %40 = mul nsw i64 345, %39
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %20, align 8
  %42 = mul nsw i64 210, %41
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* %20, align 8
  %44 = mul nsw i64 32, %43
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %20, align 8
  %46 = mul nsw i64 899, %45
  store i64 %46, i64* %9, align 8
  %47 = load i64, i64* %20, align 8
  %48 = mul nsw i64 616, %47
  store i64 %48, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %49 = load i64, i64* %20, align 8
  %50 = mul nsw i64 93, %49
  store i64 %50, i64* %12, align 8
  store double 1.000000e+00, double* %13, align 8
  store double -1.000000e+00, double* %14, align 8
  store double -1.000000e+00, double* %15, align 8
  store double -1.000000e+00, double* %16, align 8
  store i64 1, i64* %2, align 8
  call void @verify_signature(i32* @main_signature, i32 65540)
  br label %51

; <label>:51:                                     ; preds = %93, %34
  call void @update_signature(i32* @main_signature, i32 65541)
  %52 = load i64, i64* %2, align 8
  %53 = load i64, i64* %3, align 8
  %54 = icmp sle i64 %52, %53
  call void @verify_signature(i32* @main_signature, i32 65541)
  br i1 %54, label %55, label %96

; <label>:55:                                     ; preds = %51
  call void @update_signature(i32* @main_signature, i32 65542)
  %56 = load double, double* %13, align 8
  %57 = load double, double* %14, align 8
  %58 = fadd double %56, %57
  %59 = load double, double* %15, align 8
  %60 = fadd double %58, %59
  %61 = load double, double* %16, align 8
  %62 = fsub double %60, %61
  %63 = load double, double* @T, align 8
  %64 = fmul double %62, %63
  store double %64, double* %13, align 8
  %65 = load double, double* %13, align 8
  %66 = load double, double* %14, align 8
  %67 = fadd double %65, %66
  %68 = load double, double* %15, align 8
  %69 = fsub double %67, %68
  %70 = load double, double* %16, align 8
  %71 = fadd double %69, %70
  %72 = load double, double* @T, align 8
  %73 = fmul double %71, %72
  store double %73, double* %14, align 8
  %74 = load double, double* %13, align 8
  %75 = load double, double* %14, align 8
  %76 = fsub double %74, %75
  %77 = load double, double* %15, align 8
  %78 = fadd double %76, %77
  %79 = load double, double* %16, align 8
  %80 = fadd double %78, %79
  %81 = load double, double* @T, align 8
  %82 = fmul double %80, %81
  store double %82, double* %15, align 8
  %83 = load double, double* %13, align 8
  %84 = fsub double -0.000000e+00, %83
  %85 = load double, double* %14, align 8
  %86 = fadd double %84, %85
  %87 = load double, double* %15, align 8
  %88 = fadd double %86, %87
  %89 = load double, double* %16, align 8
  %90 = fadd double %88, %89
  %91 = load double, double* @T, align 8
  %92 = fmul double %90, %91
  store double %92, double* %16, align 8
  call void @verify_signature(i32* @main_signature, i32 65542)
  br label %93

; <label>:93:                                     ; preds = %55
  call void @update_signature(i32* @main_signature, i32 65543)
  %94 = load i64, i64* %2, align 8
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* %2, align 8
  call void @verify_signature(i32* @main_signature, i32 65543)
  br label %51

; <label>:96:                                     ; preds = %51
  call void @update_signature(i32* @main_signature, i32 65544)
  store double 1.000000e+00, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 1), align 8
  store double -1.000000e+00, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 2), align 16
  store double -1.000000e+00, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 3), align 8
  store double -1.000000e+00, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 4), align 16
  store i64 1, i64* %2, align 8
  call void @verify_signature(i32* @main_signature, i32 65544)
  br label %97

; <label>:97:                                     ; preds = %139, %96
  call void @update_signature(i32* @main_signature, i32 65545)
  %98 = load i64, i64* %2, align 8
  %99 = load i64, i64* %4, align 8
  %100 = icmp sle i64 %98, %99
  call void @verify_signature(i32* @main_signature, i32 65545)
  br i1 %100, label %101, label %142

; <label>:101:                                    ; preds = %97
  call void @update_signature(i32* @main_signature, i32 65546)
  %102 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 1), align 8
  %103 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 2), align 16
  %104 = fadd double %102, %103
  %105 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 3), align 8
  %106 = fadd double %104, %105
  %107 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 4), align 16
  %108 = fsub double %106, %107
  %109 = load double, double* @T, align 8
  %110 = fmul double %108, %109
  store double %110, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 1), align 8
  %111 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 1), align 8
  %112 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 2), align 16
  %113 = fadd double %111, %112
  %114 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 3), align 8
  %115 = fsub double %113, %114
  %116 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 4), align 16
  %117 = fadd double %115, %116
  %118 = load double, double* @T, align 8
  %119 = fmul double %117, %118
  store double %119, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 2), align 16
  %120 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 1), align 8
  %121 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 2), align 16
  %122 = fsub double %120, %121
  %123 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 3), align 8
  %124 = fadd double %122, %123
  %125 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 4), align 16
  %126 = fadd double %124, %125
  %127 = load double, double* @T, align 8
  %128 = fmul double %126, %127
  store double %128, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 3), align 8
  %129 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 1), align 8
  %130 = fsub double -0.000000e+00, %129
  %131 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 2), align 16
  %132 = fadd double %130, %131
  %133 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 3), align 8
  %134 = fadd double %132, %133
  %135 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 4), align 16
  %136 = fadd double %134, %135
  %137 = load double, double* @T, align 8
  %138 = fmul double %136, %137
  store double %138, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 4), align 16
  call void @verify_signature(i32* @main_signature, i32 65546)
  br label %139

; <label>:139:                                    ; preds = %101
  call void @update_signature(i32* @main_signature, i32 65547)
  %140 = load i64, i64* %2, align 8
  %141 = add nsw i64 %140, 1
  store i64 %141, i64* %2, align 8
  call void @verify_signature(i32* @main_signature, i32 65547)
  br label %97

; <label>:142:                                    ; preds = %97
  call void @update_signature(i32* @main_signature, i32 65548)
  store i64 1, i64* %2, align 8
  call void @verify_signature(i32* @main_signature, i32 65548)
  br label %143

; <label>:143:                                    ; preds = %148, %142
  call void @update_signature(i32* @main_signature, i32 65549)
  %144 = load i64, i64* %2, align 8
  %145 = load i64, i64* %5, align 8
  %146 = icmp sle i64 %144, %145
  call void @verify_signature(i32* @main_signature, i32 65549)
  br i1 %146, label %147, label %151

; <label>:147:                                    ; preds = %143
  call void @update_signature(i32* @main_signature, i32 65550)
  call void @PA(double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i32 0, i32 0))
  call void @verify_signature(i32* @main_signature, i32 65550)
  br label %148

; <label>:148:                                    ; preds = %147
  call void @update_signature(i32* @main_signature, i32 65551)
  %149 = load i64, i64* %2, align 8
  %150 = add nsw i64 %149, 1
  store i64 %150, i64* %2, align 8
  call void @verify_signature(i32* @main_signature, i32 65551)
  br label %143

; <label>:151:                                    ; preds = %143
  call void @update_signature(i32* @main_signature, i32 65552)
  store i32 1, i32* @J, align 4
  store i64 1, i64* %2, align 8
  call void @verify_signature(i32* @main_signature, i32 65552)
  br label %152

; <label>:152:                                    ; preds = %172, %151
  call void @update_signature(i32* @main_signature, i32 65553)
  %153 = load i64, i64* %2, align 8
  %154 = load i64, i64* %6, align 8
  %155 = icmp sle i64 %153, %154
  call void @verify_signature(i32* @main_signature, i32 65553)
  br i1 %155, label %156, label %175

; <label>:156:                                    ; preds = %152
  call void @update_signature(i32* @main_signature, i32 65554)
  %157 = load i32, i32* @J, align 4
  %158 = icmp eq i32 %157, 1
  call void @verify_signature(i32* @main_signature, i32 65554)
  br i1 %158, label %159, label %160

; <label>:159:                                    ; preds = %156
  call void @update_signature(i32* @main_signature, i32 65555)
  store i32 2, i32* @J, align 4
  call void @verify_signature(i32* @main_signature, i32 65555)
  br label %161

; <label>:160:                                    ; preds = %156
  call void @update_signature(i32* @main_signature, i32 65556)
  store i32 3, i32* @J, align 4
  call void @verify_signature(i32* @main_signature, i32 65556)
  br label %161

; <label>:161:                                    ; preds = %160, %159
  call void @update_signature(i32* @main_signature, i32 65557)
  %162 = load i32, i32* @J, align 4
  %163 = icmp sgt i32 %162, 2
  call void @verify_signature(i32* @main_signature, i32 65557)
  br i1 %163, label %164, label %165

; <label>:164:                                    ; preds = %161
  call void @update_signature(i32* @main_signature, i32 65558)
  store i32 0, i32* @J, align 4
  call void @verify_signature(i32* @main_signature, i32 65558)
  br label %166

; <label>:165:                                    ; preds = %161
  call void @update_signature(i32* @main_signature, i32 65559)
  store i32 1, i32* @J, align 4
  call void @verify_signature(i32* @main_signature, i32 65559)
  br label %166

; <label>:166:                                    ; preds = %165, %164
  call void @update_signature(i32* @main_signature, i32 65560)
  %167 = load i32, i32* @J, align 4
  %168 = icmp slt i32 %167, 1
  call void @verify_signature(i32* @main_signature, i32 65560)
  br i1 %168, label %169, label %170

; <label>:169:                                    ; preds = %166
  call void @update_signature(i32* @main_signature, i32 65561)
  store i32 1, i32* @J, align 4
  call void @verify_signature(i32* @main_signature, i32 65561)
  br label %171

; <label>:170:                                    ; preds = %166
  call void @update_signature(i32* @main_signature, i32 65562)
  store i32 0, i32* @J, align 4
  call void @verify_signature(i32* @main_signature, i32 65562)
  br label %171

; <label>:171:                                    ; preds = %170, %169
  call void @update_signature(i32* @main_signature, i32 65563)
  call void @verify_signature(i32* @main_signature, i32 65563)
  br label %172

; <label>:172:                                    ; preds = %171
  call void @update_signature(i32* @main_signature, i32 65564)
  %173 = load i64, i64* %2, align 8
  %174 = add nsw i64 %173, 1
  store i64 %174, i64* %2, align 8
  call void @verify_signature(i32* @main_signature, i32 65564)
  br label %152

; <label>:175:                                    ; preds = %152
  call void @update_signature(i32* @main_signature, i32 65565)
  store i32 1, i32* @J, align 4
  store i32 2, i32* @K, align 4
  store i32 3, i32* @L, align 4
  store i64 1, i64* %2, align 8
  call void @verify_signature(i32* @main_signature, i32 65565)
  br label %176

; <label>:176:                                    ; preds = %226, %175
  call void @update_signature(i32* @main_signature, i32 65566)
  %177 = load i64, i64* %2, align 8
  %178 = load i64, i64* %7, align 8
  %179 = icmp sle i64 %177, %178
  call void @verify_signature(i32* @main_signature, i32 65566)
  br i1 %179, label %180, label %229

; <label>:180:                                    ; preds = %176
  call void @update_signature(i32* @main_signature, i32 65567)
  %181 = load i32, i32* @J, align 4
  %182 = load i32, i32* @K, align 4
  %183 = load i32, i32* @J, align 4
  %184 = sub nsw i32 %182, %183
  %185 = mul nsw i32 %181, %184
  %186 = load i32, i32* @L, align 4
  %187 = load i32, i32* @K, align 4
  %188 = sub nsw i32 %186, %187
  %189 = mul nsw i32 %185, %188
  store i32 %189, i32* @J, align 4
  %190 = load i32, i32* @L, align 4
  %191 = load i32, i32* @K, align 4
  %192 = mul nsw i32 %190, %191
  %193 = load i32, i32* @L, align 4
  %194 = load i32, i32* @J, align 4
  %195 = sub nsw i32 %193, %194
  %196 = load i32, i32* @K, align 4
  %197 = mul nsw i32 %195, %196
  %198 = sub nsw i32 %192, %197
  store i32 %198, i32* @K, align 4
  %199 = load i32, i32* @L, align 4
  %200 = load i32, i32* @K, align 4
  %201 = sub nsw i32 %199, %200
  %202 = load i32, i32* @K, align 4
  %203 = load i32, i32* @J, align 4
  %204 = add nsw i32 %202, %203
  %205 = mul nsw i32 %201, %204
  store i32 %205, i32* @L, align 4
  %206 = load i32, i32* @J, align 4
  %207 = load i32, i32* @K, align 4
  %208 = add nsw i32 %206, %207
  %209 = load i32, i32* @L, align 4
  %210 = add nsw i32 %208, %209
  %211 = sitofp i32 %210 to double
  %212 = load i32, i32* @L, align 4
  %213 = sub nsw i32 %212, 1
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [5 x double], [5 x double]* @E1, i64 0, i64 %214
  store double %211, double* %215, align 8
  %216 = load i32, i32* @J, align 4
  %217 = load i32, i32* @K, align 4
  %218 = mul nsw i32 %216, %217
  %219 = load i32, i32* @L, align 4
  %220 = mul nsw i32 %218, %219
  %221 = sitofp i32 %220 to double
  %222 = load i32, i32* @K, align 4
  %223 = sub nsw i32 %222, 1
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [5 x double], [5 x double]* @E1, i64 0, i64 %224
  store double %221, double* %225, align 8
  call void @verify_signature(i32* @main_signature, i32 65567)
  br label %226

; <label>:226:                                    ; preds = %180
  call void @update_signature(i32* @main_signature, i32 65568)
  %227 = load i64, i64* %2, align 8
  %228 = add nsw i64 %227, 1
  store i64 %228, i64* %2, align 8
  call void @verify_signature(i32* @main_signature, i32 65568)
  br label %176

; <label>:229:                                    ; preds = %176
  call void @update_signature(i32* @main_signature, i32 65569)
  store double 5.000000e-01, double* %17, align 8
  store double 5.000000e-01, double* %18, align 8
  store i64 1, i64* %2, align 8
  call void @verify_signature(i32* @main_signature, i32 65569)
  br label %230

; <label>:230:                                    ; preds = %287, %229
  call void @update_signature(i32* @main_signature, i32 65570)
  %231 = load i64, i64* %2, align 8
  %232 = load i64, i64* %8, align 8
  %233 = icmp sle i64 %231, %232
  call void @verify_signature(i32* @main_signature, i32 65570)
  br i1 %233, label %234, label %290

; <label>:234:                                    ; preds = %230
  call void @update_signature(i32* @main_signature, i32 65571)
  %235 = load double, double* @T, align 8
  %236 = load double, double* @T2, align 8
  %237 = load double, double* %17, align 8
  %238 = call double @sin(double %237) #3
  call void @verify_signature(i32* @main_signature, i32 65571)
  br label %239

; <label>:239:                                    ; preds = %234
  call void @update_signature(i32* @main_signature, i32 65572)
  %240 = fmul double %236, %238
  %241 = load double, double* %17, align 8
  %242 = call double @cos(double %241) #3
  call void @verify_signature(i32* @main_signature, i32 65572)
  br label %243

; <label>:243:                                    ; preds = %239
  call void @update_signature(i32* @main_signature, i32 65573)
  %244 = fmul double %240, %242
  %245 = load double, double* %17, align 8
  %246 = load double, double* %18, align 8
  %247 = fadd double %245, %246
  %248 = call double @cos(double %247) #3
  call void @verify_signature(i32* @main_signature, i32 65573)
  br label %249

; <label>:249:                                    ; preds = %243
  call void @update_signature(i32* @main_signature, i32 65574)
  %250 = load double, double* %17, align 8
  %251 = load double, double* %18, align 8
  %252 = fsub double %250, %251
  %253 = call double @cos(double %252) #3
  call void @verify_signature(i32* @main_signature, i32 65574)
  br label %254

; <label>:254:                                    ; preds = %249
  call void @update_signature(i32* @main_signature, i32 65575)
  %255 = fadd double %248, %253
  %256 = fsub double %255, 1.000000e+00
  %257 = fdiv double %244, %256
  %258 = call double @atan(double %257) #3
  call void @verify_signature(i32* @main_signature, i32 65575)
  br label %259

; <label>:259:                                    ; preds = %254
  call void @update_signature(i32* @main_signature, i32 65576)
  %260 = fmul double %235, %258
  store double %260, double* %17, align 8
  %261 = load double, double* @T, align 8
  %262 = load double, double* @T2, align 8
  %263 = load double, double* %18, align 8
  %264 = call double @sin(double %263) #3
  call void @verify_signature(i32* @main_signature, i32 65576)
  br label %265

; <label>:265:                                    ; preds = %259
  call void @update_signature(i32* @main_signature, i32 65577)
  %266 = fmul double %262, %264
  %267 = load double, double* %18, align 8
  %268 = call double @cos(double %267) #3
  call void @verify_signature(i32* @main_signature, i32 65577)
  br label %269

; <label>:269:                                    ; preds = %265
  call void @update_signature(i32* @main_signature, i32 65578)
  %270 = fmul double %266, %268
  %271 = load double, double* %17, align 8
  %272 = load double, double* %18, align 8
  %273 = fadd double %271, %272
  %274 = call double @cos(double %273) #3
  call void @verify_signature(i32* @main_signature, i32 65578)
  br label %275

; <label>:275:                                    ; preds = %269
  call void @update_signature(i32* @main_signature, i32 65579)
  %276 = load double, double* %17, align 8
  %277 = load double, double* %18, align 8
  %278 = fsub double %276, %277
  %279 = call double @cos(double %278) #3
  call void @verify_signature(i32* @main_signature, i32 65579)
  br label %280

; <label>:280:                                    ; preds = %275
  call void @update_signature(i32* @main_signature, i32 65580)
  %281 = fadd double %274, %279
  %282 = fsub double %281, 1.000000e+00
  %283 = fdiv double %270, %282
  %284 = call double @atan(double %283) #3
  call void @verify_signature(i32* @main_signature, i32 65580)
  br label %285

; <label>:285:                                    ; preds = %280
  call void @update_signature(i32* @main_signature, i32 65581)
  %286 = fmul double %261, %284
  store double %286, double* %18, align 8
  call void @verify_signature(i32* @main_signature, i32 65581)
  br label %287

; <label>:287:                                    ; preds = %285
  call void @update_signature(i32* @main_signature, i32 65582)
  %288 = load i64, i64* %2, align 8
  %289 = add nsw i64 %288, 1
  store i64 %289, i64* %2, align 8
  call void @verify_signature(i32* @main_signature, i32 65582)
  br label %230

; <label>:290:                                    ; preds = %230
  call void @update_signature(i32* @main_signature, i32 65583)
  store double 1.000000e+00, double* %17, align 8
  store double 1.000000e+00, double* %18, align 8
  store double 1.000000e+00, double* %19, align 8
  store i64 1, i64* %2, align 8
  call void @verify_signature(i32* @main_signature, i32 65583)
  br label %291

; <label>:291:                                    ; preds = %298, %290
  call void @update_signature(i32* @main_signature, i32 65584)
  %292 = load i64, i64* %2, align 8
  %293 = load i64, i64* %9, align 8
  %294 = icmp sle i64 %292, %293
  call void @verify_signature(i32* @main_signature, i32 65584)
  br i1 %294, label %295, label %301

; <label>:295:                                    ; preds = %291
  call void @update_signature(i32* @main_signature, i32 65585)
  %296 = load double, double* %17, align 8
  %297 = load double, double* %18, align 8
  call void @P3(double %296, double %297, double* %19)
  call void @verify_signature(i32* @main_signature, i32 65585)
  br label %298

; <label>:298:                                    ; preds = %295
  call void @update_signature(i32* @main_signature, i32 65586)
  %299 = load i64, i64* %2, align 8
  %300 = add nsw i64 %299, 1
  store i64 %300, i64* %2, align 8
  call void @verify_signature(i32* @main_signature, i32 65586)
  br label %291

; <label>:301:                                    ; preds = %291
  call void @update_signature(i32* @main_signature, i32 65587)
  store i32 1, i32* @J, align 4
  store i32 2, i32* @K, align 4
  store i32 3, i32* @L, align 4
  store double 1.000000e+00, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 1), align 8
  store double 2.000000e+00, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 2), align 16
  store double 3.000000e+00, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 3), align 8
  store i64 1, i64* %2, align 8
  call void @verify_signature(i32* @main_signature, i32 65587)
  br label %302

; <label>:302:                                    ; preds = %307, %301
  call void @update_signature(i32* @main_signature, i32 65588)
  %303 = load i64, i64* %2, align 8
  %304 = load i64, i64* %10, align 8
  %305 = icmp sle i64 %303, %304
  call void @verify_signature(i32* @main_signature, i32 65588)
  br i1 %305, label %306, label %310

; <label>:306:                                    ; preds = %302
  call void @update_signature(i32* @main_signature, i32 65589)
  call void @P0()
  call void @verify_signature(i32* @main_signature, i32 65589)
  br label %307

; <label>:307:                                    ; preds = %306
  call void @update_signature(i32* @main_signature, i32 65590)
  %308 = load i64, i64* %2, align 8
  %309 = add nsw i64 %308, 1
  store i64 %309, i64* %2, align 8
  call void @verify_signature(i32* @main_signature, i32 65590)
  br label %302

; <label>:310:                                    ; preds = %302
  call void @update_signature(i32* @main_signature, i32 65591)
  store i32 2, i32* @J, align 4
  store i32 3, i32* @K, align 4
  store i64 1, i64* %2, align 8
  call void @verify_signature(i32* @main_signature, i32 65591)
  br label %311

; <label>:311:                                    ; preds = %330, %310
  call void @update_signature(i32* @main_signature, i32 65592)
  %312 = load i64, i64* %2, align 8
  %313 = load i64, i64* %11, align 8
  %314 = icmp sle i64 %312, %313
  call void @verify_signature(i32* @main_signature, i32 65592)
  br i1 %314, label %315, label %333

; <label>:315:                                    ; preds = %311
  call void @update_signature(i32* @main_signature, i32 65593)
  %316 = load i32, i32* @J, align 4
  %317 = load i32, i32* @K, align 4
  %318 = add nsw i32 %316, %317
  store i32 %318, i32* @J, align 4
  %319 = load i32, i32* @J, align 4
  %320 = load i32, i32* @K, align 4
  %321 = add nsw i32 %319, %320
  store i32 %321, i32* @K, align 4
  %322 = load i32, i32* @K, align 4
  %323 = load i32, i32* @J, align 4
  %324 = sub nsw i32 %322, %323
  store i32 %324, i32* @J, align 4
  %325 = load i32, i32* @K, align 4
  %326 = load i32, i32* @J, align 4
  %327 = sub nsw i32 %325, %326
  %328 = load i32, i32* @J, align 4
  %329 = sub nsw i32 %327, %328
  store i32 %329, i32* @K, align 4
  call void @verify_signature(i32* @main_signature, i32 65593)
  br label %330

; <label>:330:                                    ; preds = %315
  call void @update_signature(i32* @main_signature, i32 65594)
  %331 = load i64, i64* %2, align 8
  %332 = add nsw i64 %331, 1
  store i64 %332, i64* %2, align 8
  call void @verify_signature(i32* @main_signature, i32 65594)
  br label %311

; <label>:333:                                    ; preds = %311
  call void @update_signature(i32* @main_signature, i32 65595)
  store double 7.500000e-01, double* %17, align 8
  store i64 1, i64* %2, align 8
  call void @verify_signature(i32* @main_signature, i32 65595)
  br label %334

; <label>:334:                                    ; preds = %348, %333
  call void @update_signature(i32* @main_signature, i32 65596)
  %335 = load i64, i64* %2, align 8
  %336 = load i64, i64* %12, align 8
  %337 = icmp sle i64 %335, %336
  call void @verify_signature(i32* @main_signature, i32 65596)
  br i1 %337, label %338, label %351

; <label>:338:                                    ; preds = %334
  call void @update_signature(i32* @main_signature, i32 65597)
  %339 = load double, double* %17, align 8
  %340 = call double @log(double %339) #3
  call void @verify_signature(i32* @main_signature, i32 65597)
  br label %341

; <label>:341:                                    ; preds = %338
  call void @update_signature(i32* @main_signature, i32 65598)
  %342 = load double, double* @T1, align 8
  %343 = fdiv double %340, %342
  %344 = call double @exp(double %343) #3
  call void @verify_signature(i32* @main_signature, i32 65598)
  br label %345

; <label>:345:                                    ; preds = %341
  call void @update_signature(i32* @main_signature, i32 65599)
  %346 = call double @sqrt(double %344) #3
  call void @verify_signature(i32* @main_signature, i32 65599)
  br label %347

; <label>:347:                                    ; preds = %345
  call void @update_signature(i32* @main_signature, i32 65600)
  store double %346, double* %17, align 8
  call void @verify_signature(i32* @main_signature, i32 65600)
  br label %348

; <label>:348:                                    ; preds = %347
  call void @update_signature(i32* @main_signature, i32 65601)
  %349 = load i64, i64* %2, align 8
  %350 = add nsw i64 %349, 1
  store i64 %350, i64* %2, align 8
  call void @verify_signature(i32* @main_signature, i32 65601)
  br label %334

; <label>:351:                                    ; preds = %334
  call void @update_signature(i32* @main_signature, i32 65602)
  %352 = load i32, i32* %22, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %22, align 4
  %354 = load i32, i32* %21, align 4
  %355 = icmp sle i32 %353, %354
  call void @verify_signature(i32* @main_signature, i32 65602)
  br i1 %355, label %356, label %357

; <label>:356:                                    ; preds = %351
  call void @update_signature(i32* @main_signature, i32 65603)
  call void @verify_signature(i32* @main_signature, i32 65603)
  br label %34

; <label>:357:                                    ; preds = %351
  call void @update_signature(i32* @main_signature, i32 65604)
  %358 = call i32 @gettimeofday(%struct.timeval* %29, %struct.timezone* null) #3
  call void @verify_signature(i32* @main_signature, i32 65604)
  br label %359

; <label>:359:                                    ; preds = %357
  call void @update_signature(i32* @main_signature, i32 65605)
  %360 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0))
  call void @verify_signature(i32* @main_signature, i32 65605)
  br label %361

; <label>:361:                                    ; preds = %359
  call void @update_signature(i32* @main_signature, i32 65606)
  %362 = getelementptr inbounds %struct.timeval, %struct.timeval* %29, i32 0, i32 0
  %363 = load i64, i64* %362, align 8
  %364 = getelementptr inbounds %struct.timeval, %struct.timeval* %28, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = sub nsw i64 %363, %365
  %367 = mul nsw i64 %366, 1000000
  %368 = getelementptr inbounds %struct.timeval, %struct.timeval* %29, i32 0, i32 1
  %369 = load i64, i64* %368, align 8
  %370 = getelementptr inbounds %struct.timeval, %struct.timeval* %28, i32 0, i32 1
  %371 = load i64, i64* %370, align 8
  %372 = sub nsw i64 %369, %371
  %373 = add nsw i64 %367, %372
  %374 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i64 %373)
  call void @verify_signature(i32* @main_signature, i32 65606)
  br label %375

; <label>:375:                                    ; preds = %361
  call void @update_signature(i32* @main_signature, i32 65607)
  call void @verify_signature(i32* @main_signature, i32 65607)
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @PA(double*) #0 {
  call void @update_signature(i32* @PA_signature, i32 196609)
  %2 = alloca double*, align 8
  store double* %0, double** %2, align 8
  store i32 0, i32* @J, align 4
  call void @verify_signature(i32* @PA_signature, i32 196609)
  br label %3

; <label>:3:                                      ; preds = %85, %1
  call void @update_signature(i32* @PA_signature, i32 196610)
  %4 = load double*, double** %2, align 8
  %5 = getelementptr inbounds double, double* %4, i64 1
  %6 = load double, double* %5, align 8
  %7 = load double*, double** %2, align 8
  %8 = getelementptr inbounds double, double* %7, i64 2
  %9 = load double, double* %8, align 8
  %10 = fadd double %6, %9
  %11 = load double*, double** %2, align 8
  %12 = getelementptr inbounds double, double* %11, i64 3
  %13 = load double, double* %12, align 8
  %14 = fadd double %10, %13
  %15 = load double*, double** %2, align 8
  %16 = getelementptr inbounds double, double* %15, i64 4
  %17 = load double, double* %16, align 8
  %18 = fsub double %14, %17
  %19 = load double, double* @T, align 8
  %20 = fmul double %18, %19
  %21 = load double*, double** %2, align 8
  %22 = getelementptr inbounds double, double* %21, i64 1
  store double %20, double* %22, align 8
  %23 = load double*, double** %2, align 8
  %24 = getelementptr inbounds double, double* %23, i64 1
  %25 = load double, double* %24, align 8
  %26 = load double*, double** %2, align 8
  %27 = getelementptr inbounds double, double* %26, i64 2
  %28 = load double, double* %27, align 8
  %29 = fadd double %25, %28
  %30 = load double*, double** %2, align 8
  %31 = getelementptr inbounds double, double* %30, i64 3
  %32 = load double, double* %31, align 8
  %33 = fsub double %29, %32
  %34 = load double*, double** %2, align 8
  %35 = getelementptr inbounds double, double* %34, i64 4
  %36 = load double, double* %35, align 8
  %37 = fadd double %33, %36
  %38 = load double, double* @T, align 8
  %39 = fmul double %37, %38
  %40 = load double*, double** %2, align 8
  %41 = getelementptr inbounds double, double* %40, i64 2
  store double %39, double* %41, align 8
  %42 = load double*, double** %2, align 8
  %43 = getelementptr inbounds double, double* %42, i64 1
  %44 = load double, double* %43, align 8
  %45 = load double*, double** %2, align 8
  %46 = getelementptr inbounds double, double* %45, i64 2
  %47 = load double, double* %46, align 8
  %48 = fsub double %44, %47
  %49 = load double*, double** %2, align 8
  %50 = getelementptr inbounds double, double* %49, i64 3
  %51 = load double, double* %50, align 8
  %52 = fadd double %48, %51
  %53 = load double*, double** %2, align 8
  %54 = getelementptr inbounds double, double* %53, i64 4
  %55 = load double, double* %54, align 8
  %56 = fadd double %52, %55
  %57 = load double, double* @T, align 8
  %58 = fmul double %56, %57
  %59 = load double*, double** %2, align 8
  %60 = getelementptr inbounds double, double* %59, i64 3
  store double %58, double* %60, align 8
  %61 = load double*, double** %2, align 8
  %62 = getelementptr inbounds double, double* %61, i64 1
  %63 = load double, double* %62, align 8
  %64 = fsub double -0.000000e+00, %63
  %65 = load double*, double** %2, align 8
  %66 = getelementptr inbounds double, double* %65, i64 2
  %67 = load double, double* %66, align 8
  %68 = fadd double %64, %67
  %69 = load double*, double** %2, align 8
  %70 = getelementptr inbounds double, double* %69, i64 3
  %71 = load double, double* %70, align 8
  %72 = fadd double %68, %71
  %73 = load double*, double** %2, align 8
  %74 = getelementptr inbounds double, double* %73, i64 4
  %75 = load double, double* %74, align 8
  %76 = fadd double %72, %75
  %77 = load double, double* @T2, align 8
  %78 = fdiv double %76, %77
  %79 = load double*, double** %2, align 8
  %80 = getelementptr inbounds double, double* %79, i64 4
  store double %78, double* %80, align 8
  %81 = load i32, i32* @J, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* @J, align 4
  %83 = load i32, i32* @J, align 4
  %84 = icmp slt i32 %83, 6
  call void @verify_signature(i32* @PA_signature, i32 196610)
  br i1 %84, label %85, label %86

; <label>:85:                                     ; preds = %3
  call void @update_signature(i32* @PA_signature, i32 196611)
  call void @verify_signature(i32* @PA_signature, i32 196611)
  br label %3

; <label>:86:                                     ; preds = %3
  call void @update_signature(i32* @PA_signature, i32 196612)
  call void @verify_signature(i32* @PA_signature, i32 196612)
  ret void
}

; Function Attrs: nounwind
declare double @atan(double) #1

; Function Attrs: nounwind
declare double @sin(double) #1

; Function Attrs: nounwind
declare double @cos(double) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @P3(double, double, double*) #0 {
  call void @update_signature(i32* @P3_signature, i32 458753)
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  store double* %2, double** %6, align 8
  %9 = load double, double* %4, align 8
  store double %9, double* %7, align 8
  %10 = load double, double* %5, align 8
  store double %10, double* %8, align 8
  %11 = load double, double* @T, align 8
  %12 = load double, double* %7, align 8
  %13 = load double, double* %8, align 8
  %14 = fadd double %12, %13
  %15 = fmul double %11, %14
  store double %15, double* %7, align 8
  %16 = load double, double* @T, align 8
  %17 = load double, double* %7, align 8
  %18 = load double, double* %8, align 8
  %19 = fadd double %17, %18
  %20 = fmul double %16, %19
  store double %20, double* %8, align 8
  %21 = load double, double* %7, align 8
  %22 = load double, double* %8, align 8
  %23 = fadd double %21, %22
  %24 = load double, double* @T2, align 8
  %25 = fdiv double %23, %24
  %26 = load double*, double** %6, align 8
  store double %25, double* %26, align 8
  call void @verify_signature(i32* @P3_signature, i32 458753)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @P0() #0 {
  call void @update_signature(i32* @P0_signature, i32 524289)
  %1 = load i32, i32* @K, align 4
  %2 = sext i32 %1 to i64
  %3 = getelementptr inbounds [5 x double], [5 x double]* @E1, i64 0, i64 %2
  %4 = load double, double* %3, align 8
  %5 = load i32, i32* @J, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [5 x double], [5 x double]* @E1, i64 0, i64 %6
  store double %4, double* %7, align 8
  %8 = load i32, i32* @L, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [5 x double], [5 x double]* @E1, i64 0, i64 %9
  %11 = load double, double* %10, align 8
  %12 = load i32, i32* @K, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [5 x double], [5 x double]* @E1, i64 0, i64 %13
  store double %11, double* %14, align 8
  %15 = load i32, i32* @J, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [5 x double], [5 x double]* @E1, i64 0, i64 %16
  %18 = load double, double* %17, align 8
  %19 = load i32, i32* @L, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [5 x double], [5 x double]* @E1, i64 0, i64 %20
  store double %18, double* %21, align 8
  call void @verify_signature(i32* @P0_signature, i32 524289)
  ret void
}

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: nounwind
declare double @exp(double) #1

; Function Attrs: nounwind
declare double @log(double) #1

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
