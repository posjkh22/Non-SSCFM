; ModuleID = './outputs/translated.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptree = type { i64, %struct.ptree_mask*, i8, i8, %struct.ptree*, %struct.ptree* }
%struct.ptree_mask = type { i64, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.in_addr = type { i32 }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%struct.MyNode = type { i32, double }

@.str = private unnamed_addr constant [10 x i8] c"small.udp\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"File %s doesn't seem to exist\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Allocating p-trie node\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Allocating p-trie mask data\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Allocating p-trie mask's node data\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%f %d\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c" [target finished!]\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c" [target] Execution Time: %ld\0A\00", align 1
@is_signature_queue_full = external global i32, align 4
@pat_insert_signature = global i32 0
@bit_signature = global i32 0
@free_signature = global i32 0
@malloc_signature = global i32 0
@bcopy_signature = global i32 0
@insertR_signature = global i32 0
@pat_remove_signature = global i32 0
@pat_search_signature = global i32 0
@main_signature = global i32 0
@gettimeofday_signature = global i32 0
@fopen_signature = global i32 0
@printf_signature = global i32 0
@exit_signature = global i32 0
@perror_signature = global i32 0
@llvm.memset.p0i8.i64_signature = global i32 0
@fgets_signature = global i32 0
@__isoc99_sscanf_signature = global i32 0
@htonl_signature = global i32 0
@init_monitor_signature = global i32 0
@update_signature_signature = global i32 0
@verify_signature_signature = global i32 0
@enqueue_signature_with_return_signature = global i32 0
@enqueue_signature_with_remainder_process_signature = global i32 0
@update_signature2_signature = global i32 0
@update_signature3_signature = global i32 0
@CallcheckerSet_signature = global i32 0

; Function Attrs: noinline nounwind optnone uwtable
define %struct.ptree* @pat_insert(%struct.ptree*, %struct.ptree*) #0 {
  call void @update_signature(i32* @pat_insert_signature, i32 65537)
  %3 = alloca %struct.ptree*, align 8
  %4 = alloca %struct.ptree*, align 8
  %5 = alloca %struct.ptree*, align 8
  %6 = alloca %struct.ptree*, align 8
  %7 = alloca %struct.ptree_mask*, align 8
  %8 = alloca %struct.ptree_mask*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ptree* %0, %struct.ptree** %4, align 8
  store %struct.ptree* %1, %struct.ptree** %5, align 8
  %11 = load %struct.ptree*, %struct.ptree** %5, align 8
  %12 = icmp ne %struct.ptree* %11, null
  call void @verify_signature(i32* @pat_insert_signature, i32 65537)
  br i1 %12, label %13, label %21

; <label>:13:                                     ; preds = %2
  call void @update_signature(i32* @pat_insert_signature, i32 65538)
  %14 = load %struct.ptree*, %struct.ptree** %4, align 8
  %15 = icmp ne %struct.ptree* %14, null
  call void @verify_signature(i32* @pat_insert_signature, i32 65538)
  br i1 %15, label %16, label %21

; <label>:16:                                     ; preds = %13
  call void @update_signature(i32* @pat_insert_signature, i32 65539)
  %17 = load %struct.ptree*, %struct.ptree** %4, align 8
  %18 = getelementptr inbounds %struct.ptree, %struct.ptree* %17, i32 0, i32 1
  %19 = load %struct.ptree_mask*, %struct.ptree_mask** %18, align 8
  %20 = icmp ne %struct.ptree_mask* %19, null
  call void @verify_signature(i32* @pat_insert_signature, i32 65539)
  br i1 %20, label %22, label %21

; <label>:21:                                     ; preds = %16, %13, %2
  call void @update_signature(i32* @pat_insert_signature, i32 65540)
  store %struct.ptree* null, %struct.ptree** %3, align 8
  call void @verify_signature(i32* @pat_insert_signature, i32 65540)
  br label %276

; <label>:22:                                     ; preds = %16
  call void @update_signature(i32* @pat_insert_signature, i32 65541)
  %23 = load %struct.ptree*, %struct.ptree** %4, align 8
  %24 = getelementptr inbounds %struct.ptree, %struct.ptree* %23, i32 0, i32 1
  %25 = load %struct.ptree_mask*, %struct.ptree_mask** %24, align 8
  %26 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.ptree*, %struct.ptree** %4, align 8
  %29 = getelementptr inbounds %struct.ptree, %struct.ptree* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = and i64 %30, %27
  store i64 %31, i64* %29, align 8
  %32 = load %struct.ptree*, %struct.ptree** %5, align 8
  store %struct.ptree* %32, %struct.ptree** %6, align 8
  call void @verify_signature(i32* @pat_insert_signature, i32 65541)
  br label %33

; <label>:33:                                     ; preds = %58, %22
  call void @update_signature(i32* @pat_insert_signature, i32 65542)
  %34 = load %struct.ptree*, %struct.ptree** %6, align 8
  %35 = getelementptr inbounds %struct.ptree, %struct.ptree* %34, i32 0, i32 3
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  store i32 %37, i32* %9, align 4
  %38 = load %struct.ptree*, %struct.ptree** %6, align 8
  %39 = getelementptr inbounds %struct.ptree, %struct.ptree* %38, i32 0, i32 3
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = load %struct.ptree*, %struct.ptree** %4, align 8
  %43 = getelementptr inbounds %struct.ptree, %struct.ptree* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @bit(i32 %41, i64 %44)
  call void @verify_signature(i32* @pat_insert_signature, i32 65542)
  br label %46

; <label>:46:                                     ; preds = %33
  call void @update_signature(i32* @pat_insert_signature, i32 65543)
  %47 = icmp ne i64 %45, 0
  call void @verify_signature(i32* @pat_insert_signature, i32 65543)
  br i1 %47, label %48, label %52

; <label>:48:                                     ; preds = %46
  call void @update_signature(i32* @pat_insert_signature, i32 65544)
  %49 = load %struct.ptree*, %struct.ptree** %6, align 8
  %50 = getelementptr inbounds %struct.ptree, %struct.ptree* %49, i32 0, i32 5
  %51 = load %struct.ptree*, %struct.ptree** %50, align 8
  call void @verify_signature(i32* @pat_insert_signature, i32 65544)
  br label %56

; <label>:52:                                     ; preds = %46
  call void @update_signature(i32* @pat_insert_signature, i32 65545)
  %53 = load %struct.ptree*, %struct.ptree** %6, align 8
  %54 = getelementptr inbounds %struct.ptree, %struct.ptree* %53, i32 0, i32 4
  %55 = load %struct.ptree*, %struct.ptree** %54, align 8
  call void @verify_signature(i32* @pat_insert_signature, i32 65545)
  br label %56

; <label>:56:                                     ; preds = %52, %48
  %57 = phi %struct.ptree* [ %51, %48 ], [ %55, %52 ]
  call void @update_signature(i32* @pat_insert_signature, i32 65546)
  store %struct.ptree* %57, %struct.ptree** %6, align 8
  call void @verify_signature(i32* @pat_insert_signature, i32 65546)
  br label %58

; <label>:58:                                     ; preds = %56
  call void @update_signature(i32* @pat_insert_signature, i32 65547)
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.ptree*, %struct.ptree** %6, align 8
  %61 = getelementptr inbounds %struct.ptree, %struct.ptree* %60, i32 0, i32 3
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp slt i32 %59, %63
  call void @verify_signature(i32* @pat_insert_signature, i32 65547)
  br i1 %64, label %33, label %65

; <label>:65:                                     ; preds = %58
  call void @update_signature(i32* @pat_insert_signature, i32 65548)
  %66 = load %struct.ptree*, %struct.ptree** %4, align 8
  %67 = getelementptr inbounds %struct.ptree, %struct.ptree* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.ptree*, %struct.ptree** %6, align 8
  %70 = getelementptr inbounds %struct.ptree, %struct.ptree* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %68, %71
  call void @verify_signature(i32* @pat_insert_signature, i32 65548)
  br i1 %72, label %73, label %217

; <label>:73:                                     ; preds = %65
  call void @update_signature(i32* @pat_insert_signature, i32 65549)
  store i32 0, i32* %9, align 4
  call void @verify_signature(i32* @pat_insert_signature, i32 65549)
  br label %74

; <label>:74:                                     ; preds = %119, %73
  call void @update_signature(i32* @pat_insert_signature, i32 65550)
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.ptree*, %struct.ptree** %6, align 8
  %77 = getelementptr inbounds %struct.ptree, %struct.ptree* %76, i32 0, i32 2
  %78 = load i8, i8* %77, align 8
  %79 = zext i8 %78 to i32
  %80 = icmp slt i32 %75, %79
  call void @verify_signature(i32* @pat_insert_signature, i32 65550)
  br i1 %80, label %81, label %122

; <label>:81:                                     ; preds = %74
  call void @update_signature(i32* @pat_insert_signature, i32 65551)
  %82 = load %struct.ptree*, %struct.ptree** %4, align 8
  %83 = getelementptr inbounds %struct.ptree, %struct.ptree* %82, i32 0, i32 1
  %84 = load %struct.ptree_mask*, %struct.ptree_mask** %83, align 8
  %85 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.ptree*, %struct.ptree** %6, align 8
  %88 = getelementptr inbounds %struct.ptree, %struct.ptree* %87, i32 0, i32 1
  %89 = load %struct.ptree_mask*, %struct.ptree_mask** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %89, i64 %91
  %93 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %86, %94
  call void @verify_signature(i32* @pat_insert_signature, i32 65551)
  br i1 %95, label %96, label %118

; <label>:96:                                     ; preds = %81
  call void @update_signature(i32* @pat_insert_signature, i32 65552)
  %97 = load %struct.ptree*, %struct.ptree** %4, align 8
  %98 = getelementptr inbounds %struct.ptree, %struct.ptree* %97, i32 0, i32 1
  %99 = load %struct.ptree_mask*, %struct.ptree_mask** %98, align 8
  %100 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = load %struct.ptree*, %struct.ptree** %6, align 8
  %103 = getelementptr inbounds %struct.ptree, %struct.ptree* %102, i32 0, i32 1
  %104 = load %struct.ptree_mask*, %struct.ptree_mask** %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %104, i64 %106
  %108 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %107, i32 0, i32 1
  store i8* %101, i8** %108, align 8
  %109 = load %struct.ptree*, %struct.ptree** %4, align 8
  %110 = getelementptr inbounds %struct.ptree, %struct.ptree* %109, i32 0, i32 1
  %111 = load %struct.ptree_mask*, %struct.ptree_mask** %110, align 8
  %112 = bitcast %struct.ptree_mask* %111 to i8*
  call void @free(i8* %112) #6
  call void @verify_signature(i32* @pat_insert_signature, i32 65552)
  br label %113

; <label>:113:                                    ; preds = %96
  call void @update_signature(i32* @pat_insert_signature, i32 65553)
  %114 = load %struct.ptree*, %struct.ptree** %4, align 8
  %115 = bitcast %struct.ptree* %114 to i8*
  call void @free(i8* %115) #6
  call void @verify_signature(i32* @pat_insert_signature, i32 65553)
  br label %116

; <label>:116:                                    ; preds = %113
  call void @update_signature(i32* @pat_insert_signature, i32 65554)
  store %struct.ptree* null, %struct.ptree** %4, align 8
  %117 = load %struct.ptree*, %struct.ptree** %6, align 8
  store %struct.ptree* %117, %struct.ptree** %3, align 8
  call void @verify_signature(i32* @pat_insert_signature, i32 65554)
  br label %276

; <label>:118:                                    ; preds = %81
  call void @update_signature(i32* @pat_insert_signature, i32 65555)
  call void @verify_signature(i32* @pat_insert_signature, i32 65555)
  br label %119

; <label>:119:                                    ; preds = %118
  call void @update_signature(i32* @pat_insert_signature, i32 65556)
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %9, align 4
  call void @verify_signature(i32* @pat_insert_signature, i32 65556)
  br label %74

; <label>:122:                                    ; preds = %74
  call void @update_signature(i32* @pat_insert_signature, i32 65557)
  %123 = load %struct.ptree*, %struct.ptree** %6, align 8
  %124 = getelementptr inbounds %struct.ptree, %struct.ptree* %123, i32 0, i32 2
  %125 = load i8, i8* %124, align 8
  %126 = zext i8 %125 to i32
  %127 = add nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = mul i64 16, %128
  %130 = call noalias i8* @malloc(i64 %129) #6
  call void @verify_signature(i32* @pat_insert_signature, i32 65557)
  br label %131

; <label>:131:                                    ; preds = %122
  call void @update_signature(i32* @pat_insert_signature, i32 65558)
  %132 = bitcast i8* %130 to %struct.ptree_mask*
  store %struct.ptree_mask* %132, %struct.ptree_mask** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %133 = load %struct.ptree_mask*, %struct.ptree_mask** %7, align 8
  store %struct.ptree_mask* %133, %struct.ptree_mask** %8, align 8
  call void @verify_signature(i32* @pat_insert_signature, i32 65558)
  br label %134

; <label>:134:                                    ; preds = %182, %131
  call void @update_signature(i32* @pat_insert_signature, i32 65559)
  %135 = load i32, i32* %9, align 4
  %136 = load %struct.ptree*, %struct.ptree** %6, align 8
  %137 = getelementptr inbounds %struct.ptree, %struct.ptree* %136, i32 0, i32 2
  %138 = load i8, i8* %137, align 8
  %139 = zext i8 %138 to i32
  %140 = icmp slt i32 %135, %139
  call void @verify_signature(i32* @pat_insert_signature, i32 65559)
  br i1 %140, label %141, label %185

; <label>:141:                                    ; preds = %134
  call void @update_signature(i32* @pat_insert_signature, i32 65560)
  %142 = load %struct.ptree*, %struct.ptree** %4, align 8
  %143 = getelementptr inbounds %struct.ptree, %struct.ptree* %142, i32 0, i32 1
  %144 = load %struct.ptree_mask*, %struct.ptree_mask** %143, align 8
  %145 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.ptree*, %struct.ptree** %6, align 8
  %148 = getelementptr inbounds %struct.ptree, %struct.ptree* %147, i32 0, i32 1
  %149 = load %struct.ptree_mask*, %struct.ptree_mask** %148, align 8
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %149, i64 %151
  %153 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp ugt i64 %146, %154
  call void @verify_signature(i32* @pat_insert_signature, i32 65560)
  br i1 %155, label %156, label %169

; <label>:156:                                    ; preds = %141
  call void @update_signature(i32* @pat_insert_signature, i32 65561)
  %157 = load %struct.ptree*, %struct.ptree** %6, align 8
  %158 = getelementptr inbounds %struct.ptree, %struct.ptree* %157, i32 0, i32 1
  %159 = load %struct.ptree_mask*, %struct.ptree_mask** %158, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %159, i64 %161
  %163 = bitcast %struct.ptree_mask* %162 to i8*
  %164 = load %struct.ptree_mask*, %struct.ptree_mask** %8, align 8
  %165 = bitcast %struct.ptree_mask* %164 to i8*
  call void @bcopy(i8* %163, i8* %165, i64 16) #6
  call void @verify_signature(i32* @pat_insert_signature, i32 65561)
  br label %166

; <label>:166:                                    ; preds = %156
  call void @update_signature(i32* @pat_insert_signature, i32 65562)
  %167 = load i32, i32* %9, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %9, align 4
  call void @verify_signature(i32* @pat_insert_signature, i32 65562)
  br label %181

; <label>:169:                                    ; preds = %141
  call void @update_signature(i32* @pat_insert_signature, i32 65563)
  %170 = load %struct.ptree*, %struct.ptree** %4, align 8
  %171 = getelementptr inbounds %struct.ptree, %struct.ptree* %170, i32 0, i32 1
  %172 = load %struct.ptree_mask*, %struct.ptree_mask** %171, align 8
  %173 = bitcast %struct.ptree_mask* %172 to i8*
  %174 = load %struct.ptree_mask*, %struct.ptree_mask** %8, align 8
  %175 = bitcast %struct.ptree_mask* %174 to i8*
  call void @bcopy(i8* %173, i8* %175, i64 16) #6
  call void @verify_signature(i32* @pat_insert_signature, i32 65563)
  br label %176

; <label>:176:                                    ; preds = %169
  call void @update_signature(i32* @pat_insert_signature, i32 65564)
  %177 = load %struct.ptree*, %struct.ptree** %4, align 8
  %178 = getelementptr inbounds %struct.ptree, %struct.ptree* %177, i32 0, i32 1
  %179 = load %struct.ptree_mask*, %struct.ptree_mask** %178, align 8
  %180 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %179, i32 0, i32 0
  store i64 4294967295, i64* %180, align 8
  store i32 1, i32* %10, align 4
  call void @verify_signature(i32* @pat_insert_signature, i32 65564)
  br label %181

; <label>:181:                                    ; preds = %176, %166
  call void @update_signature(i32* @pat_insert_signature, i32 65565)
  call void @verify_signature(i32* @pat_insert_signature, i32 65565)
  br label %182

; <label>:182:                                    ; preds = %181
  call void @update_signature(i32* @pat_insert_signature, i32 65566)
  %183 = load %struct.ptree_mask*, %struct.ptree_mask** %8, align 8
  %184 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %183, i32 1
  store %struct.ptree_mask* %184, %struct.ptree_mask** %8, align 8
  call void @verify_signature(i32* @pat_insert_signature, i32 65566)
  br label %134

; <label>:185:                                    ; preds = %134
  call void @update_signature(i32* @pat_insert_signature, i32 65567)
  %186 = load i32, i32* %10, align 4
  %187 = icmp ne i32 %186, 0
  call void @verify_signature(i32* @pat_insert_signature, i32 65567)
  br i1 %187, label %195, label %188

; <label>:188:                                    ; preds = %185
  call void @update_signature(i32* @pat_insert_signature, i32 65568)
  %189 = load %struct.ptree*, %struct.ptree** %4, align 8
  %190 = getelementptr inbounds %struct.ptree, %struct.ptree* %189, i32 0, i32 1
  %191 = load %struct.ptree_mask*, %struct.ptree_mask** %190, align 8
  %192 = bitcast %struct.ptree_mask* %191 to i8*
  %193 = load %struct.ptree_mask*, %struct.ptree_mask** %8, align 8
  %194 = bitcast %struct.ptree_mask* %193 to i8*
  call void @bcopy(i8* %192, i8* %194, i64 16) #6
  call void @verify_signature(i32* @pat_insert_signature, i32 65568)
  br label %195

; <label>:195:                                    ; preds = %188, %185
  call void @update_signature(i32* @pat_insert_signature, i32 65569)
  %196 = load %struct.ptree*, %struct.ptree** %4, align 8
  %197 = getelementptr inbounds %struct.ptree, %struct.ptree* %196, i32 0, i32 1
  %198 = load %struct.ptree_mask*, %struct.ptree_mask** %197, align 8
  %199 = bitcast %struct.ptree_mask* %198 to i8*
  call void @free(i8* %199) #6
  call void @verify_signature(i32* @pat_insert_signature, i32 65569)
  br label %200

; <label>:200:                                    ; preds = %195
  call void @update_signature(i32* @pat_insert_signature, i32 65570)
  %201 = load %struct.ptree*, %struct.ptree** %4, align 8
  %202 = bitcast %struct.ptree* %201 to i8*
  call void @free(i8* %202) #6
  call void @verify_signature(i32* @pat_insert_signature, i32 65570)
  br label %203

; <label>:203:                                    ; preds = %200
  call void @update_signature(i32* @pat_insert_signature, i32 65571)
  store %struct.ptree* null, %struct.ptree** %4, align 8
  %204 = load %struct.ptree*, %struct.ptree** %6, align 8
  %205 = getelementptr inbounds %struct.ptree, %struct.ptree* %204, i32 0, i32 2
  %206 = load i8, i8* %205, align 8
  %207 = add i8 %206, 1
  store i8 %207, i8* %205, align 8
  %208 = load %struct.ptree*, %struct.ptree** %6, align 8
  %209 = getelementptr inbounds %struct.ptree, %struct.ptree* %208, i32 0, i32 1
  %210 = load %struct.ptree_mask*, %struct.ptree_mask** %209, align 8
  %211 = bitcast %struct.ptree_mask* %210 to i8*
  call void @free(i8* %211) #6
  call void @verify_signature(i32* @pat_insert_signature, i32 65571)
  br label %212

; <label>:212:                                    ; preds = %203
  call void @update_signature(i32* @pat_insert_signature, i32 65572)
  %213 = load %struct.ptree_mask*, %struct.ptree_mask** %7, align 8
  %214 = load %struct.ptree*, %struct.ptree** %6, align 8
  %215 = getelementptr inbounds %struct.ptree, %struct.ptree* %214, i32 0, i32 1
  store %struct.ptree_mask* %213, %struct.ptree_mask** %215, align 8
  %216 = load %struct.ptree*, %struct.ptree** %6, align 8
  store %struct.ptree* %216, %struct.ptree** %3, align 8
  call void @verify_signature(i32* @pat_insert_signature, i32 65572)
  br label %276

; <label>:217:                                    ; preds = %65
  call void @update_signature(i32* @pat_insert_signature, i32 65573)
  store i32 1, i32* %9, align 4
  call void @verify_signature(i32* @pat_insert_signature, i32 65573)
  br label %218

; <label>:218:                                    ; preds = %238, %217
  call void @update_signature(i32* @pat_insert_signature, i32 65574)
  %219 = load i32, i32* %9, align 4
  %220 = icmp slt i32 %219, 32
  call void @verify_signature(i32* @pat_insert_signature, i32 65574)
  br i1 %220, label %221, label %235

; <label>:221:                                    ; preds = %218
  call void @update_signature(i32* @pat_insert_signature, i32 65575)
  %222 = load i32, i32* %9, align 4
  %223 = load %struct.ptree*, %struct.ptree** %4, align 8
  %224 = getelementptr inbounds %struct.ptree, %struct.ptree* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = call i64 @bit(i32 %222, i64 %225)
  call void @verify_signature(i32* @pat_insert_signature, i32 65575)
  br label %227

; <label>:227:                                    ; preds = %221
  call void @update_signature(i32* @pat_insert_signature, i32 65576)
  %228 = load i32, i32* %9, align 4
  %229 = load %struct.ptree*, %struct.ptree** %6, align 8
  %230 = getelementptr inbounds %struct.ptree, %struct.ptree* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = call i64 @bit(i32 %228, i64 %231)
  call void @verify_signature(i32* @pat_insert_signature, i32 65576)
  br label %233

; <label>:233:                                    ; preds = %227
  call void @update_signature(i32* @pat_insert_signature, i32 65577)
  %234 = icmp eq i64 %226, %232
  call void @verify_signature(i32* @pat_insert_signature, i32 65577)
  br label %235

; <label>:235:                                    ; preds = %233, %218
  %236 = phi i1 [ false, %218 ], [ %234, %233 ]
  call void @update_signature(i32* @pat_insert_signature, i32 65578)
  call void @verify_signature(i32* @pat_insert_signature, i32 65578)
  br i1 %236, label %237, label %241

; <label>:237:                                    ; preds = %235
  call void @update_signature(i32* @pat_insert_signature, i32 65579)
  call void @verify_signature(i32* @pat_insert_signature, i32 65579)
  br label %238

; <label>:238:                                    ; preds = %237
  call void @update_signature(i32* @pat_insert_signature, i32 65580)
  %239 = load i32, i32* %9, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %9, align 4
  call void @verify_signature(i32* @pat_insert_signature, i32 65580)
  br label %218

; <label>:241:                                    ; preds = %235
  call void @update_signature(i32* @pat_insert_signature, i32 65581)
  %242 = load %struct.ptree*, %struct.ptree** %5, align 8
  %243 = getelementptr inbounds %struct.ptree, %struct.ptree* %242, i32 0, i32 3
  %244 = load i8, i8* %243, align 1
  %245 = sext i8 %244 to i32
  %246 = load %struct.ptree*, %struct.ptree** %4, align 8
  %247 = getelementptr inbounds %struct.ptree, %struct.ptree* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = call i64 @bit(i32 %245, i64 %248)
  call void @verify_signature(i32* @pat_insert_signature, i32 65581)
  br label %250

; <label>:250:                                    ; preds = %241
  call void @update_signature(i32* @pat_insert_signature, i32 65582)
  %251 = icmp ne i64 %249, 0
  call void @verify_signature(i32* @pat_insert_signature, i32 65582)
  br i1 %251, label %252, label %263

; <label>:252:                                    ; preds = %250
  call void @update_signature(i32* @pat_insert_signature, i32 65583)
  %253 = load %struct.ptree*, %struct.ptree** %5, align 8
  %254 = getelementptr inbounds %struct.ptree, %struct.ptree* %253, i32 0, i32 5
  %255 = load %struct.ptree*, %struct.ptree** %254, align 8
  %256 = load %struct.ptree*, %struct.ptree** %4, align 8
  %257 = load i32, i32* %9, align 4
  %258 = load %struct.ptree*, %struct.ptree** %5, align 8
  %259 = call %struct.ptree* @insertR(%struct.ptree* %255, %struct.ptree* %256, i32 %257, %struct.ptree* %258)
  call void @verify_signature(i32* @pat_insert_signature, i32 65583)
  br label %260

; <label>:260:                                    ; preds = %252
  call void @update_signature(i32* @pat_insert_signature, i32 65584)
  %261 = load %struct.ptree*, %struct.ptree** %5, align 8
  %262 = getelementptr inbounds %struct.ptree, %struct.ptree* %261, i32 0, i32 5
  store %struct.ptree* %259, %struct.ptree** %262, align 8
  call void @verify_signature(i32* @pat_insert_signature, i32 65584)
  br label %274

; <label>:263:                                    ; preds = %250
  call void @update_signature(i32* @pat_insert_signature, i32 65585)
  %264 = load %struct.ptree*, %struct.ptree** %5, align 8
  %265 = getelementptr inbounds %struct.ptree, %struct.ptree* %264, i32 0, i32 4
  %266 = load %struct.ptree*, %struct.ptree** %265, align 8
  %267 = load %struct.ptree*, %struct.ptree** %4, align 8
  %268 = load i32, i32* %9, align 4
  %269 = load %struct.ptree*, %struct.ptree** %5, align 8
  %270 = call %struct.ptree* @insertR(%struct.ptree* %266, %struct.ptree* %267, i32 %268, %struct.ptree* %269)
  call void @verify_signature(i32* @pat_insert_signature, i32 65585)
  br label %271

; <label>:271:                                    ; preds = %263
  call void @update_signature(i32* @pat_insert_signature, i32 65586)
  %272 = load %struct.ptree*, %struct.ptree** %5, align 8
  %273 = getelementptr inbounds %struct.ptree, %struct.ptree* %272, i32 0, i32 4
  store %struct.ptree* %270, %struct.ptree** %273, align 8
  call void @verify_signature(i32* @pat_insert_signature, i32 65586)
  br label %274

; <label>:274:                                    ; preds = %271, %260
  call void @update_signature(i32* @pat_insert_signature, i32 65587)
  %275 = load %struct.ptree*, %struct.ptree** %4, align 8
  store %struct.ptree* %275, %struct.ptree** %3, align 8
  call void @verify_signature(i32* @pat_insert_signature, i32 65587)
  br label %276

; <label>:276:                                    ; preds = %274, %212, %116, %21
  call void @update_signature(i32* @pat_insert_signature, i32 65588)
  %277 = load %struct.ptree*, %struct.ptree** %3, align 8
  call void @verify_signature(i32* @pat_insert_signature, i32 65588)
  ret %struct.ptree* %277
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bit(i32, i64) #0 {
  call void @update_signature(i32* @bit_signature, i32 131073)
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = sub nsw i32 31, %6
  %8 = shl i32 1, %7
  %9 = sext i32 %8 to i64
  %10 = and i64 %5, %9
  call void @verify_signature(i32* @bit_signature, i32 131073)
  ret i64 %10
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare void @bcopy(i8*, i8*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ptree* @insertR(%struct.ptree*, %struct.ptree*, i32, %struct.ptree*) #0 {
  call void @update_signature(i32* @insertR_signature, i32 393217)
  %5 = alloca %struct.ptree*, align 8
  %6 = alloca %struct.ptree*, align 8
  %7 = alloca %struct.ptree*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ptree*, align 8
  store %struct.ptree* %0, %struct.ptree** %6, align 8
  store %struct.ptree* %1, %struct.ptree** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ptree* %3, %struct.ptree** %9, align 8
  %10 = load %struct.ptree*, %struct.ptree** %6, align 8
  %11 = getelementptr inbounds %struct.ptree, %struct.ptree* %10, i32 0, i32 3
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = load i32, i32* %8, align 4
  %15 = icmp sge i32 %13, %14
  call void @verify_signature(i32* @insertR_signature, i32 393217)
  br i1 %15, label %26, label %16

; <label>:16:                                     ; preds = %4
  call void @update_signature(i32* @insertR_signature, i32 393218)
  %17 = load %struct.ptree*, %struct.ptree** %6, align 8
  %18 = getelementptr inbounds %struct.ptree, %struct.ptree* %17, i32 0, i32 3
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = load %struct.ptree*, %struct.ptree** %9, align 8
  %22 = getelementptr inbounds %struct.ptree, %struct.ptree* %21, i32 0, i32 3
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp sle i32 %20, %24
  call void @verify_signature(i32* @insertR_signature, i32 393218)
  br i1 %25, label %26, label %62

; <label>:26:                                     ; preds = %16, %4
  call void @update_signature(i32* @insertR_signature, i32 393219)
  %27 = load i32, i32* %8, align 4
  %28 = trunc i32 %27 to i8
  %29 = load %struct.ptree*, %struct.ptree** %7, align 8
  %30 = getelementptr inbounds %struct.ptree, %struct.ptree* %29, i32 0, i32 3
  store i8 %28, i8* %30, align 1
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.ptree*, %struct.ptree** %7, align 8
  %33 = getelementptr inbounds %struct.ptree, %struct.ptree* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @bit(i32 %31, i64 %34)
  call void @verify_signature(i32* @insertR_signature, i32 393219)
  br label %36

; <label>:36:                                     ; preds = %26
  call void @update_signature(i32* @insertR_signature, i32 393220)
  %37 = icmp ne i64 %35, 0
  call void @verify_signature(i32* @insertR_signature, i32 393220)
  br i1 %37, label %38, label %40

; <label>:38:                                     ; preds = %36
  call void @update_signature(i32* @insertR_signature, i32 393221)
  %39 = load %struct.ptree*, %struct.ptree** %6, align 8
  call void @verify_signature(i32* @insertR_signature, i32 393221)
  br label %42

; <label>:40:                                     ; preds = %36
  call void @update_signature(i32* @insertR_signature, i32 393222)
  %41 = load %struct.ptree*, %struct.ptree** %7, align 8
  call void @verify_signature(i32* @insertR_signature, i32 393222)
  br label %42

; <label>:42:                                     ; preds = %40, %38
  %43 = phi %struct.ptree* [ %39, %38 ], [ %41, %40 ]
  call void @update_signature(i32* @insertR_signature, i32 393223)
  %44 = load %struct.ptree*, %struct.ptree** %7, align 8
  %45 = getelementptr inbounds %struct.ptree, %struct.ptree* %44, i32 0, i32 4
  store %struct.ptree* %43, %struct.ptree** %45, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.ptree*, %struct.ptree** %7, align 8
  %48 = getelementptr inbounds %struct.ptree, %struct.ptree* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @bit(i32 %46, i64 %49)
  call void @verify_signature(i32* @insertR_signature, i32 393223)
  br label %51

; <label>:51:                                     ; preds = %42
  call void @update_signature(i32* @insertR_signature, i32 393224)
  %52 = icmp ne i64 %50, 0
  call void @verify_signature(i32* @insertR_signature, i32 393224)
  br i1 %52, label %53, label %55

; <label>:53:                                     ; preds = %51
  call void @update_signature(i32* @insertR_signature, i32 393225)
  %54 = load %struct.ptree*, %struct.ptree** %7, align 8
  call void @verify_signature(i32* @insertR_signature, i32 393225)
  br label %57

; <label>:55:                                     ; preds = %51
  call void @update_signature(i32* @insertR_signature, i32 393226)
  %56 = load %struct.ptree*, %struct.ptree** %6, align 8
  call void @verify_signature(i32* @insertR_signature, i32 393226)
  br label %57

; <label>:57:                                     ; preds = %55, %53
  %58 = phi %struct.ptree* [ %54, %53 ], [ %56, %55 ]
  call void @update_signature(i32* @insertR_signature, i32 393227)
  %59 = load %struct.ptree*, %struct.ptree** %7, align 8
  %60 = getelementptr inbounds %struct.ptree, %struct.ptree* %59, i32 0, i32 5
  store %struct.ptree* %58, %struct.ptree** %60, align 8
  %61 = load %struct.ptree*, %struct.ptree** %7, align 8
  store %struct.ptree* %61, %struct.ptree** %5, align 8
  call void @verify_signature(i32* @insertR_signature, i32 393227)
  br label %97

; <label>:62:                                     ; preds = %16
  call void @update_signature(i32* @insertR_signature, i32 393228)
  %63 = load %struct.ptree*, %struct.ptree** %6, align 8
  %64 = getelementptr inbounds %struct.ptree, %struct.ptree* %63, i32 0, i32 3
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = load %struct.ptree*, %struct.ptree** %7, align 8
  %68 = getelementptr inbounds %struct.ptree, %struct.ptree* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @bit(i32 %66, i64 %69)
  call void @verify_signature(i32* @insertR_signature, i32 393228)
  br label %71

; <label>:71:                                     ; preds = %62
  call void @update_signature(i32* @insertR_signature, i32 393229)
  %72 = icmp ne i64 %70, 0
  call void @verify_signature(i32* @insertR_signature, i32 393229)
  br i1 %72, label %73, label %84

; <label>:73:                                     ; preds = %71
  call void @update_signature(i32* @insertR_signature, i32 393230)
  %74 = load %struct.ptree*, %struct.ptree** %6, align 8
  %75 = getelementptr inbounds %struct.ptree, %struct.ptree* %74, i32 0, i32 5
  %76 = load %struct.ptree*, %struct.ptree** %75, align 8
  %77 = load %struct.ptree*, %struct.ptree** %7, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.ptree*, %struct.ptree** %6, align 8
  %80 = call %struct.ptree* @insertR(%struct.ptree* %76, %struct.ptree* %77, i32 %78, %struct.ptree* %79)
  call void @verify_signature(i32* @insertR_signature, i32 393230)
  br label %81

; <label>:81:                                     ; preds = %73
  call void @update_signature(i32* @insertR_signature, i32 393231)
  %82 = load %struct.ptree*, %struct.ptree** %6, align 8
  %83 = getelementptr inbounds %struct.ptree, %struct.ptree* %82, i32 0, i32 5
  store %struct.ptree* %80, %struct.ptree** %83, align 8
  call void @verify_signature(i32* @insertR_signature, i32 393231)
  br label %95

; <label>:84:                                     ; preds = %71
  call void @update_signature(i32* @insertR_signature, i32 393232)
  %85 = load %struct.ptree*, %struct.ptree** %6, align 8
  %86 = getelementptr inbounds %struct.ptree, %struct.ptree* %85, i32 0, i32 4
  %87 = load %struct.ptree*, %struct.ptree** %86, align 8
  %88 = load %struct.ptree*, %struct.ptree** %7, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.ptree*, %struct.ptree** %6, align 8
  %91 = call %struct.ptree* @insertR(%struct.ptree* %87, %struct.ptree* %88, i32 %89, %struct.ptree* %90)
  call void @verify_signature(i32* @insertR_signature, i32 393232)
  br label %92

; <label>:92:                                     ; preds = %84
  call void @update_signature(i32* @insertR_signature, i32 393233)
  %93 = load %struct.ptree*, %struct.ptree** %6, align 8
  %94 = getelementptr inbounds %struct.ptree, %struct.ptree* %93, i32 0, i32 4
  store %struct.ptree* %91, %struct.ptree** %94, align 8
  call void @verify_signature(i32* @insertR_signature, i32 393233)
  br label %95

; <label>:95:                                     ; preds = %92, %81
  call void @update_signature(i32* @insertR_signature, i32 393234)
  %96 = load %struct.ptree*, %struct.ptree** %6, align 8
  store %struct.ptree* %96, %struct.ptree** %5, align 8
  call void @verify_signature(i32* @insertR_signature, i32 393234)
  br label %97

; <label>:97:                                     ; preds = %95, %57
  call void @update_signature(i32* @insertR_signature, i32 393235)
  %98 = load %struct.ptree*, %struct.ptree** %5, align 8
  call void @verify_signature(i32* @insertR_signature, i32 393235)
  ret %struct.ptree* %98
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @pat_remove(%struct.ptree*, %struct.ptree*) #0 {
  call void @update_signature(i32* @pat_remove_signature, i32 458753)
  %3 = alloca i32, align 4
  %4 = alloca %struct.ptree*, align 8
  %5 = alloca %struct.ptree*, align 8
  %6 = alloca %struct.ptree*, align 8
  %7 = alloca %struct.ptree*, align 8
  %8 = alloca %struct.ptree*, align 8
  %9 = alloca %struct.ptree*, align 8
  %10 = alloca %struct.ptree*, align 8
  %11 = alloca %struct.ptree_mask*, align 8
  %12 = alloca %struct.ptree_mask*, align 8
  %13 = alloca i32, align 4
  store %struct.ptree* %0, %struct.ptree** %4, align 8
  store %struct.ptree* %1, %struct.ptree** %5, align 8
  %14 = load %struct.ptree*, %struct.ptree** %4, align 8
  %15 = icmp ne %struct.ptree* %14, null
  call void @verify_signature(i32* @pat_remove_signature, i32 458753)
  br i1 %15, label %16, label %24

; <label>:16:                                     ; preds = %2
  call void @update_signature(i32* @pat_remove_signature, i32 458754)
  %17 = load %struct.ptree*, %struct.ptree** %4, align 8
  %18 = getelementptr inbounds %struct.ptree, %struct.ptree* %17, i32 0, i32 1
  %19 = load %struct.ptree_mask*, %struct.ptree_mask** %18, align 8
  %20 = icmp ne %struct.ptree_mask* %19, null
  call void @verify_signature(i32* @pat_remove_signature, i32 458754)
  br i1 %20, label %21, label %24

; <label>:21:                                     ; preds = %16
  call void @update_signature(i32* @pat_remove_signature, i32 458755)
  %22 = load %struct.ptree*, %struct.ptree** %10, align 8
  %23 = icmp ne %struct.ptree* %22, null
  call void @verify_signature(i32* @pat_remove_signature, i32 458755)
  br i1 %23, label %25, label %24

; <label>:24:                                     ; preds = %21, %16, %2
  call void @update_signature(i32* @pat_remove_signature, i32 458756)
  store i32 0, i32* %3, align 4
  call void @verify_signature(i32* @pat_remove_signature, i32 458756)
  br label %347

; <label>:25:                                     ; preds = %21
  call void @update_signature(i32* @pat_remove_signature, i32 458757)
  %26 = load %struct.ptree*, %struct.ptree** %5, align 8
  store %struct.ptree* %26, %struct.ptree** %10, align 8
  store %struct.ptree* %26, %struct.ptree** %6, align 8
  store %struct.ptree* %26, %struct.ptree** %7, align 8
  call void @verify_signature(i32* @pat_remove_signature, i32 458757)
  br label %27

; <label>:27:                                     ; preds = %54, %25
  call void @update_signature(i32* @pat_remove_signature, i32 458758)
  %28 = load %struct.ptree*, %struct.ptree** %10, align 8
  %29 = getelementptr inbounds %struct.ptree, %struct.ptree* %28, i32 0, i32 3
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  store i32 %31, i32* %13, align 4
  %32 = load %struct.ptree*, %struct.ptree** %6, align 8
  store %struct.ptree* %32, %struct.ptree** %7, align 8
  %33 = load %struct.ptree*, %struct.ptree** %10, align 8
  store %struct.ptree* %33, %struct.ptree** %6, align 8
  %34 = load %struct.ptree*, %struct.ptree** %10, align 8
  %35 = getelementptr inbounds %struct.ptree, %struct.ptree* %34, i32 0, i32 3
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = load %struct.ptree*, %struct.ptree** %4, align 8
  %39 = getelementptr inbounds %struct.ptree, %struct.ptree* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @bit(i32 %37, i64 %40)
  call void @verify_signature(i32* @pat_remove_signature, i32 458758)
  br label %42

; <label>:42:                                     ; preds = %27
  call void @update_signature(i32* @pat_remove_signature, i32 458759)
  %43 = icmp ne i64 %41, 0
  call void @verify_signature(i32* @pat_remove_signature, i32 458759)
  br i1 %43, label %44, label %48

; <label>:44:                                     ; preds = %42
  call void @update_signature(i32* @pat_remove_signature, i32 458760)
  %45 = load %struct.ptree*, %struct.ptree** %10, align 8
  %46 = getelementptr inbounds %struct.ptree, %struct.ptree* %45, i32 0, i32 5
  %47 = load %struct.ptree*, %struct.ptree** %46, align 8
  call void @verify_signature(i32* @pat_remove_signature, i32 458760)
  br label %52

; <label>:48:                                     ; preds = %42
  call void @update_signature(i32* @pat_remove_signature, i32 458761)
  %49 = load %struct.ptree*, %struct.ptree** %10, align 8
  %50 = getelementptr inbounds %struct.ptree, %struct.ptree* %49, i32 0, i32 4
  %51 = load %struct.ptree*, %struct.ptree** %50, align 8
  call void @verify_signature(i32* @pat_remove_signature, i32 458761)
  br label %52

; <label>:52:                                     ; preds = %48, %44
  %53 = phi %struct.ptree* [ %47, %44 ], [ %51, %48 ]
  call void @update_signature(i32* @pat_remove_signature, i32 458762)
  store %struct.ptree* %53, %struct.ptree** %10, align 8
  call void @verify_signature(i32* @pat_remove_signature, i32 458762)
  br label %54

; <label>:54:                                     ; preds = %52
  call void @update_signature(i32* @pat_remove_signature, i32 458763)
  %55 = load i32, i32* %13, align 4
  %56 = load %struct.ptree*, %struct.ptree** %10, align 8
  %57 = getelementptr inbounds %struct.ptree, %struct.ptree* %56, i32 0, i32 3
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp slt i32 %55, %59
  call void @verify_signature(i32* @pat_remove_signature, i32 458763)
  br i1 %60, label %27, label %61

; <label>:61:                                     ; preds = %54
  call void @update_signature(i32* @pat_remove_signature, i32 458764)
  %62 = load %struct.ptree*, %struct.ptree** %10, align 8
  %63 = getelementptr inbounds %struct.ptree, %struct.ptree* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.ptree*, %struct.ptree** %4, align 8
  %66 = getelementptr inbounds %struct.ptree, %struct.ptree* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %64, %67
  call void @verify_signature(i32* @pat_remove_signature, i32 458764)
  br i1 %68, label %69, label %70

; <label>:69:                                     ; preds = %61
  call void @update_signature(i32* @pat_remove_signature, i32 458765)
  store i32 0, i32* %3, align 4
  call void @verify_signature(i32* @pat_remove_signature, i32 458765)
  br label %347

; <label>:70:                                     ; preds = %61
  call void @update_signature(i32* @pat_remove_signature, i32 458766)
  %71 = load %struct.ptree*, %struct.ptree** %10, align 8
  %72 = getelementptr inbounds %struct.ptree, %struct.ptree* %71, i32 0, i32 2
  %73 = load i8, i8* %72, align 8
  %74 = zext i8 %73 to i32
  %75 = icmp eq i32 %74, 1
  call void @verify_signature(i32* @pat_remove_signature, i32 458766)
  br i1 %75, label %76, label %249

; <label>:76:                                     ; preds = %70
  call void @update_signature(i32* @pat_remove_signature, i32 458767)
  %77 = load %struct.ptree*, %struct.ptree** %10, align 8
  %78 = getelementptr inbounds %struct.ptree, %struct.ptree* %77, i32 0, i32 3
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 0
  call void @verify_signature(i32* @pat_remove_signature, i32 458767)
  br i1 %81, label %82, label %83

; <label>:82:                                     ; preds = %76
  call void @update_signature(i32* @pat_remove_signature, i32 458768)
  store i32 0, i32* %3, align 4
  call void @verify_signature(i32* @pat_remove_signature, i32 458768)
  br label %347

; <label>:83:                                     ; preds = %76
  call void @update_signature(i32* @pat_remove_signature, i32 458769)
  %84 = load %struct.ptree*, %struct.ptree** %10, align 8
  %85 = getelementptr inbounds %struct.ptree, %struct.ptree* %84, i32 0, i32 1
  %86 = load %struct.ptree_mask*, %struct.ptree_mask** %85, align 8
  %87 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.ptree*, %struct.ptree** %4, align 8
  %90 = getelementptr inbounds %struct.ptree, %struct.ptree* %89, i32 0, i32 1
  %91 = load %struct.ptree_mask*, %struct.ptree_mask** %90, align 8
  %92 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %88, %93
  call void @verify_signature(i32* @pat_remove_signature, i32 458769)
  br i1 %94, label %95, label %96

; <label>:95:                                     ; preds = %83
  call void @update_signature(i32* @pat_remove_signature, i32 458770)
  store i32 0, i32* %3, align 4
  call void @verify_signature(i32* @pat_remove_signature, i32 458770)
  br label %347

; <label>:96:                                     ; preds = %83
  call void @update_signature(i32* @pat_remove_signature, i32 458771)
  %97 = load %struct.ptree*, %struct.ptree** %6, align 8
  store %struct.ptree* %97, %struct.ptree** %8, align 8
  store %struct.ptree* %97, %struct.ptree** %9, align 8
  call void @verify_signature(i32* @pat_remove_signature, i32 458771)
  br label %98

; <label>:98:                                     ; preds = %124, %96
  call void @update_signature(i32* @pat_remove_signature, i32 458772)
  %99 = load %struct.ptree*, %struct.ptree** %8, align 8
  %100 = getelementptr inbounds %struct.ptree, %struct.ptree* %99, i32 0, i32 3
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  store i32 %102, i32* %13, align 4
  %103 = load %struct.ptree*, %struct.ptree** %8, align 8
  store %struct.ptree* %103, %struct.ptree** %9, align 8
  %104 = load %struct.ptree*, %struct.ptree** %8, align 8
  %105 = getelementptr inbounds %struct.ptree, %struct.ptree* %104, i32 0, i32 3
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = load %struct.ptree*, %struct.ptree** %6, align 8
  %109 = getelementptr inbounds %struct.ptree, %struct.ptree* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i64 @bit(i32 %107, i64 %110)
  call void @verify_signature(i32* @pat_remove_signature, i32 458772)
  br label %112

; <label>:112:                                    ; preds = %98
  call void @update_signature(i32* @pat_remove_signature, i32 458773)
  %113 = icmp ne i64 %111, 0
  call void @verify_signature(i32* @pat_remove_signature, i32 458773)
  br i1 %113, label %114, label %118

; <label>:114:                                    ; preds = %112
  call void @update_signature(i32* @pat_remove_signature, i32 458774)
  %115 = load %struct.ptree*, %struct.ptree** %8, align 8
  %116 = getelementptr inbounds %struct.ptree, %struct.ptree* %115, i32 0, i32 5
  %117 = load %struct.ptree*, %struct.ptree** %116, align 8
  call void @verify_signature(i32* @pat_remove_signature, i32 458774)
  br label %122

; <label>:118:                                    ; preds = %112
  call void @update_signature(i32* @pat_remove_signature, i32 458775)
  %119 = load %struct.ptree*, %struct.ptree** %8, align 8
  %120 = getelementptr inbounds %struct.ptree, %struct.ptree* %119, i32 0, i32 4
  %121 = load %struct.ptree*, %struct.ptree** %120, align 8
  call void @verify_signature(i32* @pat_remove_signature, i32 458775)
  br label %122

; <label>:122:                                    ; preds = %118, %114
  %123 = phi %struct.ptree* [ %117, %114 ], [ %121, %118 ]
  call void @update_signature(i32* @pat_remove_signature, i32 458776)
  store %struct.ptree* %123, %struct.ptree** %8, align 8
  call void @verify_signature(i32* @pat_remove_signature, i32 458776)
  br label %124

; <label>:124:                                    ; preds = %122
  call void @update_signature(i32* @pat_remove_signature, i32 458777)
  %125 = load i32, i32* %13, align 4
  %126 = load %struct.ptree*, %struct.ptree** %8, align 8
  %127 = getelementptr inbounds %struct.ptree, %struct.ptree* %126, i32 0, i32 3
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp slt i32 %125, %129
  call void @verify_signature(i32* @pat_remove_signature, i32 458777)
  br i1 %130, label %98, label %131

; <label>:131:                                    ; preds = %124
  call void @update_signature(i32* @pat_remove_signature, i32 458778)
  %132 = load %struct.ptree*, %struct.ptree** %9, align 8
  %133 = getelementptr inbounds %struct.ptree, %struct.ptree* %132, i32 0, i32 3
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = load %struct.ptree*, %struct.ptree** %6, align 8
  %137 = getelementptr inbounds %struct.ptree, %struct.ptree* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = call i64 @bit(i32 %135, i64 %138)
  call void @verify_signature(i32* @pat_remove_signature, i32 458778)
  br label %140

; <label>:140:                                    ; preds = %131
  call void @update_signature(i32* @pat_remove_signature, i32 458779)
  %141 = icmp ne i64 %139, 0
  call void @verify_signature(i32* @pat_remove_signature, i32 458779)
  br i1 %141, label %142, label %146

; <label>:142:                                    ; preds = %140
  call void @update_signature(i32* @pat_remove_signature, i32 458780)
  %143 = load %struct.ptree*, %struct.ptree** %10, align 8
  %144 = load %struct.ptree*, %struct.ptree** %9, align 8
  %145 = getelementptr inbounds %struct.ptree, %struct.ptree* %144, i32 0, i32 5
  store %struct.ptree* %143, %struct.ptree** %145, align 8
  call void @verify_signature(i32* @pat_remove_signature, i32 458780)
  br label %150

; <label>:146:                                    ; preds = %140
  call void @update_signature(i32* @pat_remove_signature, i32 458781)
  %147 = load %struct.ptree*, %struct.ptree** %10, align 8
  %148 = load %struct.ptree*, %struct.ptree** %9, align 8
  %149 = getelementptr inbounds %struct.ptree, %struct.ptree* %148, i32 0, i32 4
  store %struct.ptree* %147, %struct.ptree** %149, align 8
  call void @verify_signature(i32* @pat_remove_signature, i32 458781)
  br label %150

; <label>:150:                                    ; preds = %146, %142
  call void @update_signature(i32* @pat_remove_signature, i32 458782)
  %151 = load %struct.ptree*, %struct.ptree** %7, align 8
  %152 = getelementptr inbounds %struct.ptree, %struct.ptree* %151, i32 0, i32 3
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = load %struct.ptree*, %struct.ptree** %4, align 8
  %156 = getelementptr inbounds %struct.ptree, %struct.ptree* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = call i64 @bit(i32 %154, i64 %157)
  call void @verify_signature(i32* @pat_remove_signature, i32 458782)
  br label %159

; <label>:159:                                    ; preds = %150
  call void @update_signature(i32* @pat_remove_signature, i32 458783)
  %160 = icmp ne i64 %158, 0
  call void @verify_signature(i32* @pat_remove_signature, i32 458783)
  br i1 %160, label %161, label %184

; <label>:161:                                    ; preds = %159
  call void @update_signature(i32* @pat_remove_signature, i32 458784)
  %162 = load %struct.ptree*, %struct.ptree** %6, align 8
  %163 = getelementptr inbounds %struct.ptree, %struct.ptree* %162, i32 0, i32 3
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = load %struct.ptree*, %struct.ptree** %4, align 8
  %167 = getelementptr inbounds %struct.ptree, %struct.ptree* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = call i64 @bit(i32 %165, i64 %168)
  call void @verify_signature(i32* @pat_remove_signature, i32 458784)
  br label %170

; <label>:170:                                    ; preds = %161
  call void @update_signature(i32* @pat_remove_signature, i32 458785)
  %171 = icmp ne i64 %169, 0
  call void @verify_signature(i32* @pat_remove_signature, i32 458785)
  br i1 %171, label %172, label %176

; <label>:172:                                    ; preds = %170
  call void @update_signature(i32* @pat_remove_signature, i32 458786)
  %173 = load %struct.ptree*, %struct.ptree** %6, align 8
  %174 = getelementptr inbounds %struct.ptree, %struct.ptree* %173, i32 0, i32 4
  %175 = load %struct.ptree*, %struct.ptree** %174, align 8
  call void @verify_signature(i32* @pat_remove_signature, i32 458786)
  br label %180

; <label>:176:                                    ; preds = %170
  call void @update_signature(i32* @pat_remove_signature, i32 458787)
  %177 = load %struct.ptree*, %struct.ptree** %6, align 8
  %178 = getelementptr inbounds %struct.ptree, %struct.ptree* %177, i32 0, i32 5
  %179 = load %struct.ptree*, %struct.ptree** %178, align 8
  call void @verify_signature(i32* @pat_remove_signature, i32 458787)
  br label %180

; <label>:180:                                    ; preds = %176, %172
  %181 = phi %struct.ptree* [ %175, %172 ], [ %179, %176 ]
  call void @update_signature(i32* @pat_remove_signature, i32 458788)
  %182 = load %struct.ptree*, %struct.ptree** %7, align 8
  %183 = getelementptr inbounds %struct.ptree, %struct.ptree* %182, i32 0, i32 5
  store %struct.ptree* %181, %struct.ptree** %183, align 8
  call void @verify_signature(i32* @pat_remove_signature, i32 458788)
  br label %207

; <label>:184:                                    ; preds = %159
  call void @update_signature(i32* @pat_remove_signature, i32 458789)
  %185 = load %struct.ptree*, %struct.ptree** %6, align 8
  %186 = getelementptr inbounds %struct.ptree, %struct.ptree* %185, i32 0, i32 3
  %187 = load i8, i8* %186, align 1
  %188 = sext i8 %187 to i32
  %189 = load %struct.ptree*, %struct.ptree** %4, align 8
  %190 = getelementptr inbounds %struct.ptree, %struct.ptree* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = call i64 @bit(i32 %188, i64 %191)
  call void @verify_signature(i32* @pat_remove_signature, i32 458789)
  br label %193

; <label>:193:                                    ; preds = %184
  call void @update_signature(i32* @pat_remove_signature, i32 458790)
  %194 = icmp ne i64 %192, 0
  call void @verify_signature(i32* @pat_remove_signature, i32 458790)
  br i1 %194, label %195, label %199

; <label>:195:                                    ; preds = %193
  call void @update_signature(i32* @pat_remove_signature, i32 458791)
  %196 = load %struct.ptree*, %struct.ptree** %6, align 8
  %197 = getelementptr inbounds %struct.ptree, %struct.ptree* %196, i32 0, i32 4
  %198 = load %struct.ptree*, %struct.ptree** %197, align 8
  call void @verify_signature(i32* @pat_remove_signature, i32 458791)
  br label %203

; <label>:199:                                    ; preds = %193
  call void @update_signature(i32* @pat_remove_signature, i32 458792)
  %200 = load %struct.ptree*, %struct.ptree** %6, align 8
  %201 = getelementptr inbounds %struct.ptree, %struct.ptree* %200, i32 0, i32 5
  %202 = load %struct.ptree*, %struct.ptree** %201, align 8
  call void @verify_signature(i32* @pat_remove_signature, i32 458792)
  br label %203

; <label>:203:                                    ; preds = %199, %195
  %204 = phi %struct.ptree* [ %198, %195 ], [ %202, %199 ]
  call void @update_signature(i32* @pat_remove_signature, i32 458793)
  %205 = load %struct.ptree*, %struct.ptree** %7, align 8
  %206 = getelementptr inbounds %struct.ptree, %struct.ptree* %205, i32 0, i32 4
  store %struct.ptree* %204, %struct.ptree** %206, align 8
  call void @verify_signature(i32* @pat_remove_signature, i32 458793)
  br label %207

; <label>:207:                                    ; preds = %203, %180
  call void @update_signature(i32* @pat_remove_signature, i32 458794)
  %208 = load %struct.ptree*, %struct.ptree** %10, align 8
  %209 = getelementptr inbounds %struct.ptree, %struct.ptree* %208, i32 0, i32 1
  %210 = load %struct.ptree_mask*, %struct.ptree_mask** %209, align 8
  %211 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %210, i32 0, i32 1
  %212 = load i8*, i8** %211, align 8
  %213 = icmp ne i8* %212, null
  call void @verify_signature(i32* @pat_remove_signature, i32 458794)
  br i1 %213, label %214, label %220

; <label>:214:                                    ; preds = %207
  call void @update_signature(i32* @pat_remove_signature, i32 458795)
  %215 = load %struct.ptree*, %struct.ptree** %10, align 8
  %216 = getelementptr inbounds %struct.ptree, %struct.ptree* %215, i32 0, i32 1
  %217 = load %struct.ptree_mask*, %struct.ptree_mask** %216, align 8
  %218 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %217, i32 0, i32 1
  %219 = load i8*, i8** %218, align 8
  call void @free(i8* %219) #6
  call void @verify_signature(i32* @pat_remove_signature, i32 458795)
  br label %220

; <label>:220:                                    ; preds = %214, %207
  call void @update_signature(i32* @pat_remove_signature, i32 458796)
  %221 = load %struct.ptree*, %struct.ptree** %10, align 8
  %222 = getelementptr inbounds %struct.ptree, %struct.ptree* %221, i32 0, i32 1
  %223 = load %struct.ptree_mask*, %struct.ptree_mask** %222, align 8
  %224 = bitcast %struct.ptree_mask* %223 to i8*
  call void @free(i8* %224) #6
  call void @verify_signature(i32* @pat_remove_signature, i32 458796)
  br label %225

; <label>:225:                                    ; preds = %220
  call void @update_signature(i32* @pat_remove_signature, i32 458797)
  %226 = load %struct.ptree*, %struct.ptree** %10, align 8
  %227 = load %struct.ptree*, %struct.ptree** %6, align 8
  %228 = icmp ne %struct.ptree* %226, %227
  call void @verify_signature(i32* @pat_remove_signature, i32 458797)
  br i1 %228, label %229, label %245

; <label>:229:                                    ; preds = %225
  call void @update_signature(i32* @pat_remove_signature, i32 458798)
  %230 = load %struct.ptree*, %struct.ptree** %6, align 8
  %231 = getelementptr inbounds %struct.ptree, %struct.ptree* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.ptree*, %struct.ptree** %10, align 8
  %234 = getelementptr inbounds %struct.ptree, %struct.ptree* %233, i32 0, i32 0
  store i64 %232, i64* %234, align 8
  %235 = load %struct.ptree*, %struct.ptree** %6, align 8
  %236 = getelementptr inbounds %struct.ptree, %struct.ptree* %235, i32 0, i32 1
  %237 = load %struct.ptree_mask*, %struct.ptree_mask** %236, align 8
  %238 = load %struct.ptree*, %struct.ptree** %10, align 8
  %239 = getelementptr inbounds %struct.ptree, %struct.ptree* %238, i32 0, i32 1
  store %struct.ptree_mask* %237, %struct.ptree_mask** %239, align 8
  %240 = load %struct.ptree*, %struct.ptree** %6, align 8
  %241 = getelementptr inbounds %struct.ptree, %struct.ptree* %240, i32 0, i32 2
  %242 = load i8, i8* %241, align 8
  %243 = load %struct.ptree*, %struct.ptree** %10, align 8
  %244 = getelementptr inbounds %struct.ptree, %struct.ptree* %243, i32 0, i32 2
  store i8 %242, i8* %244, align 8
  call void @verify_signature(i32* @pat_remove_signature, i32 458798)
  br label %245

; <label>:245:                                    ; preds = %229, %225
  call void @update_signature(i32* @pat_remove_signature, i32 458799)
  %246 = load %struct.ptree*, %struct.ptree** %6, align 8
  %247 = bitcast %struct.ptree* %246 to i8*
  call void @free(i8* %247) #6
  call void @verify_signature(i32* @pat_remove_signature, i32 458799)
  br label %248

; <label>:248:                                    ; preds = %245
  call void @update_signature(i32* @pat_remove_signature, i32 458800)
  store i32 1, i32* %3, align 4
  call void @verify_signature(i32* @pat_remove_signature, i32 458800)
  br label %347

; <label>:249:                                    ; preds = %70
  call void @update_signature(i32* @pat_remove_signature, i32 458801)
  store i32 0, i32* %13, align 4
  call void @verify_signature(i32* @pat_remove_signature, i32 458801)
  br label %250

; <label>:250:                                    ; preds = %274, %249
  call void @update_signature(i32* @pat_remove_signature, i32 458802)
  %251 = load i32, i32* %13, align 4
  %252 = load %struct.ptree*, %struct.ptree** %10, align 8
  %253 = getelementptr inbounds %struct.ptree, %struct.ptree* %252, i32 0, i32 2
  %254 = load i8, i8* %253, align 8
  %255 = zext i8 %254 to i32
  %256 = icmp slt i32 %251, %255
  call void @verify_signature(i32* @pat_remove_signature, i32 458802)
  br i1 %256, label %257, label %277

; <label>:257:                                    ; preds = %250
  call void @update_signature(i32* @pat_remove_signature, i32 458803)
  %258 = load %struct.ptree*, %struct.ptree** %4, align 8
  %259 = getelementptr inbounds %struct.ptree, %struct.ptree* %258, i32 0, i32 1
  %260 = load %struct.ptree_mask*, %struct.ptree_mask** %259, align 8
  %261 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = load %struct.ptree*, %struct.ptree** %10, align 8
  %264 = getelementptr inbounds %struct.ptree, %struct.ptree* %263, i32 0, i32 1
  %265 = load %struct.ptree_mask*, %struct.ptree_mask** %264, align 8
  %266 = load i32, i32* %13, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %265, i64 %267
  %269 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = icmp eq i64 %262, %270
  call void @verify_signature(i32* @pat_remove_signature, i32 458803)
  br i1 %271, label %272, label %273

; <label>:272:                                    ; preds = %257
  call void @update_signature(i32* @pat_remove_signature, i32 458804)
  call void @verify_signature(i32* @pat_remove_signature, i32 458804)
  br label %277

; <label>:273:                                    ; preds = %257
  call void @update_signature(i32* @pat_remove_signature, i32 458805)
  call void @verify_signature(i32* @pat_remove_signature, i32 458805)
  br label %274

; <label>:274:                                    ; preds = %273
  call void @update_signature(i32* @pat_remove_signature, i32 458806)
  %275 = load i32, i32* %13, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %13, align 4
  call void @verify_signature(i32* @pat_remove_signature, i32 458806)
  br label %250

; <label>:277:                                    ; preds = %272, %250
  call void @update_signature(i32* @pat_remove_signature, i32 458807)
  %278 = load i32, i32* %13, align 4
  %279 = load %struct.ptree*, %struct.ptree** %10, align 8
  %280 = getelementptr inbounds %struct.ptree, %struct.ptree* %279, i32 0, i32 2
  %281 = load i8, i8* %280, align 8
  %282 = zext i8 %281 to i32
  %283 = icmp sge i32 %278, %282
  call void @verify_signature(i32* @pat_remove_signature, i32 458807)
  br i1 %283, label %284, label %285

; <label>:284:                                    ; preds = %277
  call void @update_signature(i32* @pat_remove_signature, i32 458808)
  store i32 0, i32* %3, align 4
  call void @verify_signature(i32* @pat_remove_signature, i32 458808)
  br label %347

; <label>:285:                                    ; preds = %277
  call void @update_signature(i32* @pat_remove_signature, i32 458809)
  %286 = load %struct.ptree*, %struct.ptree** %10, align 8
  %287 = getelementptr inbounds %struct.ptree, %struct.ptree* %286, i32 0, i32 2
  %288 = load i8, i8* %287, align 8
  %289 = zext i8 %288 to i32
  %290 = sub nsw i32 %289, 1
  %291 = sext i32 %290 to i64
  %292 = mul i64 16, %291
  %293 = call noalias i8* @malloc(i64 %292) #6
  call void @verify_signature(i32* @pat_remove_signature, i32 458809)
  br label %294

; <label>:294:                                    ; preds = %285
  call void @update_signature(i32* @pat_remove_signature, i32 458810)
  %295 = bitcast i8* %293 to %struct.ptree_mask*
  store %struct.ptree_mask* %295, %struct.ptree_mask** %11, align 8
  store i32 0, i32* %13, align 4
  %296 = load %struct.ptree_mask*, %struct.ptree_mask** %11, align 8
  store %struct.ptree_mask* %296, %struct.ptree_mask** %12, align 8
  call void @verify_signature(i32* @pat_remove_signature, i32 458810)
  br label %297

; <label>:297:                                    ; preds = %331, %294
  call void @update_signature(i32* @pat_remove_signature, i32 458811)
  %298 = load i32, i32* %13, align 4
  %299 = load %struct.ptree*, %struct.ptree** %10, align 8
  %300 = getelementptr inbounds %struct.ptree, %struct.ptree* %299, i32 0, i32 2
  %301 = load i8, i8* %300, align 8
  %302 = zext i8 %301 to i32
  %303 = icmp slt i32 %298, %302
  call void @verify_signature(i32* @pat_remove_signature, i32 458811)
  br i1 %303, label %304, label %334

; <label>:304:                                    ; preds = %297
  call void @update_signature(i32* @pat_remove_signature, i32 458812)
  %305 = load %struct.ptree*, %struct.ptree** %4, align 8
  %306 = getelementptr inbounds %struct.ptree, %struct.ptree* %305, i32 0, i32 1
  %307 = load %struct.ptree_mask*, %struct.ptree_mask** %306, align 8
  %308 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = load %struct.ptree*, %struct.ptree** %10, align 8
  %311 = getelementptr inbounds %struct.ptree, %struct.ptree* %310, i32 0, i32 1
  %312 = load %struct.ptree_mask*, %struct.ptree_mask** %311, align 8
  %313 = load i32, i32* %13, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %312, i64 %314
  %316 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = icmp ne i64 %309, %317
  call void @verify_signature(i32* @pat_remove_signature, i32 458812)
  br i1 %318, label %319, label %330

; <label>:319:                                    ; preds = %304
  call void @update_signature(i32* @pat_remove_signature, i32 458813)
  %320 = load %struct.ptree*, %struct.ptree** %10, align 8
  %321 = getelementptr inbounds %struct.ptree, %struct.ptree* %320, i32 0, i32 1
  %322 = load %struct.ptree_mask*, %struct.ptree_mask** %321, align 8
  %323 = load i32, i32* %13, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %322, i64 %324
  %326 = bitcast %struct.ptree_mask* %325 to i8*
  %327 = load %struct.ptree_mask*, %struct.ptree_mask** %12, align 8
  %328 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %327, i32 1
  store %struct.ptree_mask* %328, %struct.ptree_mask** %12, align 8
  %329 = bitcast %struct.ptree_mask* %327 to i8*
  call void @bcopy(i8* %326, i8* %329, i64 16) #6
  call void @verify_signature(i32* @pat_remove_signature, i32 458813)
  br label %330

; <label>:330:                                    ; preds = %319, %304
  call void @update_signature(i32* @pat_remove_signature, i32 458814)
  call void @verify_signature(i32* @pat_remove_signature, i32 458814)
  br label %331

; <label>:331:                                    ; preds = %330
  call void @update_signature(i32* @pat_remove_signature, i32 458815)
  %332 = load i32, i32* %13, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %13, align 4
  call void @verify_signature(i32* @pat_remove_signature, i32 458815)
  br label %297

; <label>:334:                                    ; preds = %297
  call void @update_signature(i32* @pat_remove_signature, i32 458816)
  %335 = load %struct.ptree*, %struct.ptree** %10, align 8
  %336 = getelementptr inbounds %struct.ptree, %struct.ptree* %335, i32 0, i32 2
  %337 = load i8, i8* %336, align 8
  %338 = add i8 %337, -1
  store i8 %338, i8* %336, align 8
  %339 = load %struct.ptree*, %struct.ptree** %10, align 8
  %340 = getelementptr inbounds %struct.ptree, %struct.ptree* %339, i32 0, i32 1
  %341 = load %struct.ptree_mask*, %struct.ptree_mask** %340, align 8
  %342 = bitcast %struct.ptree_mask* %341 to i8*
  call void @free(i8* %342) #6
  call void @verify_signature(i32* @pat_remove_signature, i32 458816)
  br label %343

; <label>:343:                                    ; preds = %334
  call void @update_signature(i32* @pat_remove_signature, i32 458817)
  %344 = load %struct.ptree_mask*, %struct.ptree_mask** %11, align 8
  %345 = load %struct.ptree*, %struct.ptree** %10, align 8
  %346 = getelementptr inbounds %struct.ptree, %struct.ptree* %345, i32 0, i32 1
  store %struct.ptree_mask* %344, %struct.ptree_mask** %346, align 8
  store i32 1, i32* %3, align 4
  call void @verify_signature(i32* @pat_remove_signature, i32 458817)
  br label %347

; <label>:347:                                    ; preds = %343, %284, %248, %95, %82, %69, %24
  call void @update_signature(i32* @pat_remove_signature, i32 458818)
  %348 = load i32, i32* %3, align 4
  call void @verify_signature(i32* @pat_remove_signature, i32 458818)
  ret i32 %348
}

; Function Attrs: noinline nounwind optnone uwtable
define %struct.ptree* @pat_search(i64, %struct.ptree*) #0 {
  call void @update_signature(i32* @pat_search_signature, i32 524289)
  %3 = alloca %struct.ptree*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ptree*, align 8
  %6 = alloca %struct.ptree*, align 8
  %7 = alloca %struct.ptree*, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.ptree* %1, %struct.ptree** %5, align 8
  store %struct.ptree* null, %struct.ptree** %6, align 8
  %9 = load %struct.ptree*, %struct.ptree** %5, align 8
  store %struct.ptree* %9, %struct.ptree** %7, align 8
  %10 = load %struct.ptree*, %struct.ptree** %7, align 8
  %11 = icmp ne %struct.ptree* %10, null
  call void @verify_signature(i32* @pat_search_signature, i32 524289)
  br i1 %11, label %13, label %12

; <label>:12:                                     ; preds = %2
  call void @update_signature(i32* @pat_search_signature, i32 524290)
  store %struct.ptree* null, %struct.ptree** %3, align 8
  call void @verify_signature(i32* @pat_search_signature, i32 524290)
  br label %76

; <label>:13:                                     ; preds = %2
  call void @update_signature(i32* @pat_search_signature, i32 524291)
  call void @verify_signature(i32* @pat_search_signature, i32 524291)
  br label %14

; <label>:14:                                     ; preds = %51, %13
  call void @update_signature(i32* @pat_search_signature, i32 524292)
  %15 = load %struct.ptree*, %struct.ptree** %7, align 8
  %16 = getelementptr inbounds %struct.ptree, %struct.ptree* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.ptree*, %struct.ptree** %7, align 8
  %20 = getelementptr inbounds %struct.ptree, %struct.ptree* %19, i32 0, i32 1
  %21 = load %struct.ptree_mask*, %struct.ptree_mask** %20, align 8
  %22 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = and i64 %18, %23
  %25 = icmp eq i64 %17, %24
  call void @verify_signature(i32* @pat_search_signature, i32 524292)
  br i1 %25, label %26, label %28

; <label>:26:                                     ; preds = %14
  call void @update_signature(i32* @pat_search_signature, i32 524293)
  %27 = load %struct.ptree*, %struct.ptree** %7, align 8
  store %struct.ptree* %27, %struct.ptree** %6, align 8
  call void @verify_signature(i32* @pat_search_signature, i32 524293)
  br label %28

; <label>:28:                                     ; preds = %26, %14
  call void @update_signature(i32* @pat_search_signature, i32 524294)
  %29 = load %struct.ptree*, %struct.ptree** %7, align 8
  %30 = getelementptr inbounds %struct.ptree, %struct.ptree* %29, i32 0, i32 3
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  store i32 %32, i32* %8, align 4
  %33 = load %struct.ptree*, %struct.ptree** %7, align 8
  %34 = getelementptr inbounds %struct.ptree, %struct.ptree* %33, i32 0, i32 3
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = load i64, i64* %4, align 8
  %38 = call i64 @bit(i32 %36, i64 %37)
  call void @verify_signature(i32* @pat_search_signature, i32 524294)
  br label %39

; <label>:39:                                     ; preds = %28
  call void @update_signature(i32* @pat_search_signature, i32 524295)
  %40 = icmp ne i64 %38, 0
  call void @verify_signature(i32* @pat_search_signature, i32 524295)
  br i1 %40, label %41, label %45

; <label>:41:                                     ; preds = %39
  call void @update_signature(i32* @pat_search_signature, i32 524296)
  %42 = load %struct.ptree*, %struct.ptree** %7, align 8
  %43 = getelementptr inbounds %struct.ptree, %struct.ptree* %42, i32 0, i32 5
  %44 = load %struct.ptree*, %struct.ptree** %43, align 8
  call void @verify_signature(i32* @pat_search_signature, i32 524296)
  br label %49

; <label>:45:                                     ; preds = %39
  call void @update_signature(i32* @pat_search_signature, i32 524297)
  %46 = load %struct.ptree*, %struct.ptree** %7, align 8
  %47 = getelementptr inbounds %struct.ptree, %struct.ptree* %46, i32 0, i32 4
  %48 = load %struct.ptree*, %struct.ptree** %47, align 8
  call void @verify_signature(i32* @pat_search_signature, i32 524297)
  br label %49

; <label>:49:                                     ; preds = %45, %41
  %50 = phi %struct.ptree* [ %44, %41 ], [ %48, %45 ]
  call void @update_signature(i32* @pat_search_signature, i32 524298)
  store %struct.ptree* %50, %struct.ptree** %7, align 8
  call void @verify_signature(i32* @pat_search_signature, i32 524298)
  br label %51

; <label>:51:                                     ; preds = %49
  call void @update_signature(i32* @pat_search_signature, i32 524299)
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.ptree*, %struct.ptree** %7, align 8
  %54 = getelementptr inbounds %struct.ptree, %struct.ptree* %53, i32 0, i32 3
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp slt i32 %52, %56
  call void @verify_signature(i32* @pat_search_signature, i32 524299)
  br i1 %57, label %14, label %58

; <label>:58:                                     ; preds = %51
  call void @update_signature(i32* @pat_search_signature, i32 524300)
  %59 = load %struct.ptree*, %struct.ptree** %7, align 8
  %60 = getelementptr inbounds %struct.ptree, %struct.ptree* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %4, align 8
  %63 = load %struct.ptree*, %struct.ptree** %7, align 8
  %64 = getelementptr inbounds %struct.ptree, %struct.ptree* %63, i32 0, i32 1
  %65 = load %struct.ptree_mask*, %struct.ptree_mask** %64, align 8
  %66 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = and i64 %62, %67
  %69 = icmp eq i64 %61, %68
  call void @verify_signature(i32* @pat_search_signature, i32 524300)
  br i1 %69, label %70, label %72

; <label>:70:                                     ; preds = %58
  call void @update_signature(i32* @pat_search_signature, i32 524301)
  %71 = load %struct.ptree*, %struct.ptree** %7, align 8
  call void @verify_signature(i32* @pat_search_signature, i32 524301)
  br label %74

; <label>:72:                                     ; preds = %58
  call void @update_signature(i32* @pat_search_signature, i32 524302)
  %73 = load %struct.ptree*, %struct.ptree** %6, align 8
  call void @verify_signature(i32* @pat_search_signature, i32 524302)
  br label %74

; <label>:74:                                     ; preds = %72, %70
  %75 = phi %struct.ptree* [ %71, %70 ], [ %73, %72 ]
  call void @update_signature(i32* @pat_search_signature, i32 524303)
  store %struct.ptree* %75, %struct.ptree** %3, align 8
  call void @verify_signature(i32* @pat_search_signature, i32 524303)
  br label %76

; <label>:76:                                     ; preds = %74, %12
  call void @update_signature(i32* @pat_search_signature, i32 524304)
  %77 = load %struct.ptree*, %struct.ptree** %3, align 8
  call void @verify_signature(i32* @pat_search_signature, i32 524304)
  ret %struct.ptree* %77
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main(i32, i8**) #0 {
  call void @update_signature(i32* @main_signature, i32 589825)
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.ptree*, align 8
  %7 = alloca %struct.ptree*, align 8
  %8 = alloca %struct.ptree*, align 8
  %9 = alloca %struct.ptree_mask*, align 8
  %10 = alloca %struct._IO_FILE*, align 8
  %11 = alloca [128 x i8], align 16
  %12 = alloca [16 x i8], align 16
  %13 = alloca %struct.in_addr, align 4
  %14 = alloca i64, align 8
  %15 = alloca float, align 4
  %16 = alloca %struct.timeval, align 8
  %17 = alloca %struct.timeval, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 4294967295, i64* %14, align 8
  %18 = call i32 @gettimeofday(%struct.timeval* %16, %struct.timezone* null) #6
  call void @verify_signature(i32* @main_signature, i32 589825)
  br label %19

; <label>:19:                                     ; preds = %2
  call void @update_signature(i32* @main_signature, i32 589826)
  %20 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  call void @verify_signature(i32* @main_signature, i32 589826)
  br label %21

; <label>:21:                                     ; preds = %19
  call void @update_signature(i32* @main_signature, i32 589827)
  store %struct._IO_FILE* %20, %struct._IO_FILE** %10, align 8
  %22 = icmp eq %struct._IO_FILE* %20, null
  call void @verify_signature(i32* @main_signature, i32 589827)
  br i1 %22, label %23, label %30

; <label>:23:                                     ; preds = %21
  call void @update_signature(i32* @main_signature, i32 589828)
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0), i8* %26)
  call void @verify_signature(i32* @main_signature, i32 589828)
  br label %28

; <label>:28:                                     ; preds = %23
  call void @update_signature(i32* @main_signature, i32 589829)
  call void @exit(i32 0) #7
  call void @verify_signature(i32* @main_signature, i32 589829)
  br label %29

; <label>:29:                                     ; preds = %28
  call void @update_signature(i32* @main_signature, i32 589830)
  call void @verify_signature(i32* @main_signature, i32 589830)
  unreachable

; <label>:30:                                     ; preds = %21
  call void @update_signature(i32* @main_signature, i32 589831)
  %31 = call noalias i8* @malloc(i64 40) #6
  call void @verify_signature(i32* @main_signature, i32 589831)
  br label %32

; <label>:32:                                     ; preds = %30
  call void @update_signature(i32* @main_signature, i32 589832)
  %33 = bitcast i8* %31 to %struct.ptree*
  store %struct.ptree* %33, %struct.ptree** %6, align 8
  %34 = load %struct.ptree*, %struct.ptree** %6, align 8
  %35 = icmp ne %struct.ptree* %34, null
  call void @verify_signature(i32* @main_signature, i32 589832)
  br i1 %35, label %39, label %36

; <label>:36:                                     ; preds = %32
  call void @update_signature(i32* @main_signature, i32 589833)
  call void @perror(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  call void @verify_signature(i32* @main_signature, i32 589833)
  br label %37

; <label>:37:                                     ; preds = %36
  call void @update_signature(i32* @main_signature, i32 589834)
  call void @exit(i32 0) #7
  call void @verify_signature(i32* @main_signature, i32 589834)
  br label %38

; <label>:38:                                     ; preds = %37
  call void @update_signature(i32* @main_signature, i32 589835)
  call void @verify_signature(i32* @main_signature, i32 589835)
  unreachable

; <label>:39:                                     ; preds = %32
  call void @update_signature(i32* @main_signature, i32 589836)
  %40 = load %struct.ptree*, %struct.ptree** %6, align 8
  %41 = bitcast %struct.ptree* %40 to i8*
  call void @llvm.memset.p0i8.i64(i8* %41, i8 0, i64 40, i32 8, i1 false)
  call void @verify_signature(i32* @main_signature, i32 589836)
  br label %42

; <label>:42:                                     ; preds = %39
  call void @update_signature(i32* @main_signature, i32 589837)
  %43 = call noalias i8* @malloc(i64 16) #6
  call void @verify_signature(i32* @main_signature, i32 589837)
  br label %44

; <label>:44:                                     ; preds = %42
  call void @update_signature(i32* @main_signature, i32 589838)
  %45 = bitcast i8* %43 to %struct.ptree_mask*
  %46 = load %struct.ptree*, %struct.ptree** %6, align 8
  %47 = getelementptr inbounds %struct.ptree, %struct.ptree* %46, i32 0, i32 1
  store %struct.ptree_mask* %45, %struct.ptree_mask** %47, align 8
  %48 = load %struct.ptree*, %struct.ptree** %6, align 8
  %49 = getelementptr inbounds %struct.ptree, %struct.ptree* %48, i32 0, i32 1
  %50 = load %struct.ptree_mask*, %struct.ptree_mask** %49, align 8
  %51 = icmp ne %struct.ptree_mask* %50, null
  call void @verify_signature(i32* @main_signature, i32 589838)
  br i1 %51, label %55, label %52

; <label>:52:                                     ; preds = %44
  call void @update_signature(i32* @main_signature, i32 589839)
  call void @perror(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0))
  call void @verify_signature(i32* @main_signature, i32 589839)
  br label %53

; <label>:53:                                     ; preds = %52
  call void @update_signature(i32* @main_signature, i32 589840)
  call void @exit(i32 0) #7
  call void @verify_signature(i32* @main_signature, i32 589840)
  br label %54

; <label>:54:                                     ; preds = %53
  call void @update_signature(i32* @main_signature, i32 589841)
  call void @verify_signature(i32* @main_signature, i32 589841)
  unreachable

; <label>:55:                                     ; preds = %44
  call void @update_signature(i32* @main_signature, i32 589842)
  %56 = load %struct.ptree*, %struct.ptree** %6, align 8
  %57 = getelementptr inbounds %struct.ptree, %struct.ptree* %56, i32 0, i32 1
  %58 = load %struct.ptree_mask*, %struct.ptree_mask** %57, align 8
  %59 = bitcast %struct.ptree_mask* %58 to i8*
  call void @llvm.memset.p0i8.i64(i8* %59, i8 0, i64 16, i32 8, i1 false)
  call void @verify_signature(i32* @main_signature, i32 589842)
  br label %60

; <label>:60:                                     ; preds = %55
  call void @update_signature(i32* @main_signature, i32 589843)
  %61 = load %struct.ptree*, %struct.ptree** %6, align 8
  %62 = getelementptr inbounds %struct.ptree, %struct.ptree* %61, i32 0, i32 1
  %63 = load %struct.ptree_mask*, %struct.ptree_mask** %62, align 8
  store %struct.ptree_mask* %63, %struct.ptree_mask** %9, align 8
  %64 = call noalias i8* @malloc(i64 16) #6
  call void @verify_signature(i32* @main_signature, i32 589843)
  br label %65

; <label>:65:                                     ; preds = %60
  call void @update_signature(i32* @main_signature, i32 589844)
  %66 = bitcast i8* %64 to %struct.MyNode*
  %67 = bitcast %struct.MyNode* %66 to i8*
  %68 = load %struct.ptree_mask*, %struct.ptree_mask** %9, align 8
  %69 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = load %struct.ptree_mask*, %struct.ptree_mask** %9, align 8
  %71 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  call void @verify_signature(i32* @main_signature, i32 589844)
  br i1 %73, label %77, label %74

; <label>:74:                                     ; preds = %65
  call void @update_signature(i32* @main_signature, i32 589845)
  call void @perror(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i32 0, i32 0))
  call void @verify_signature(i32* @main_signature, i32 589845)
  br label %75

; <label>:75:                                     ; preds = %74
  call void @update_signature(i32* @main_signature, i32 589846)
  call void @exit(i32 0) #7
  call void @verify_signature(i32* @main_signature, i32 589846)
  br label %76

; <label>:76:                                     ; preds = %75
  call void @update_signature(i32* @main_signature, i32 589847)
  call void @verify_signature(i32* @main_signature, i32 589847)
  unreachable

; <label>:77:                                     ; preds = %65
  call void @update_signature(i32* @main_signature, i32 589848)
  %78 = load %struct.ptree_mask*, %struct.ptree_mask** %9, align 8
  %79 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  call void @llvm.memset.p0i8.i64(i8* %80, i8 0, i64 1, i32 1, i1 false)
  call void @verify_signature(i32* @main_signature, i32 589848)
  br label %81

; <label>:81:                                     ; preds = %77
  call void @update_signature(i32* @main_signature, i32 589849)
  %82 = load %struct.ptree*, %struct.ptree** %6, align 8
  %83 = getelementptr inbounds %struct.ptree, %struct.ptree* %82, i32 0, i32 2
  store i8 1, i8* %83, align 8
  %84 = load %struct.ptree*, %struct.ptree** %6, align 8
  %85 = load %struct.ptree*, %struct.ptree** %6, align 8
  %86 = getelementptr inbounds %struct.ptree, %struct.ptree* %85, i32 0, i32 5
  store %struct.ptree* %84, %struct.ptree** %86, align 8
  %87 = load %struct.ptree*, %struct.ptree** %6, align 8
  %88 = getelementptr inbounds %struct.ptree, %struct.ptree* %87, i32 0, i32 4
  store %struct.ptree* %84, %struct.ptree** %88, align 8
  call void @verify_signature(i32* @main_signature, i32 589849)
  br label %89

; <label>:89:                                     ; preds = %184, %81
  call void @update_signature(i32* @main_signature, i32 589850)
  %90 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i32 0, i32 0
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %92 = call i8* @fgets(i8* %90, i32 128, %struct._IO_FILE* %91)
  call void @verify_signature(i32* @main_signature, i32 589850)
  br label %93

; <label>:93:                                     ; preds = %89
  call void @update_signature(i32* @main_signature, i32 589851)
  %94 = icmp ne i8* %92, null
  call void @verify_signature(i32* @main_signature, i32 589851)
  br i1 %94, label %95, label %185

; <label>:95:                                     ; preds = %93
  call void @update_signature(i32* @main_signature, i32 589852)
  %96 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i32 0, i32 0
  %97 = bitcast %struct.in_addr* %13 to i32*
  %98 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), float* %15, i32* %97) #6
  call void @verify_signature(i32* @main_signature, i32 589852)
  br label %99

; <label>:99:                                     ; preds = %95
  call void @update_signature(i32* @main_signature, i32 589853)
  %100 = call noalias i8* @malloc(i64 40) #6
  call void @verify_signature(i32* @main_signature, i32 589853)
  br label %101

; <label>:101:                                    ; preds = %99
  call void @update_signature(i32* @main_signature, i32 589854)
  %102 = bitcast i8* %100 to %struct.ptree*
  store %struct.ptree* %102, %struct.ptree** %7, align 8
  %103 = load %struct.ptree*, %struct.ptree** %7, align 8
  %104 = icmp ne %struct.ptree* %103, null
  call void @verify_signature(i32* @main_signature, i32 589854)
  br i1 %104, label %108, label %105

; <label>:105:                                    ; preds = %101
  call void @update_signature(i32* @main_signature, i32 589855)
  call void @perror(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  call void @verify_signature(i32* @main_signature, i32 589855)
  br label %106

; <label>:106:                                    ; preds = %105
  call void @update_signature(i32* @main_signature, i32 589856)
  call void @exit(i32 0) #7
  call void @verify_signature(i32* @main_signature, i32 589856)
  br label %107

; <label>:107:                                    ; preds = %106
  call void @update_signature(i32* @main_signature, i32 589857)
  call void @verify_signature(i32* @main_signature, i32 589857)
  unreachable

; <label>:108:                                    ; preds = %101
  call void @update_signature(i32* @main_signature, i32 589858)
  %109 = load %struct.ptree*, %struct.ptree** %7, align 8
  %110 = bitcast %struct.ptree* %109 to i8*
  call void @llvm.memset.p0i8.i64(i8* %110, i8 0, i64 40, i32 8, i1 false)
  call void @verify_signature(i32* @main_signature, i32 589858)
  br label %111

; <label>:111:                                    ; preds = %108
  call void @update_signature(i32* @main_signature, i32 589859)
  %112 = call noalias i8* @malloc(i64 16) #6
  call void @verify_signature(i32* @main_signature, i32 589859)
  br label %113

; <label>:113:                                    ; preds = %111
  call void @update_signature(i32* @main_signature, i32 589860)
  %114 = bitcast i8* %112 to %struct.ptree_mask*
  %115 = load %struct.ptree*, %struct.ptree** %7, align 8
  %116 = getelementptr inbounds %struct.ptree, %struct.ptree* %115, i32 0, i32 1
  store %struct.ptree_mask* %114, %struct.ptree_mask** %116, align 8
  %117 = load %struct.ptree*, %struct.ptree** %7, align 8
  %118 = getelementptr inbounds %struct.ptree, %struct.ptree* %117, i32 0, i32 1
  %119 = load %struct.ptree_mask*, %struct.ptree_mask** %118, align 8
  %120 = icmp ne %struct.ptree_mask* %119, null
  call void @verify_signature(i32* @main_signature, i32 589860)
  br i1 %120, label %124, label %121

; <label>:121:                                    ; preds = %113
  call void @update_signature(i32* @main_signature, i32 589861)
  call void @perror(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0))
  call void @verify_signature(i32* @main_signature, i32 589861)
  br label %122

; <label>:122:                                    ; preds = %121
  call void @update_signature(i32* @main_signature, i32 589862)
  call void @exit(i32 0) #7
  call void @verify_signature(i32* @main_signature, i32 589862)
  br label %123

; <label>:123:                                    ; preds = %122
  call void @update_signature(i32* @main_signature, i32 589863)
  call void @verify_signature(i32* @main_signature, i32 589863)
  unreachable

; <label>:124:                                    ; preds = %113
  call void @update_signature(i32* @main_signature, i32 589864)
  %125 = load %struct.ptree*, %struct.ptree** %7, align 8
  %126 = getelementptr inbounds %struct.ptree, %struct.ptree* %125, i32 0, i32 1
  %127 = load %struct.ptree_mask*, %struct.ptree_mask** %126, align 8
  %128 = bitcast %struct.ptree_mask* %127 to i8*
  call void @llvm.memset.p0i8.i64(i8* %128, i8 0, i64 16, i32 8, i1 false)
  call void @verify_signature(i32* @main_signature, i32 589864)
  br label %129

; <label>:129:                                    ; preds = %124
  call void @update_signature(i32* @main_signature, i32 589865)
  %130 = load %struct.ptree*, %struct.ptree** %7, align 8
  %131 = getelementptr inbounds %struct.ptree, %struct.ptree* %130, i32 0, i32 1
  %132 = load %struct.ptree_mask*, %struct.ptree_mask** %131, align 8
  store %struct.ptree_mask* %132, %struct.ptree_mask** %9, align 8
  %133 = call noalias i8* @malloc(i64 16) #6
  call void @verify_signature(i32* @main_signature, i32 589865)
  br label %134

; <label>:134:                                    ; preds = %129
  call void @update_signature(i32* @main_signature, i32 589866)
  %135 = bitcast i8* %133 to %struct.MyNode*
  %136 = bitcast %struct.MyNode* %135 to i8*
  %137 = load %struct.ptree_mask*, %struct.ptree_mask** %9, align 8
  %138 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %137, i32 0, i32 1
  store i8* %136, i8** %138, align 8
  %139 = load %struct.ptree_mask*, %struct.ptree_mask** %9, align 8
  %140 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %139, i32 0, i32 1
  %141 = load i8*, i8** %140, align 8
  %142 = icmp ne i8* %141, null
  call void @verify_signature(i32* @main_signature, i32 589866)
  br i1 %142, label %146, label %143

; <label>:143:                                    ; preds = %134
  call void @update_signature(i32* @main_signature, i32 589867)
  call void @perror(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i32 0, i32 0))
  call void @verify_signature(i32* @main_signature, i32 589867)
  br label %144

; <label>:144:                                    ; preds = %143
  call void @update_signature(i32* @main_signature, i32 589868)
  call void @exit(i32 0) #7
  call void @verify_signature(i32* @main_signature, i32 589868)
  br label %145

; <label>:145:                                    ; preds = %144
  call void @update_signature(i32* @main_signature, i32 589869)
  call void @verify_signature(i32* @main_signature, i32 589869)
  unreachable

; <label>:146:                                    ; preds = %134
  call void @update_signature(i32* @main_signature, i32 589870)
  %147 = load %struct.ptree_mask*, %struct.ptree_mask** %9, align 8
  %148 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %147, i32 0, i32 1
  %149 = load i8*, i8** %148, align 8
  call void @llvm.memset.p0i8.i64(i8* %149, i8 0, i64 1, i32 1, i1 false)
  call void @verify_signature(i32* @main_signature, i32 589870)
  br label %150

; <label>:150:                                    ; preds = %146
  call void @update_signature(i32* @main_signature, i32 589871)
  %151 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %13, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = zext i32 %152 to i64
  %154 = load %struct.ptree*, %struct.ptree** %7, align 8
  %155 = getelementptr inbounds %struct.ptree, %struct.ptree* %154, i32 0, i32 0
  store i64 %153, i64* %155, align 8
  %156 = load i64, i64* %14, align 8
  %157 = trunc i64 %156 to i32
  %158 = call i32 @htonl(i32 %157) #8
  call void @verify_signature(i32* @main_signature, i32 589871)
  br label %159

; <label>:159:                                    ; preds = %150
  call void @update_signature(i32* @main_signature, i32 589872)
  %160 = zext i32 %158 to i64
  %161 = load %struct.ptree*, %struct.ptree** %7, align 8
  %162 = getelementptr inbounds %struct.ptree, %struct.ptree* %161, i32 0, i32 1
  %163 = load %struct.ptree_mask*, %struct.ptree_mask** %162, align 8
  %164 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %163, i32 0, i32 0
  store i64 %160, i64* %164, align 8
  %165 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %13, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = zext i32 %166 to i64
  %168 = load %struct.ptree*, %struct.ptree** %6, align 8
  %169 = call %struct.ptree* @pat_search(i64 %167, %struct.ptree* %168)
  call void @verify_signature(i32* @main_signature, i32 589872)
  br label %170

; <label>:170:                                    ; preds = %159
  call void @update_signature(i32* @main_signature, i32 589873)
  store %struct.ptree* %169, %struct.ptree** %8, align 8
  %171 = load %struct.ptree*, %struct.ptree** %8, align 8
  %172 = getelementptr inbounds %struct.ptree, %struct.ptree* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %13, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = zext i32 %175 to i64
  %177 = icmp eq i64 %173, %176
  call void @verify_signature(i32* @main_signature, i32 589873)
  br i1 %177, label %178, label %179

; <label>:178:                                    ; preds = %170
  call void @update_signature(i32* @main_signature, i32 589874)
  call void @verify_signature(i32* @main_signature, i32 589874)
  br label %180

; <label>:179:                                    ; preds = %170
  call void @update_signature(i32* @main_signature, i32 589875)
  call void @verify_signature(i32* @main_signature, i32 589875)
  br label %180

; <label>:180:                                    ; preds = %179, %178
  call void @update_signature(i32* @main_signature, i32 589876)
  %181 = load %struct.ptree*, %struct.ptree** %7, align 8
  %182 = icmp ne %struct.ptree* %181, null
  call void @verify_signature(i32* @main_signature, i32 589876)
  br i1 %182, label %184, label %183

; <label>:183:                                    ; preds = %180
  call void @update_signature(i32* @main_signature, i32 589877)
  call void @verify_signature(i32* @main_signature, i32 589877)
  br label %184

; <label>:184:                                    ; preds = %183, %180
  call void @update_signature(i32* @main_signature, i32 589878)
  call void @verify_signature(i32* @main_signature, i32 589878)
  br label %89

; <label>:185:                                    ; preds = %93
  call void @update_signature(i32* @main_signature, i32 589879)
  %186 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0))
  call void @verify_signature(i32* @main_signature, i32 589879)
  br label %187

; <label>:187:                                    ; preds = %185
  call void @update_signature(i32* @main_signature, i32 589880)
  %188 = call i32 @gettimeofday(%struct.timeval* %17, %struct.timezone* null) #6
  call void @verify_signature(i32* @main_signature, i32 589880)
  br label %189

; <label>:189:                                    ; preds = %187
  call void @update_signature(i32* @main_signature, i32 589881)
  %190 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = sub nsw i64 %191, %193
  %195 = mul nsw i64 %194, 1000000
  %196 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = sub nsw i64 %197, %199
  %201 = add nsw i64 %195, %200
  %202 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0), i64 %201)
  call void @verify_signature(i32* @main_signature, i32 589881)
  br label %203

; <label>:203:                                    ; preds = %189
  call void @update_signature(i32* @main_signature, i32 589882)
  store i32 1, i32* @is_signature_queue_full, align 4
  %204 = load i32, i32* %3, align 4
  call void @verify_signature(i32* @main_signature, i32 589882)
  ret i32 %204
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @printf(i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare void @perror(i8*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #4

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i32 @htonl(i32) #5

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
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readnone }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 5.0.0 (tags/RELEASE_500/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
