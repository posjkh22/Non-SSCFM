; ModuleID = 'whetstone.bc'
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

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main() #0 {
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
  store i32 1, i32* %21, align 4
  br label %31

; <label>:31:                                     ; preds = %0
  store double 4.999750e-01, double* @T, align 8
  store double 5.002500e-01, double* @T1, align 8
  store double 2.000000e+00, double* @T2, align 8
  %32 = load i64, i64* %23, align 8
  store i64 %32, i64* %20, align 8
  store i32 1, i32* %21, align 4
  store i32 1, i32* %22, align 4
  br label %33

; <label>:33:                                     ; preds = %342, %31
  store i64 0, i64* %3, align 8
  %34 = load i64, i64* %20, align 8
  %35 = mul nsw i64 12, %34
  store i64 %35, i64* %4, align 8
  %36 = load i64, i64* %20, align 8
  %37 = mul nsw i64 14, %36
  store i64 %37, i64* %5, align 8
  %38 = load i64, i64* %20, align 8
  %39 = mul nsw i64 345, %38
  store i64 %39, i64* %6, align 8
  %40 = load i64, i64* %20, align 8
  %41 = mul nsw i64 210, %40
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* %20, align 8
  %43 = mul nsw i64 32, %42
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %20, align 8
  %45 = mul nsw i64 899, %44
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %20, align 8
  %47 = mul nsw i64 616, %46
  store i64 %47, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %48 = load i64, i64* %20, align 8
  %49 = mul nsw i64 93, %48
  store i64 %49, i64* %12, align 8
  store double 1.000000e+00, double* %13, align 8
  store double -1.000000e+00, double* %14, align 8
  store double -1.000000e+00, double* %15, align 8
  store double -1.000000e+00, double* %16, align 8
  store i64 1, i64* %2, align 8
  br label %50

; <label>:50:                                     ; preds = %92, %33
  %51 = load i64, i64* %2, align 8
  %52 = load i64, i64* %3, align 8
  %53 = icmp sle i64 %51, %52
  br i1 %53, label %54, label %95

; <label>:54:                                     ; preds = %50
  %55 = load double, double* %13, align 8
  %56 = load double, double* %14, align 8
  %57 = fadd double %55, %56
  %58 = load double, double* %15, align 8
  %59 = fadd double %57, %58
  %60 = load double, double* %16, align 8
  %61 = fsub double %59, %60
  %62 = load double, double* @T, align 8
  %63 = fmul double %61, %62
  store double %63, double* %13, align 8
  %64 = load double, double* %13, align 8
  %65 = load double, double* %14, align 8
  %66 = fadd double %64, %65
  %67 = load double, double* %15, align 8
  %68 = fsub double %66, %67
  %69 = load double, double* %16, align 8
  %70 = fadd double %68, %69
  %71 = load double, double* @T, align 8
  %72 = fmul double %70, %71
  store double %72, double* %14, align 8
  %73 = load double, double* %13, align 8
  %74 = load double, double* %14, align 8
  %75 = fsub double %73, %74
  %76 = load double, double* %15, align 8
  %77 = fadd double %75, %76
  %78 = load double, double* %16, align 8
  %79 = fadd double %77, %78
  %80 = load double, double* @T, align 8
  %81 = fmul double %79, %80
  store double %81, double* %15, align 8
  %82 = load double, double* %13, align 8
  %83 = fsub double -0.000000e+00, %82
  %84 = load double, double* %14, align 8
  %85 = fadd double %83, %84
  %86 = load double, double* %15, align 8
  %87 = fadd double %85, %86
  %88 = load double, double* %16, align 8
  %89 = fadd double %87, %88
  %90 = load double, double* @T, align 8
  %91 = fmul double %89, %90
  store double %91, double* %16, align 8
  br label %92

; <label>:92:                                     ; preds = %54
  %93 = load i64, i64* %2, align 8
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* %2, align 8
  br label %50

; <label>:95:                                     ; preds = %50
  store double 1.000000e+00, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 1), align 8
  store double -1.000000e+00, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 2), align 16
  store double -1.000000e+00, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 3), align 8
  store double -1.000000e+00, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 4), align 16
  store i64 1, i64* %2, align 8
  br label %96

; <label>:96:                                     ; preds = %138, %95
  %97 = load i64, i64* %2, align 8
  %98 = load i64, i64* %4, align 8
  %99 = icmp sle i64 %97, %98
  br i1 %99, label %100, label %141

; <label>:100:                                    ; preds = %96
  %101 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 1), align 8
  %102 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 2), align 16
  %103 = fadd double %101, %102
  %104 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 3), align 8
  %105 = fadd double %103, %104
  %106 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 4), align 16
  %107 = fsub double %105, %106
  %108 = load double, double* @T, align 8
  %109 = fmul double %107, %108
  store double %109, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 1), align 8
  %110 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 1), align 8
  %111 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 2), align 16
  %112 = fadd double %110, %111
  %113 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 3), align 8
  %114 = fsub double %112, %113
  %115 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 4), align 16
  %116 = fadd double %114, %115
  %117 = load double, double* @T, align 8
  %118 = fmul double %116, %117
  store double %118, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 2), align 16
  %119 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 1), align 8
  %120 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 2), align 16
  %121 = fsub double %119, %120
  %122 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 3), align 8
  %123 = fadd double %121, %122
  %124 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 4), align 16
  %125 = fadd double %123, %124
  %126 = load double, double* @T, align 8
  %127 = fmul double %125, %126
  store double %127, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 3), align 8
  %128 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 1), align 8
  %129 = fsub double -0.000000e+00, %128
  %130 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 2), align 16
  %131 = fadd double %129, %130
  %132 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 3), align 8
  %133 = fadd double %131, %132
  %134 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 4), align 16
  %135 = fadd double %133, %134
  %136 = load double, double* @T, align 8
  %137 = fmul double %135, %136
  store double %137, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 4), align 16
  br label %138

; <label>:138:                                    ; preds = %100
  %139 = load i64, i64* %2, align 8
  %140 = add nsw i64 %139, 1
  store i64 %140, i64* %2, align 8
  br label %96

; <label>:141:                                    ; preds = %96
  store i64 1, i64* %2, align 8
  br label %142

; <label>:142:                                    ; preds = %147, %141
  %143 = load i64, i64* %2, align 8
  %144 = load i64, i64* %5, align 8
  %145 = icmp sle i64 %143, %144
  br i1 %145, label %146, label %150

; <label>:146:                                    ; preds = %142
  call void @PA(double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i32 0, i32 0))
  br label %147

; <label>:147:                                    ; preds = %146
  %148 = load i64, i64* %2, align 8
  %149 = add nsw i64 %148, 1
  store i64 %149, i64* %2, align 8
  br label %142

; <label>:150:                                    ; preds = %142
  store i32 1, i32* @J, align 4
  store i64 1, i64* %2, align 8
  br label %151

; <label>:151:                                    ; preds = %171, %150
  %152 = load i64, i64* %2, align 8
  %153 = load i64, i64* %6, align 8
  %154 = icmp sle i64 %152, %153
  br i1 %154, label %155, label %174

; <label>:155:                                    ; preds = %151
  %156 = load i32, i32* @J, align 4
  %157 = icmp eq i32 %156, 1
  br i1 %157, label %158, label %159

; <label>:158:                                    ; preds = %155
  store i32 2, i32* @J, align 4
  br label %160

; <label>:159:                                    ; preds = %155
  store i32 3, i32* @J, align 4
  br label %160

; <label>:160:                                    ; preds = %159, %158
  %161 = load i32, i32* @J, align 4
  %162 = icmp sgt i32 %161, 2
  br i1 %162, label %163, label %164

; <label>:163:                                    ; preds = %160
  store i32 0, i32* @J, align 4
  br label %165

; <label>:164:                                    ; preds = %160
  store i32 1, i32* @J, align 4
  br label %165

; <label>:165:                                    ; preds = %164, %163
  %166 = load i32, i32* @J, align 4
  %167 = icmp slt i32 %166, 1
  br i1 %167, label %168, label %169

; <label>:168:                                    ; preds = %165
  store i32 1, i32* @J, align 4
  br label %170

; <label>:169:                                    ; preds = %165
  store i32 0, i32* @J, align 4
  br label %170

; <label>:170:                                    ; preds = %169, %168
  br label %171

; <label>:171:                                    ; preds = %170
  %172 = load i64, i64* %2, align 8
  %173 = add nsw i64 %172, 1
  store i64 %173, i64* %2, align 8
  br label %151

; <label>:174:                                    ; preds = %151
  store i32 1, i32* @J, align 4
  store i32 2, i32* @K, align 4
  store i32 3, i32* @L, align 4
  store i64 1, i64* %2, align 8
  br label %175

; <label>:175:                                    ; preds = %225, %174
  %176 = load i64, i64* %2, align 8
  %177 = load i64, i64* %7, align 8
  %178 = icmp sle i64 %176, %177
  br i1 %178, label %179, label %228

; <label>:179:                                    ; preds = %175
  %180 = load i32, i32* @J, align 4
  %181 = load i32, i32* @K, align 4
  %182 = load i32, i32* @J, align 4
  %183 = sub nsw i32 %181, %182
  %184 = mul nsw i32 %180, %183
  %185 = load i32, i32* @L, align 4
  %186 = load i32, i32* @K, align 4
  %187 = sub nsw i32 %185, %186
  %188 = mul nsw i32 %184, %187
  store i32 %188, i32* @J, align 4
  %189 = load i32, i32* @L, align 4
  %190 = load i32, i32* @K, align 4
  %191 = mul nsw i32 %189, %190
  %192 = load i32, i32* @L, align 4
  %193 = load i32, i32* @J, align 4
  %194 = sub nsw i32 %192, %193
  %195 = load i32, i32* @K, align 4
  %196 = mul nsw i32 %194, %195
  %197 = sub nsw i32 %191, %196
  store i32 %197, i32* @K, align 4
  %198 = load i32, i32* @L, align 4
  %199 = load i32, i32* @K, align 4
  %200 = sub nsw i32 %198, %199
  %201 = load i32, i32* @K, align 4
  %202 = load i32, i32* @J, align 4
  %203 = add nsw i32 %201, %202
  %204 = mul nsw i32 %200, %203
  store i32 %204, i32* @L, align 4
  %205 = load i32, i32* @J, align 4
  %206 = load i32, i32* @K, align 4
  %207 = add nsw i32 %205, %206
  %208 = load i32, i32* @L, align 4
  %209 = add nsw i32 %207, %208
  %210 = sitofp i32 %209 to double
  %211 = load i32, i32* @L, align 4
  %212 = sub nsw i32 %211, 1
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [5 x double], [5 x double]* @E1, i64 0, i64 %213
  store double %210, double* %214, align 8
  %215 = load i32, i32* @J, align 4
  %216 = load i32, i32* @K, align 4
  %217 = mul nsw i32 %215, %216
  %218 = load i32, i32* @L, align 4
  %219 = mul nsw i32 %217, %218
  %220 = sitofp i32 %219 to double
  %221 = load i32, i32* @K, align 4
  %222 = sub nsw i32 %221, 1
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [5 x double], [5 x double]* @E1, i64 0, i64 %223
  store double %220, double* %224, align 8
  br label %225

; <label>:225:                                    ; preds = %179
  %226 = load i64, i64* %2, align 8
  %227 = add nsw i64 %226, 1
  store i64 %227, i64* %2, align 8
  br label %175

; <label>:228:                                    ; preds = %175
  store double 5.000000e-01, double* %17, align 8
  store double 5.000000e-01, double* %18, align 8
  store i64 1, i64* %2, align 8
  br label %229

; <label>:229:                                    ; preds = %276, %228
  %230 = load i64, i64* %2, align 8
  %231 = load i64, i64* %8, align 8
  %232 = icmp sle i64 %230, %231
  br i1 %232, label %233, label %279

; <label>:233:                                    ; preds = %229
  %234 = load double, double* @T, align 8
  %235 = load double, double* @T2, align 8
  %236 = load double, double* %17, align 8
  %237 = call double @sin(double %236) #3
  %238 = fmul double %235, %237
  %239 = load double, double* %17, align 8
  %240 = call double @cos(double %239) #3
  %241 = fmul double %238, %240
  %242 = load double, double* %17, align 8
  %243 = load double, double* %18, align 8
  %244 = fadd double %242, %243
  %245 = call double @cos(double %244) #3
  %246 = load double, double* %17, align 8
  %247 = load double, double* %18, align 8
  %248 = fsub double %246, %247
  %249 = call double @cos(double %248) #3
  %250 = fadd double %245, %249
  %251 = fsub double %250, 1.000000e+00
  %252 = fdiv double %241, %251
  %253 = call double @atan(double %252) #3
  %254 = fmul double %234, %253
  store double %254, double* %17, align 8
  %255 = load double, double* @T, align 8
  %256 = load double, double* @T2, align 8
  %257 = load double, double* %18, align 8
  %258 = call double @sin(double %257) #3
  %259 = fmul double %256, %258
  %260 = load double, double* %18, align 8
  %261 = call double @cos(double %260) #3
  %262 = fmul double %259, %261
  %263 = load double, double* %17, align 8
  %264 = load double, double* %18, align 8
  %265 = fadd double %263, %264
  %266 = call double @cos(double %265) #3
  %267 = load double, double* %17, align 8
  %268 = load double, double* %18, align 8
  %269 = fsub double %267, %268
  %270 = call double @cos(double %269) #3
  %271 = fadd double %266, %270
  %272 = fsub double %271, 1.000000e+00
  %273 = fdiv double %262, %272
  %274 = call double @atan(double %273) #3
  %275 = fmul double %255, %274
  store double %275, double* %18, align 8
  br label %276

; <label>:276:                                    ; preds = %233
  %277 = load i64, i64* %2, align 8
  %278 = add nsw i64 %277, 1
  store i64 %278, i64* %2, align 8
  br label %229

; <label>:279:                                    ; preds = %229
  store double 1.000000e+00, double* %17, align 8
  store double 1.000000e+00, double* %18, align 8
  store double 1.000000e+00, double* %19, align 8
  store i64 1, i64* %2, align 8
  br label %280

; <label>:280:                                    ; preds = %287, %279
  %281 = load i64, i64* %2, align 8
  %282 = load i64, i64* %9, align 8
  %283 = icmp sle i64 %281, %282
  br i1 %283, label %284, label %290

; <label>:284:                                    ; preds = %280
  %285 = load double, double* %17, align 8
  %286 = load double, double* %18, align 8
  call void @P3(double %285, double %286, double* %19)
  br label %287

; <label>:287:                                    ; preds = %284
  %288 = load i64, i64* %2, align 8
  %289 = add nsw i64 %288, 1
  store i64 %289, i64* %2, align 8
  br label %280

; <label>:290:                                    ; preds = %280
  store i32 1, i32* @J, align 4
  store i32 2, i32* @K, align 4
  store i32 3, i32* @L, align 4
  store double 1.000000e+00, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 1), align 8
  store double 2.000000e+00, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 2), align 16
  store double 3.000000e+00, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 3), align 8
  store i64 1, i64* %2, align 8
  br label %291

; <label>:291:                                    ; preds = %296, %290
  %292 = load i64, i64* %2, align 8
  %293 = load i64, i64* %10, align 8
  %294 = icmp sle i64 %292, %293
  br i1 %294, label %295, label %299

; <label>:295:                                    ; preds = %291
  call void @P0()
  br label %296

; <label>:296:                                    ; preds = %295
  %297 = load i64, i64* %2, align 8
  %298 = add nsw i64 %297, 1
  store i64 %298, i64* %2, align 8
  br label %291

; <label>:299:                                    ; preds = %291
  store i32 2, i32* @J, align 4
  store i32 3, i32* @K, align 4
  store i64 1, i64* %2, align 8
  br label %300

; <label>:300:                                    ; preds = %319, %299
  %301 = load i64, i64* %2, align 8
  %302 = load i64, i64* %11, align 8
  %303 = icmp sle i64 %301, %302
  br i1 %303, label %304, label %322

; <label>:304:                                    ; preds = %300
  %305 = load i32, i32* @J, align 4
  %306 = load i32, i32* @K, align 4
  %307 = add nsw i32 %305, %306
  store i32 %307, i32* @J, align 4
  %308 = load i32, i32* @J, align 4
  %309 = load i32, i32* @K, align 4
  %310 = add nsw i32 %308, %309
  store i32 %310, i32* @K, align 4
  %311 = load i32, i32* @K, align 4
  %312 = load i32, i32* @J, align 4
  %313 = sub nsw i32 %311, %312
  store i32 %313, i32* @J, align 4
  %314 = load i32, i32* @K, align 4
  %315 = load i32, i32* @J, align 4
  %316 = sub nsw i32 %314, %315
  %317 = load i32, i32* @J, align 4
  %318 = sub nsw i32 %316, %317
  store i32 %318, i32* @K, align 4
  br label %319

; <label>:319:                                    ; preds = %304
  %320 = load i64, i64* %2, align 8
  %321 = add nsw i64 %320, 1
  store i64 %321, i64* %2, align 8
  br label %300

; <label>:322:                                    ; preds = %300
  store double 7.500000e-01, double* %17, align 8
  store i64 1, i64* %2, align 8
  br label %323

; <label>:323:                                    ; preds = %334, %322
  %324 = load i64, i64* %2, align 8
  %325 = load i64, i64* %12, align 8
  %326 = icmp sle i64 %324, %325
  br i1 %326, label %327, label %337

; <label>:327:                                    ; preds = %323
  %328 = load double, double* %17, align 8
  %329 = call double @log(double %328) #3
  %330 = load double, double* @T1, align 8
  %331 = fdiv double %329, %330
  %332 = call double @exp(double %331) #3
  %333 = call double @sqrt(double %332) #3
  store double %333, double* %17, align 8
  br label %334

; <label>:334:                                    ; preds = %327
  %335 = load i64, i64* %2, align 8
  %336 = add nsw i64 %335, 1
  store i64 %336, i64* %2, align 8
  br label %323

; <label>:337:                                    ; preds = %323
  %338 = load i32, i32* %22, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %22, align 4
  %340 = load i32, i32* %21, align 4
  %341 = icmp sle i32 %339, %340
  br i1 %341, label %342, label %343

; <label>:342:                                    ; preds = %337
  br label %33

; <label>:343:                                    ; preds = %337
  %344 = call i32 @gettimeofday(%struct.timeval* %29, %struct.timezone* null) #3
  %345 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0))
  %346 = getelementptr inbounds %struct.timeval, %struct.timeval* %29, i32 0, i32 0
  %347 = load i64, i64* %346, align 8
  %348 = getelementptr inbounds %struct.timeval, %struct.timeval* %28, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = sub nsw i64 %347, %349
  %351 = mul nsw i64 %350, 1000000
  %352 = getelementptr inbounds %struct.timeval, %struct.timeval* %29, i32 0, i32 1
  %353 = load i64, i64* %352, align 8
  %354 = getelementptr inbounds %struct.timeval, %struct.timeval* %28, i32 0, i32 1
  %355 = load i64, i64* %354, align 8
  %356 = sub nsw i64 %353, %355
  %357 = add nsw i64 %351, %356
  %358 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i64 %357)
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @PA(double*) #0 {
  %2 = alloca double*, align 8
  store double* %0, double** %2, align 8
  store i32 0, i32* @J, align 4
  br label %3

; <label>:3:                                      ; preds = %85, %1
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
  br i1 %84, label %85, label %86

; <label>:85:                                     ; preds = %3
  br label %3

; <label>:86:                                     ; preds = %3
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
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @P0() #0 {
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
  ret void
}

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: nounwind
declare double @exp(double) #1

; Function Attrs: nounwind
declare double @log(double) #1

declare i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 5.0.0 (tags/RELEASE_500/final)"}
