; ModuleID = 'validation.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [73 x i8] c">>> Error in fftmisc.c: argument %d to NumberOfBitsNeeded is too small.\0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"Error in fft():  NumSamples=%u is not power of two\0A\00", align 1
@.str.1.5 = private unnamed_addr constant [7 x i8] c"RealIn\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"RealOut\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"ImagOut\00", align 1
@.str.4.6 = private unnamed_addr constant [35 x i8] c"Error in fft_float():  %s == NULL\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.timeval, align 8
  %14 = alloca %struct.timeval, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %12, align 4
  %15 = call i32 @gettimeofday(%struct.timeval* %13, %struct.timezone* null) #3
  br label %16
  br label %16

; <label>:16:                                     ; preds = %0
  store i32 8, i32* %3, align 4
  store i32 32768, i32* %2, align 4
  call void @srand(i32 1) #3
  br label %17

; <label>:17:                                     ; preds = %16
  %18 = load i32, i32* %2, align 4
  %19 = zext i32 %18 to i64
  %20 = mul i64 4, %19
  %21 = call noalias i8* @malloc(i64 %20) #3
  br label %22

; <label>:22:                                     ; preds = %17
  %23 = bitcast i8* %21 to float*
  store float* %23, float** %6, align 8
  %24 = load i32, i32* %2, align 4
  %25 = zext i32 %24 to i64
  %26 = mul i64 4, %25
  %27 = call noalias i8* @malloc(i64 %26) #3
  br label %28

; <label>:28:                                     ; preds = %22
  %29 = bitcast i8* %27 to float*
  store float* %29, float** %7, align 8
  %30 = load i32, i32* %2, align 4
  %31 = zext i32 %30 to i64
  %32 = mul i64 4, %31
  %33 = call noalias i8* @malloc(i64 %32) #3
  br label %34

; <label>:34:                                     ; preds = %28
  %35 = bitcast i8* %33 to float*
  store float* %35, float** %8, align 8
  %36 = load i32, i32* %2, align 4
  %37 = zext i32 %36 to i64
  %38 = mul i64 4, %37
  %39 = call noalias i8* @malloc(i64 %38) #3
  br label %40

; <label>:40:                                     ; preds = %34
  %41 = bitcast i8* %39 to float*
  store float* %41, float** %9, align 8
  %42 = load i32, i32* %3, align 4
  %43 = zext i32 %42 to i64
  %44 = mul i64 4, %43
  %45 = call noalias i8* @malloc(i64 %44) #3
  br label %46

; <label>:46:                                     ; preds = %40
  %47 = bitcast i8* %45 to float*
  store float* %47, float** %10, align 8
  %48 = load i32, i32* %3, align 4
  %49 = zext i32 %48 to i64
  %50 = mul i64 4, %49
  %51 = call noalias i8* @malloc(i64 %50) #3
  br label %52

; <label>:52:                                     ; preds = %46
  %53 = bitcast i8* %51 to float*
  store float* %53, float** %11, align 8
  store i32 0, i32* %4, align 4
  br label %54

; <label>:54:                                     ; preds = %75, %52
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %3, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %78

; <label>:58:                                     ; preds = %54
  %59 = call i32 @rand() #3
  br label %60

; <label>:60:                                     ; preds = %58
  %61 = srem i32 %59, 1000
  %62 = sitofp i32 %61 to float
  %63 = load float*, float** %10, align 8
  %64 = load i32, i32* %4, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %63, i64 %65
  store float %62, float* %66, align 4
  %67 = call i32 @rand() #3
  br label %68

; <label>:68:                                     ; preds = %60
  %69 = srem i32 %67, 1000
  %70 = sitofp i32 %69 to float
  %71 = load float*, float** %11, align 8
  %72 = load i32, i32* %4, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds float, float* %71, i64 %73
  store float %70, float* %74, align 4
  br label %75

; <label>:75:                                     ; preds = %68
  %76 = load i32, i32* %4, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %4, align 4
  br label %54

; <label>:78:                                     ; preds = %54
  store i32 0, i32* %4, align 4
  br label %79

; <label>:79:                                     ; preds = %160, %78
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* %2, align 4
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %83, label %163

; <label>:83:                                     ; preds = %79
  %84 = load float*, float** %6, align 8
  %85 = load i32, i32* %4, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds float, float* %84, i64 %86
  store float 0.000000e+00, float* %87, align 4
  store i32 0, i32* %5, align 4
  br label %88

; <label>:88:                                     ; preds = %156, %83
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %3, align 4
  %91 = icmp ult i32 %89, %90
  br i1 %91, label %92, label %159

; <label>:92:                                     ; preds = %88
  %93 = call i32 @rand() #3
  br label %94

; <label>:94:                                     ; preds = %92
  %95 = srem i32 %93, 2
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %124

; <label>:97:                                     ; preds = %94
  %98 = load float*, float** %10, align 8
  %99 = load i32, i32* %5, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds float, float* %98, i64 %100
  %102 = load float, float* %101, align 4
  %103 = fpext float %102 to double
  %104 = load float*, float** %11, align 8
  %105 = load i32, i32* %5, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds float, float* %104, i64 %106
  %108 = load float, float* %107, align 4
  %109 = load i32, i32* %4, align 4
  %110 = uitofp i32 %109 to float
  %111 = fmul float %108, %110
  %112 = fpext float %111 to double
  %113 = call double @cos(double %112) #3
  br label %114

; <label>:114:                                    ; preds = %97
  %115 = fmul double %103, %113
  %116 = load float*, float** %6, align 8
  %117 = load i32, i32* %4, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds float, float* %116, i64 %118
  %120 = load float, float* %119, align 4
  %121 = fpext float %120 to double
  %122 = fadd double %121, %115
  %123 = fptrunc double %122 to float
  store float %123, float* %119, align 4
  br label %151

; <label>:124:                                    ; preds = %94
  %125 = load float*, float** %10, align 8
  %126 = load i32, i32* %5, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds float, float* %125, i64 %127
  %129 = load float, float* %128, align 4
  %130 = fpext float %129 to double
  %131 = load float*, float** %11, align 8
  %132 = load i32, i32* %5, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds float, float* %131, i64 %133
  %135 = load float, float* %134, align 4
  %136 = load i32, i32* %4, align 4
  %137 = uitofp i32 %136 to float
  %138 = fmul float %135, %137
  %139 = fpext float %138 to double
  %140 = call double @sin(double %139) #3
  br label %141

; <label>:141:                                    ; preds = %124
  %142 = fmul double %130, %140
  %143 = load float*, float** %6, align 8
  %144 = load i32, i32* %4, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds float, float* %143, i64 %145
  %147 = load float, float* %146, align 4
  %148 = fpext float %147 to double
  %149 = fadd double %148, %142
  %150 = fptrunc double %149 to float
  store float %150, float* %146, align 4
  br label %151

; <label>:151:                                    ; preds = %141, %114
  %152 = load float*, float** %7, align 8
  %153 = load i32, i32* %4, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds float, float* %152, i64 %154
  store float 0.000000e+00, float* %155, align 4
  br label %156

; <label>:156:                                    ; preds = %151
  %157 = load i32, i32* %5, align 4
  %158 = add i32 %157, 1
  store i32 %158, i32* %5, align 4
  br label %88

; <label>:159:                                    ; preds = %88
  br label %160

; <label>:160:                                    ; preds = %159
  %161 = load i32, i32* %4, align 4
  %162 = add i32 %161, 1
  store i32 %162, i32* %4, align 4
  br label %79

; <label>:163:                                    ; preds = %79
  %164 = load i32, i32* %2, align 4
  %165 = load i32, i32* %12, align 4
  %166 = load float*, float** %6, align 8
  %167 = load float*, float** %7, align 8
  %168 = load float*, float** %8, align 8
  %169 = load float*, float** %9, align 8
  %170 = call i32 (i32, i32, float*, float*, float*, float*, ...) bitcast (void (i32, i32, float*, float*, float*, float*)* @fft_float to i32 (i32, i32, float*, float*, float*, float*, ...)*)(i32 %164, i32 %165, float* %166, float* %167, float* %168, float* %169)
  br label %171

; <label>:171:                                    ; preds = %163
  %172 = load float*, float** %6, align 8
  %173 = bitcast float* %172 to i8*
  call void @free(i8* %173) #3
  br label %174

; <label>:174:                                    ; preds = %171
  %175 = load float*, float** %7, align 8
  %176 = bitcast float* %175 to i8*
  call void @free(i8* %176) #3
  br label %177

; <label>:177:                                    ; preds = %174
  %178 = load float*, float** %8, align 8
  %179 = bitcast float* %178 to i8*
  call void @free(i8* %179) #3
  br label %180

; <label>:180:                                    ; preds = %177
  %181 = load float*, float** %9, align 8
  %182 = bitcast float* %181 to i8*
  call void @free(i8* %182) #3
  br label %183

; <label>:183:                                    ; preds = %180
  %184 = load float*, float** %10, align 8
  %185 = bitcast float* %184 to i8*
  call void @free(i8* %185) #3
  br label %186

; <label>:186:                                    ; preds = %183
  %187 = load float*, float** %11, align 8
  %188 = bitcast float* %187 to i8*
  call void @free(i8* %188) #3
  br label %189

; <label>:189:                                    ; preds = %186
  %190 = call i32 @gettimeofday(%struct.timeval* %14, %struct.timezone* null) #3
  br label %191

; <label>:191:                                    ; preds = %189
  %192 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = sub nsw i64 %193, %195
  %197 = mul nsw i64 %196, 1000
  %198 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = sub nsw i64 %199, %201
  %203 = sdiv i64 %202, 1000
  %204 = add nsw i64 %197, %203
  %205 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 %204)
  br label %206

; <label>:206:                                    ; preds = %191
  %207 = load i32, i32* %1, align 4
  ret i32 %207
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #1

; Function Attrs: nounwind
declare void @srand(i32) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare i32 @rand() #1

; Function Attrs: nounwind
declare double @cos(double) #1

; Function Attrs: nounwind
declare double @sin(double) #1

; Function Attrs: nounwind
declare void @free(i8*) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define i32 @IsPowerOfTwo(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  store i32 0, i32* %2, align 4
  br label %15

; <label>:7:                                      ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = sub i32 %9, 1
  %11 = and i32 %8, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %7
  store i32 0, i32* %2, align 4
  br label %15

; <label>:14:                                     ; preds = %7
  store i32 1, i32* %2, align 4
  br label %15

; <label>:15:                                     ; preds = %14, %13, %6
  %16 = load i32, i32* %2, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @NumberOfBitsNeeded(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %6, label %10

; <label>:6:                                      ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = load i32, i32* %2, align 4
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i32 0, i32 0), i32 %8)
  br label %10

; <label>:10:                                     ; preds = %6, %1
  store i32 0, i32* %3, align 4
  br label %11

; <label>:11:                                     ; preds = %20, %10
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* %3, align 4
  %14 = shl i32 1, %13
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

; <label>:17:                                     ; preds = %11
  %18 = load i32, i32* %3, align 4
  ret i32 %18

; <label>:19:                                     ; preds = %11
  br label %20

; <label>:20:                                     ; preds = %19
  %21 = load i32, i32* %3, align 4
  %22 = add i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %11
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define i32 @ReverseBits(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %7

; <label>:7:                                      ; preds = %19, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %22

; <label>:11:                                     ; preds = %7
  %12 = load i32, i32* %6, align 4
  %13 = shl i32 %12, 1
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, 1
  %16 = or i32 %13, %15
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %3, align 4
  %18 = lshr i32 %17, 1
  store i32 %18, i32* %3, align 4
  br label %19

; <label>:19:                                     ; preds = %11
  %20 = load i32, i32* %5, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %5, align 4
  br label %7

; <label>:22:                                     ; preds = %7
  %23 = load i32, i32* %6, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define double @Index_to_frequency(i32, i32) #0 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp uge i32 %6, %7
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %2
  store double 0.000000e+00, double* %3, align 8
  br label %31

; <label>:10:                                     ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = udiv i32 %12, 2
  %14 = icmp ule i32 %11, %13
  br i1 %14, label %15, label %21

; <label>:15:                                     ; preds = %10
  %16 = load i32, i32* %5, align 4
  %17 = uitofp i32 %16 to double
  %18 = load i32, i32* %4, align 4
  %19 = uitofp i32 %18 to double
  %20 = fdiv double %17, %19
  store double %20, double* %3, align 8
  br label %31

; <label>:21:                                     ; preds = %10
  br label %22

; <label>:22:                                     ; preds = %21
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = sub i32 %23, %24
  %26 = uitofp i32 %25 to double
  %27 = fsub double -0.000000e+00, %26
  %28 = load i32, i32* %4, align 4
  %29 = uitofp i32 %28 to double
  %30 = fdiv double %27, %29
  store double %30, double* %3, align 8
  br label %31

; <label>:31:                                     ; preds = %22, %15, %9
  %32 = load double, double* %3, align 8
  ret double %32
}

; Function Attrs: noinline nounwind optnone uwtable
define void @fft_float(i32, i32, float*, float*, float*, float*) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca [3 x double], align 16
  %30 = alloca [3 x double], align 16
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store float* %2, float** %9, align 8
  store float* %3, float** %10, align 8
  store float* %4, float** %11, align 8
  store float* %5, float** %12, align 8
  store double 0x401921FB54442D18, double* %20, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @IsPowerOfTwo(i32 %33)
  br label %35

; <label>:35:                                     ; preds = %6
  %36 = icmp ne i32 %34, 0
  br i1 %36, label %41, label %37

; <label>:37:                                     ; preds = %35
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i32 0, i32 0), i32 %39)
  br label %41

; <label>:41:                                     ; preds = %37, %35
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

; <label>:44:                                     ; preds = %41
  %45 = load double, double* %20, align 8
  %46 = fsub double -0.000000e+00, %45
  store double %46, double* %20, align 8
  br label %47

; <label>:47:                                     ; preds = %44, %41
  %48 = load float*, float** %9, align 8
  %49 = bitcast float* %48 to i8*
  call void @CheckPointer(i8* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.5, i32 0, i32 0))
  br label %50

; <label>:50:                                     ; preds = %47
  %51 = load float*, float** %11, align 8
  %52 = bitcast float* %51 to i8*
  call void @CheckPointer(i8* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0))
  br label %53

; <label>:53:                                     ; preds = %50
  %54 = load float*, float** %12, align 8
  %55 = bitcast float* %54 to i8*
  call void @CheckPointer(i8* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0))
  br label %56

; <label>:56:                                     ; preds = %53
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @NumberOfBitsNeeded(i32 %57)
  br label %59

; <label>:59:                                     ; preds = %56
  store i32 %58, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %60

; <label>:60:                                     ; preds = %95, %59
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %98

; <label>:64:                                     ; preds = %60
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @ReverseBits(i32 %65, i32 %66)
  br label %68

; <label>:68:                                     ; preds = %64
  store i32 %67, i32* %15, align 4
  %69 = load float*, float** %9, align 8
  %70 = load i32, i32* %14, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds float, float* %69, i64 %71
  %73 = load float, float* %72, align 4
  %74 = load float*, float** %11, align 8
  %75 = load i32, i32* %15, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds float, float* %74, i64 %76
  store float %73, float* %77, align 4
  %78 = load float*, float** %10, align 8
  %79 = icmp eq float* %78, null
  br i1 %79, label %80, label %81

; <label>:80:                                     ; preds = %68
  br label %88

; <label>:81:                                     ; preds = %68
  %82 = load float*, float** %10, align 8
  %83 = load i32, i32* %14, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds float, float* %82, i64 %84
  %86 = load float, float* %85, align 4
  %87 = fpext float %86 to double
  br label %88

; <label>:88:                                     ; preds = %81, %80
  %89 = phi double [ 0.000000e+00, %80 ], [ %87, %81 ]
  %90 = fptrunc double %89 to float
  %91 = load float*, float** %12, align 8
  %92 = load i32, i32* %15, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds float, float* %91, i64 %93
  store float %90, float* %94, align 4
  br label %95

; <label>:95:                                     ; preds = %88
  %96 = load i32, i32* %14, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %14, align 4
  br label %60

; <label>:98:                                     ; preds = %60
  store i32 1, i32* %19, align 4
  store i32 2, i32* %18, align 4
  br label %99

; <label>:99:                                     ; preds = %270, %98
  %100 = load i32, i32* %18, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp ule i32 %100, %101
  br i1 %102, label %103, label %273

; <label>:103:                                    ; preds = %99
  %104 = load double, double* %20, align 8
  %105 = load i32, i32* %18, align 4
  %106 = uitofp i32 %105 to double
  %107 = fdiv double %104, %106
  store double %107, double* %23, align 8
  %108 = load double, double* %23, align 8
  %109 = fmul double -2.000000e+00, %108
  %110 = call double @sin(double %109) #3
  br label %111

; <label>:111:                                    ; preds = %103
  store double %110, double* %24, align 8
  %112 = load double, double* %23, align 8
  %113 = fsub double -0.000000e+00, %112
  %114 = call double @sin(double %113) #3
  br label %115

; <label>:115:                                    ; preds = %111
  store double %114, double* %25, align 8
  %116 = load double, double* %23, align 8
  %117 = fmul double -2.000000e+00, %116
  %118 = call double @cos(double %117) #3
  br label %119

; <label>:119:                                    ; preds = %115
  store double %118, double* %26, align 8
  %120 = load double, double* %23, align 8
  %121 = fsub double -0.000000e+00, %120
  %122 = call double @cos(double %121) #3
  br label %123

; <label>:123:                                    ; preds = %119
  store double %122, double* %27, align 8
  %124 = load double, double* %27, align 8
  %125 = fmul double 2.000000e+00, %124
  store double %125, double* %28, align 8
  store i32 0, i32* %14, align 4
  br label %126

; <label>:126:                                    ; preds = %264, %123
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* %7, align 4
  %129 = icmp ult i32 %127, %128
  br i1 %129, label %130, label %268

; <label>:130:                                    ; preds = %126
  %131 = load double, double* %26, align 8
  %132 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 2
  store double %131, double* %132, align 16
  %133 = load double, double* %27, align 8
  %134 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 1
  store double %133, double* %134, align 8
  %135 = load double, double* %24, align 8
  %136 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 2
  store double %135, double* %136, align 16
  %137 = load double, double* %25, align 8
  %138 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 1
  store double %137, double* %138, align 8
  %139 = load i32, i32* %14, align 4
  store i32 %139, i32* %15, align 4
  store i32 0, i32* %17, align 4
  br label %140

; <label>:140:                                    ; preds = %258, %130
  %141 = load i32, i32* %17, align 4
  %142 = load i32, i32* %19, align 4
  %143 = icmp ult i32 %141, %142
  br i1 %143, label %144, label %263

; <label>:144:                                    ; preds = %140
  %145 = load double, double* %28, align 8
  %146 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 1
  %147 = load double, double* %146, align 8
  %148 = fmul double %145, %147
  %149 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 2
  %150 = load double, double* %149, align 16
  %151 = fsub double %148, %150
  %152 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 0
  store double %151, double* %152, align 16
  %153 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 1
  %154 = load double, double* %153, align 8
  %155 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 2
  store double %154, double* %155, align 16
  %156 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 0
  %157 = load double, double* %156, align 16
  %158 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 1
  store double %157, double* %158, align 8
  %159 = load double, double* %28, align 8
  %160 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 1
  %161 = load double, double* %160, align 8
  %162 = fmul double %159, %161
  %163 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 2
  %164 = load double, double* %163, align 16
  %165 = fsub double %162, %164
  %166 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 0
  store double %165, double* %166, align 16
  %167 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 1
  %168 = load double, double* %167, align 8
  %169 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 2
  store double %168, double* %169, align 16
  %170 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 0
  %171 = load double, double* %170, align 16
  %172 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 1
  store double %171, double* %172, align 8
  %173 = load i32, i32* %15, align 4
  %174 = load i32, i32* %19, align 4
  %175 = add i32 %173, %174
  store i32 %175, i32* %16, align 4
  %176 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 0
  %177 = load double, double* %176, align 16
  %178 = load float*, float** %11, align 8
  %179 = load i32, i32* %16, align 4
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds float, float* %178, i64 %180
  %182 = load float, float* %181, align 4
  %183 = fpext float %182 to double
  %184 = fmul double %177, %183
  %185 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 0
  %186 = load double, double* %185, align 16
  %187 = load float*, float** %12, align 8
  %188 = load i32, i32* %16, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds float, float* %187, i64 %189
  %191 = load float, float* %190, align 4
  %192 = fpext float %191 to double
  %193 = fmul double %186, %192
  %194 = fsub double %184, %193
  store double %194, double* %21, align 8
  %195 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 0
  %196 = load double, double* %195, align 16
  %197 = load float*, float** %12, align 8
  %198 = load i32, i32* %16, align 4
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds float, float* %197, i64 %199
  %201 = load float, float* %200, align 4
  %202 = fpext float %201 to double
  %203 = fmul double %196, %202
  %204 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 0
  %205 = load double, double* %204, align 16
  %206 = load float*, float** %11, align 8
  %207 = load i32, i32* %16, align 4
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds float, float* %206, i64 %208
  %210 = load float, float* %209, align 4
  %211 = fpext float %210 to double
  %212 = fmul double %205, %211
  %213 = fadd double %203, %212
  store double %213, double* %22, align 8
  %214 = load float*, float** %11, align 8
  %215 = load i32, i32* %15, align 4
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds float, float* %214, i64 %216
  %218 = load float, float* %217, align 4
  %219 = fpext float %218 to double
  %220 = load double, double* %21, align 8
  %221 = fsub double %219, %220
  %222 = fptrunc double %221 to float
  %223 = load float*, float** %11, align 8
  %224 = load i32, i32* %16, align 4
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds float, float* %223, i64 %225
  store float %222, float* %226, align 4
  %227 = load float*, float** %12, align 8
  %228 = load i32, i32* %15, align 4
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds float, float* %227, i64 %229
  %231 = load float, float* %230, align 4
  %232 = fpext float %231 to double
  %233 = load double, double* %22, align 8
  %234 = fsub double %232, %233
  %235 = fptrunc double %234 to float
  %236 = load float*, float** %12, align 8
  %237 = load i32, i32* %16, align 4
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds float, float* %236, i64 %238
  store float %235, float* %239, align 4
  %240 = load double, double* %21, align 8
  %241 = load float*, float** %11, align 8
  %242 = load i32, i32* %15, align 4
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds float, float* %241, i64 %243
  %245 = load float, float* %244, align 4
  %246 = fpext float %245 to double
  %247 = fadd double %246, %240
  %248 = fptrunc double %247 to float
  store float %248, float* %244, align 4
  %249 = load double, double* %22, align 8
  %250 = load float*, float** %12, align 8
  %251 = load i32, i32* %15, align 4
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds float, float* %250, i64 %252
  %254 = load float, float* %253, align 4
  %255 = fpext float %254 to double
  %256 = fadd double %255, %249
  %257 = fptrunc double %256 to float
  store float %257, float* %253, align 4
  br label %258

; <label>:258:                                    ; preds = %144
  %259 = load i32, i32* %15, align 4
  %260 = add i32 %259, 1
  store i32 %260, i32* %15, align 4
  %261 = load i32, i32* %17, align 4
  %262 = add i32 %261, 1
  store i32 %262, i32* %17, align 4
  br label %140

; <label>:263:                                    ; preds = %140
  br label %264

; <label>:264:                                    ; preds = %263
  %265 = load i32, i32* %18, align 4
  %266 = load i32, i32* %14, align 4
  %267 = add i32 %266, %265
  store i32 %267, i32* %14, align 4
  br label %126

; <label>:268:                                    ; preds = %126
  %269 = load i32, i32* %18, align 4
  store i32 %269, i32* %19, align 4
  br label %270

; <label>:270:                                    ; preds = %268
  %271 = load i32, i32* %18, align 4
  %272 = shl i32 %271, 1
  store i32 %272, i32* %18, align 4
  br label %99

; <label>:273:                                    ; preds = %99
  %274 = load i32, i32* %8, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %306

; <label>:276:                                    ; preds = %273
  %277 = load i32, i32* %7, align 4
  %278 = uitofp i32 %277 to double
  store double %278, double* %32, align 8
  store i32 0, i32* %14, align 4
  br label %279

; <label>:279:                                    ; preds = %302, %276
  %280 = load i32, i32* %14, align 4
  %281 = load i32, i32* %7, align 4
  %282 = icmp ult i32 %280, %281
  br i1 %282, label %283, label %305

; <label>:283:                                    ; preds = %279
  %284 = load double, double* %32, align 8
  %285 = load float*, float** %11, align 8
  %286 = load i32, i32* %14, align 4
  %287 = zext i32 %286 to i64
  %288 = getelementptr inbounds float, float* %285, i64 %287
  %289 = load float, float* %288, align 4
  %290 = fpext float %289 to double
  %291 = fdiv double %290, %284
  %292 = fptrunc double %291 to float
  store float %292, float* %288, align 4
  %293 = load double, double* %32, align 8
  %294 = load float*, float** %12, align 8
  %295 = load i32, i32* %14, align 4
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds float, float* %294, i64 %296
  %298 = load float, float* %297, align 4
  %299 = fpext float %298 to double
  %300 = fdiv double %299, %293
  %301 = fptrunc double %300 to float
  store float %301, float* %297, align 4
  br label %302

; <label>:302:                                    ; preds = %283
  %303 = load i32, i32* %14, align 4
  %304 = add i32 %303, 1
  store i32 %304, i32* %14, align 4
  br label %279

; <label>:305:                                    ; preds = %279
  br label %306

; <label>:306:                                    ; preds = %305, %273
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CheckPointer(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %11

; <label>:7:                                      ; preds = %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4.6, i32 0, i32 0), i8* %9)
  br label %11

; <label>:11:                                     ; preds = %7, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 5.0.0 (tags/RELEASE_500/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
