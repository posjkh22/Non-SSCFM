; ModuleID = 'dijkstra.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._QITEM = type { i32, i32, i32, %struct._QITEM* }
%struct._NODE = type { i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.timeval = type { i64, i64 }

@qHead = global %struct._QITEM* null, align 8
@g_qCount = global i32 0, align 4
@ch = common global i32 0, align 4
@rgnNodes = common global [100 x %struct._NODE] zeroinitializer, align 16
@iNode = common global i32 0, align 4
@iDist = common global i32 0, align 4
@iPrev = common global i32 0, align 4
@i = common global i32 0, align 4
@AdjMatrix = common global [100 x [100 x i32]] zeroinitializer, align 16
@iCost = common global i32 0, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [16 x i8] c"Out of memory.\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Shortest path is 0 in cost. Just stay where you are.\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"./input.dat\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c" [target has finished!]\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c" [target] Execution time: %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define void @print_path(%struct._NODE*, i32) #0 {
  %3 = alloca %struct._NODE*, align 8
  %4 = alloca i32, align 4
  store %struct._NODE* %0, %struct._NODE** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct._NODE*, %struct._NODE** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct._NODE, %struct._NODE* %5, i64 %7
  %9 = getelementptr inbounds %struct._NODE, %struct._NODE* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 9999
  br i1 %11, label %12, label %20

; <label>:12:                                     ; preds = %2
  %13 = load %struct._NODE*, %struct._NODE** %3, align 8
  %14 = load %struct._NODE*, %struct._NODE** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct._NODE, %struct._NODE* %14, i64 %16
  %18 = getelementptr inbounds %struct._NODE, %struct._NODE* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  call void @print_path(%struct._NODE* %13, i32 %19)
  br label %20

; <label>:20:                                     ; preds = %12, %2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @enqueue(i32, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct._QITEM*, align 8
  %8 = alloca %struct._QITEM*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = call i8* @malloc(i64 24)
  %10 = bitcast i8* %9 to %struct._QITEM*
  store %struct._QITEM* %10, %struct._QITEM** %7, align 8
  %11 = load %struct._QITEM*, %struct._QITEM** @qHead, align 8
  store %struct._QITEM* %11, %struct._QITEM** %8, align 8
  %12 = load %struct._QITEM*, %struct._QITEM** %7, align 8
  %13 = icmp ne %struct._QITEM* %12, null
  br i1 %13, label %17, label %14

; <label>:14:                                     ; preds = %3
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  br label %17

; <label>:17:                                     ; preds = %14, %3
  %18 = load i32, i32* %4, align 4
  %19 = load %struct._QITEM*, %struct._QITEM** %7, align 8
  %20 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct._QITEM*, %struct._QITEM** %7, align 8
  %23 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load %struct._QITEM*, %struct._QITEM** %7, align 8
  %26 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct._QITEM*, %struct._QITEM** %7, align 8
  %28 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %27, i32 0, i32 3
  store %struct._QITEM* null, %struct._QITEM** %28, align 8
  %29 = load %struct._QITEM*, %struct._QITEM** %8, align 8
  %30 = icmp ne %struct._QITEM* %29, null
  br i1 %30, label %33, label %31

; <label>:31:                                     ; preds = %17
  %32 = load %struct._QITEM*, %struct._QITEM** %7, align 8
  store %struct._QITEM* %32, %struct._QITEM** @qHead, align 8
  br label %47

; <label>:33:                                     ; preds = %17
  br label %34

; <label>:34:                                     ; preds = %39, %33
  %35 = load %struct._QITEM*, %struct._QITEM** %8, align 8
  %36 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %35, i32 0, i32 3
  %37 = load %struct._QITEM*, %struct._QITEM** %36, align 8
  %38 = icmp ne %struct._QITEM* %37, null
  br i1 %38, label %39, label %43

; <label>:39:                                     ; preds = %34
  %40 = load %struct._QITEM*, %struct._QITEM** %8, align 8
  %41 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %40, i32 0, i32 3
  %42 = load %struct._QITEM*, %struct._QITEM** %41, align 8
  store %struct._QITEM* %42, %struct._QITEM** %8, align 8
  br label %34

; <label>:43:                                     ; preds = %34
  %44 = load %struct._QITEM*, %struct._QITEM** %7, align 8
  %45 = load %struct._QITEM*, %struct._QITEM** %8, align 8
  %46 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %45, i32 0, i32 3
  store %struct._QITEM* %44, %struct._QITEM** %46, align 8
  br label %47

; <label>:47:                                     ; preds = %43, %31
  %48 = load i32, i32* @g_qCount, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* @g_qCount, align 4
  ret void
}

declare i8* @malloc(i64) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @dequeue(i32*, i32*, i32*) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct._QITEM*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct._QITEM*, %struct._QITEM** @qHead, align 8
  store %struct._QITEM* %8, %struct._QITEM** %7, align 8
  %9 = load %struct._QITEM*, %struct._QITEM** @qHead, align 8
  %10 = icmp ne %struct._QITEM* %9, null
  br i1 %10, label %11, label %31

; <label>:11:                                     ; preds = %3
  %12 = load %struct._QITEM*, %struct._QITEM** @qHead, align 8
  %13 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32*, i32** %4, align 8
  store i32 %14, i32* %15, align 4
  %16 = load %struct._QITEM*, %struct._QITEM** @qHead, align 8
  %17 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %5, align 8
  store i32 %18, i32* %19, align 4
  %20 = load %struct._QITEM*, %struct._QITEM** @qHead, align 8
  %21 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32*, i32** %6, align 8
  store i32 %22, i32* %23, align 4
  %24 = load %struct._QITEM*, %struct._QITEM** @qHead, align 8
  %25 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %24, i32 0, i32 3
  %26 = load %struct._QITEM*, %struct._QITEM** %25, align 8
  store %struct._QITEM* %26, %struct._QITEM** @qHead, align 8
  %27 = load %struct._QITEM*, %struct._QITEM** %7, align 8
  %28 = call i32 (%struct._QITEM*, ...) bitcast (i32 (...)* @free to i32 (%struct._QITEM*, ...)*)(%struct._QITEM* %27)
  %29 = load i32, i32* @g_qCount, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* @g_qCount, align 4
  br label %31

; <label>:31:                                     ; preds = %11, %3
  ret void
}

declare i32 @free(...) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @qcount() #0 {
  %1 = load i32, i32* @g_qCount, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @dijkstra(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* @ch, align 4
  br label %6

; <label>:6:                                      ; preds = %18, %2
  %7 = load i32, i32* @ch, align 4
  %8 = icmp slt i32 %7, 100
  br i1 %8, label %9, label %21

; <label>:9:                                      ; preds = %6
  %10 = load i32, i32* @ch, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %11
  %13 = getelementptr inbounds %struct._NODE, %struct._NODE* %12, i32 0, i32 0
  store i32 9999, i32* %13, align 8
  %14 = load i32, i32* @ch, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %15
  %17 = getelementptr inbounds %struct._NODE, %struct._NODE* %16, i32 0, i32 1
  store i32 9999, i32* %17, align 4
  br label %18

; <label>:18:                                     ; preds = %9
  %19 = load i32, i32* @ch, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @ch, align 4
  br label %6

; <label>:21:                                     ; preds = %6
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

; <label>:25:                                     ; preds = %21
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i32 0, i32 0))
  br label %95

; <label>:27:                                     ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %29
  %31 = getelementptr inbounds %struct._NODE, %struct._NODE* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %33
  %35 = getelementptr inbounds %struct._NODE, %struct._NODE* %34, i32 0, i32 1
  store i32 9999, i32* %35, align 4
  %36 = load i32, i32* %4, align 4
  call void @enqueue(i32 %36, i32 0, i32 9999)
  br label %37

; <label>:37:                                     ; preds = %93, %27
  %38 = call i32 @qcount()
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %94

; <label>:40:                                     ; preds = %37
  call void @dequeue(i32* @iNode, i32* @iDist, i32* @iPrev)
  store i32 0, i32* @i, align 4
  br label %41

; <label>:41:                                     ; preds = %90, %40
  %42 = load i32, i32* @i, align 4
  %43 = icmp slt i32 %42, 100
  br i1 %43, label %44, label %93

; <label>:44:                                     ; preds = %41
  %45 = load i32, i32* @iNode, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @AdjMatrix, i64 0, i64 %46
  %48 = load i32, i32* @i, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [100 x i32], [100 x i32]* %47, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* @iCost, align 4
  %52 = icmp ne i32 %51, 9999
  br i1 %52, label %53, label %89

; <label>:53:                                     ; preds = %44
  %54 = load i32, i32* @i, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %55
  %57 = getelementptr inbounds %struct._NODE, %struct._NODE* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 9999, %58
  br i1 %59, label %70, label %60

; <label>:60:                                     ; preds = %53
  %61 = load i32, i32* @i, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %62
  %64 = getelementptr inbounds %struct._NODE, %struct._NODE* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @iCost, align 4
  %67 = load i32, i32* @iDist, align 4
  %68 = add nsw i32 %66, %67
  %69 = icmp sgt i32 %65, %68
  br i1 %69, label %70, label %88

; <label>:70:                                     ; preds = %60, %53
  %71 = load i32, i32* @iDist, align 4
  %72 = load i32, i32* @iCost, align 4
  %73 = add nsw i32 %71, %72
  %74 = load i32, i32* @i, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %75
  %77 = getelementptr inbounds %struct._NODE, %struct._NODE* %76, i32 0, i32 0
  store i32 %73, i32* %77, align 8
  %78 = load i32, i32* @iNode, align 4
  %79 = load i32, i32* @i, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %80
  %82 = getelementptr inbounds %struct._NODE, %struct._NODE* %81, i32 0, i32 1
  store i32 %78, i32* %82, align 4
  %83 = load i32, i32* @i, align 4
  %84 = load i32, i32* @iDist, align 4
  %85 = load i32, i32* @iCost, align 4
  %86 = add nsw i32 %84, %85
  %87 = load i32, i32* @iNode, align 4
  call void @enqueue(i32 %83, i32 %86, i32 %87)
  br label %88

; <label>:88:                                     ; preds = %70, %60
  br label %89

; <label>:89:                                     ; preds = %88, %44
  br label %90

; <label>:90:                                     ; preds = %89
  %91 = load i32, i32* @i, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* @i, align 4
  br label %41

; <label>:93:                                     ; preds = %41
  br label %37

; <label>:94:                                     ; preds = %37
  br label %95

; <label>:95:                                     ; preds = %94, %25
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct._IO_FILE*, align 8
  %10 = alloca %struct.timeval, align 8
  %11 = alloca %struct.timeval, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = call i32 @gettimeofday(%struct.timeval* %10, %struct._NODE* null) #3
  %13 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store %struct._IO_FILE* %13, %struct._IO_FILE** %9, align 8
  store i32 0, i32* %6, align 4
  br label %14

; <label>:14:                                     ; preds = %35, %2
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 100
  br i1 %16, label %17, label %38

; <label>:17:                                     ; preds = %14
  store i32 0, i32* %7, align 4
  br label %18

; <label>:18:                                     ; preds = %31, %17
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 100
  br i1 %20, label %21, label %34

; <label>:21:                                     ; preds = %18
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i32* %8)
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @AdjMatrix, i64 0, i64 %26
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [100 x i32], [100 x i32]* %27, i64 0, i64 %29
  store i32 %24, i32* %30, align 4
  br label %31

; <label>:31:                                     ; preds = %21
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %18

; <label>:34:                                     ; preds = %18
  br label %35

; <label>:35:                                     ; preds = %34
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %14

; <label>:38:                                     ; preds = %14
  store i32 0, i32* %6, align 4
  store i32 50, i32* %7, align 4
  br label %39

; <label>:39:                                     ; preds = %48, %38
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 20
  br i1 %41, label %42, label %53

; <label>:42:                                     ; preds = %39
  %43 = load i32, i32* %7, align 4
  %44 = srem i32 %43, 100
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @dijkstra(i32 %45, i32 %46)
  br label %48

; <label>:48:                                     ; preds = %42
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %39

; <label>:53:                                     ; preds = %39
  %54 = call i32 @gettimeofday(%struct.timeval* %11, %struct._NODE* null) #3
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0))
  %56 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %57, %59
  %61 = mul nsw i64 %60, 1000000
  %62 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %63, %65
  %67 = add nsw i64 %61, %66
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0), i64 %67)
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct._NODE*) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 5.0.0 (tags/RELEASE_500/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
