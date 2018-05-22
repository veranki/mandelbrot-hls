; ModuleID = '/mnt/f/dev/mandelbrot-hls/solution1/.autopilot/db/a.o.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.global_ctors = appending global [0 x { i32, void ()* }] zeroinitializer ; [#uses=0 type=[0 x { i32, void ()* }]*]

; [#uses=1]
define internal double @_Z9mapToRealiidd(i32 %x, i32 %imgWidth, double %minR, double %maxR) nounwind uwtable {
  %1 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %2 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %3 = alloca double, align 8                     ; [#uses=3 type=double*]
  %4 = alloca double, align 8                     ; [#uses=2 type=double*]
  %xrange = alloca double, align 8                ; [#uses=2 type=double*]
  store i32 %x, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !81), !dbg !82 ; [debug line = 3:22] [debug variable = x]
  store i32 %imgWidth, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !83), !dbg !84 ; [debug line = 3:29] [debug variable = imgWidth]
  store double %minR, double* %3, align 8
  call void @llvm.dbg.declare(metadata !{double* %3}, metadata !85), !dbg !86 ; [debug line = 3:46] [debug variable = minR]
  store double %maxR, double* %4, align 8
  call void @llvm.dbg.declare(metadata !{double* %4}, metadata !87), !dbg !88 ; [debug line = 3:59] [debug variable = maxR]
  call void @llvm.dbg.declare(metadata !{double* %xrange}, metadata !89), !dbg !91 ; [debug line = 4:10] [debug variable = xrange]
  %5 = load double* %4, align 8, !dbg !92         ; [#uses=1 type=double] [debug line = 4:30]
  %6 = load double* %3, align 8, !dbg !92         ; [#uses=1 type=double] [debug line = 4:30]
  %7 = fsub double %5, %6, !dbg !92               ; [#uses=1 type=double] [debug line = 4:30]
  store double %7, double* %xrange, align 8, !dbg !92 ; [debug line = 4:30]
  %8 = load i32* %1, align 4, !dbg !93            ; [#uses=1 type=i32] [debug line = 6:3]
  %9 = sitofp i32 %8 to double, !dbg !93          ; [#uses=1 type=double] [debug line = 6:3]
  %10 = load double* %xrange, align 8, !dbg !93   ; [#uses=1 type=double] [debug line = 6:3]
  %11 = load i32* %2, align 4, !dbg !93           ; [#uses=1 type=i32] [debug line = 6:3]
  %12 = sitofp i32 %11 to double, !dbg !93        ; [#uses=1 type=double] [debug line = 6:3]
  %13 = fdiv double %10, %12, !dbg !93            ; [#uses=1 type=double] [debug line = 6:3]
  %14 = fmul double %9, %13, !dbg !93             ; [#uses=1 type=double] [debug line = 6:3]
  %15 = load double* %3, align 8, !dbg !93        ; [#uses=1 type=double] [debug line = 6:3]
  %16 = fadd double %14, %15, !dbg !93            ; [#uses=1 type=double] [debug line = 6:3]
  ret double %16, !dbg !93                        ; [debug line = 6:3]
}

; [#uses=23]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define internal double @_Z9mapToImagiidd(i32 %y, i32 %imgHeight, double %minI, double %maxI) nounwind uwtable {
  %1 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %2 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %3 = alloca double, align 8                     ; [#uses=3 type=double*]
  %4 = alloca double, align 8                     ; [#uses=2 type=double*]
  %yrange = alloca double, align 8                ; [#uses=2 type=double*]
  store i32 %y, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !94), !dbg !95 ; [debug line = 9:22] [debug variable = y]
  store i32 %imgHeight, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !96), !dbg !97 ; [debug line = 9:29] [debug variable = imgHeight]
  store double %minI, double* %3, align 8
  call void @llvm.dbg.declare(metadata !{double* %3}, metadata !98), !dbg !99 ; [debug line = 9:47] [debug variable = minI]
  store double %maxI, double* %4, align 8
  call void @llvm.dbg.declare(metadata !{double* %4}, metadata !100), !dbg !101 ; [debug line = 9:60] [debug variable = maxI]
  call void @llvm.dbg.declare(metadata !{double* %yrange}, metadata !102), !dbg !104 ; [debug line = 10:10] [debug variable = yrange]
  %5 = load double* %4, align 8, !dbg !105        ; [#uses=1 type=double] [debug line = 10:30]
  %6 = load double* %3, align 8, !dbg !105        ; [#uses=1 type=double] [debug line = 10:30]
  %7 = fsub double %5, %6, !dbg !105              ; [#uses=1 type=double] [debug line = 10:30]
  store double %7, double* %yrange, align 8, !dbg !105 ; [debug line = 10:30]
  %8 = load i32* %1, align 4, !dbg !106           ; [#uses=1 type=i32] [debug line = 11:3]
  %9 = sitofp i32 %8 to double, !dbg !106         ; [#uses=1 type=double] [debug line = 11:3]
  %10 = load double* %yrange, align 8, !dbg !106  ; [#uses=1 type=double] [debug line = 11:3]
  %11 = load i32* %2, align 4, !dbg !106          ; [#uses=1 type=i32] [debug line = 11:3]
  %12 = sitofp i32 %11 to double, !dbg !106       ; [#uses=1 type=double] [debug line = 11:3]
  %13 = fdiv double %10, %12, !dbg !106           ; [#uses=1 type=double] [debug line = 11:3]
  %14 = fmul double %9, %13, !dbg !106            ; [#uses=1 type=double] [debug line = 11:3]
  %15 = load double* %3, align 8, !dbg !106       ; [#uses=1 type=double] [debug line = 11:3]
  %16 = fadd double %14, %15, !dbg !106           ; [#uses=1 type=double] [debug line = 11:3]
  ret double %16, !dbg !106                       ; [debug line = 11:3]
}

; [#uses=1]
define internal i32 @_Z14findmandelbrotddi(double %cr, double %ci, i32 %max_iteration) nounwind uwtable {
  %1 = alloca double, align 8                     ; [#uses=2 type=double*]
  %2 = alloca double, align 8                     ; [#uses=2 type=double*]
  %3 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %i = alloca i32, align 4                        ; [#uses=5 type=i32*]
  %zr = alloca double, align 8                    ; [#uses=7 type=double*]
  %zi = alloca double, align 8                    ; [#uses=7 type=double*]
  %temp = alloca double, align 8                  ; [#uses=2 type=double*]
  store double %cr, double* %1, align 8
  call void @llvm.dbg.declare(metadata !{double* %1}, metadata !107), !dbg !108 ; [debug line = 14:27] [debug variable = cr]
  store double %ci, double* %2, align 8
  call void @llvm.dbg.declare(metadata !{double* %2}, metadata !109), !dbg !110 ; [debug line = 14:38] [debug variable = ci]
  store i32 %max_iteration, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !111), !dbg !112 ; [debug line = 14:46] [debug variable = max_iteration]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !113), !dbg !115 ; [debug line = 16:7] [debug variable = i]
  store i32 0, i32* %i, align 4, !dbg !116        ; [debug line = 16:12]
  call void @llvm.dbg.declare(metadata !{double* %zr}, metadata !117), !dbg !118 ; [debug line = 17:10] [debug variable = zr]
  store double 0.000000e+00, double* %zr, align 8, !dbg !119 ; [debug line = 17:28]
  call void @llvm.dbg.declare(metadata !{double* %zi}, metadata !120), !dbg !121 ; [debug line = 17:20] [debug variable = zi]
  store double 0.000000e+00, double* %zi, align 8, !dbg !119 ; [debug line = 17:28]
  br label %4, !dbg !122                          ; [debug line = 18:3]

; <label>:4                                       ; preds = %19, %0
  %5 = load i32* %i, align 4, !dbg !122           ; [#uses=1 type=i32] [debug line = 18:3]
  %6 = load i32* %3, align 4, !dbg !122           ; [#uses=1 type=i32] [debug line = 18:3]
  %7 = icmp slt i32 %5, %6, !dbg !122             ; [#uses=1 type=i1] [debug line = 18:3]
  br i1 %7, label %8, label %17, !dbg !122        ; [debug line = 18:3]

; <label>:8                                       ; preds = %4
  %9 = load double* %zr, align 8, !dbg !122       ; [#uses=1 type=double] [debug line = 18:3]
  %10 = load double* %zr, align 8, !dbg !122      ; [#uses=1 type=double] [debug line = 18:3]
  %11 = fmul double %9, %10, !dbg !122            ; [#uses=1 type=double] [debug line = 18:3]
  %12 = load double* %zi, align 8, !dbg !122      ; [#uses=1 type=double] [debug line = 18:3]
  %13 = load double* %zi, align 8, !dbg !122      ; [#uses=1 type=double] [debug line = 18:3]
  %14 = fmul double %12, %13, !dbg !122           ; [#uses=1 type=double] [debug line = 18:3]
  %15 = fadd double %11, %14, !dbg !122           ; [#uses=1 type=double] [debug line = 18:3]
  %16 = fcmp olt double %15, 4.000000e+00, !dbg !122 ; [#uses=1 type=i1] [debug line = 18:3]
  br label %17

; <label>:17                                      ; preds = %8, %4
  %18 = phi i1 [ false, %4 ], [ %16, %8 ]         ; [#uses=1 type=i1]
  br i1 %18, label %19, label %38

; <label>:19                                      ; preds = %17
  call void @llvm.dbg.declare(metadata !{double* %temp}, metadata !123), !dbg !125 ; [debug line = 19:12] [debug variable = temp]
  %20 = load double* %zr, align 8, !dbg !126      ; [#uses=1 type=double] [debug line = 19:45]
  %21 = load double* %zr, align 8, !dbg !126      ; [#uses=1 type=double] [debug line = 19:45]
  %22 = fmul double %20, %21, !dbg !126           ; [#uses=1 type=double] [debug line = 19:45]
  %23 = load double* %zi, align 8, !dbg !126      ; [#uses=1 type=double] [debug line = 19:45]
  %24 = load double* %zi, align 8, !dbg !126      ; [#uses=1 type=double] [debug line = 19:45]
  %25 = fmul double %23, %24, !dbg !126           ; [#uses=1 type=double] [debug line = 19:45]
  %26 = fsub double %22, %25, !dbg !126           ; [#uses=1 type=double] [debug line = 19:45]
  %27 = load double* %1, align 8, !dbg !126       ; [#uses=1 type=double] [debug line = 19:45]
  %28 = fadd double %26, %27, !dbg !126           ; [#uses=1 type=double] [debug line = 19:45]
  store double %28, double* %temp, align 8, !dbg !126 ; [debug line = 19:45]
  %29 = load double* %zr, align 8, !dbg !127      ; [#uses=1 type=double] [debug line = 20:5]
  %30 = fmul double 2.000000e+00, %29, !dbg !127  ; [#uses=1 type=double] [debug line = 20:5]
  %31 = load double* %zi, align 8, !dbg !127      ; [#uses=1 type=double] [debug line = 20:5]
  %32 = fmul double %30, %31, !dbg !127           ; [#uses=1 type=double] [debug line = 20:5]
  %33 = load double* %2, align 8, !dbg !127       ; [#uses=1 type=double] [debug line = 20:5]
  %34 = fadd double %32, %33, !dbg !127           ; [#uses=1 type=double] [debug line = 20:5]
  store double %34, double* %zi, align 8, !dbg !127 ; [debug line = 20:5]
  %35 = load double* %temp, align 8, !dbg !128    ; [#uses=1 type=double] [debug line = 21:5]
  store double %35, double* %zr, align 8, !dbg !128 ; [debug line = 21:5]
  %36 = load i32* %i, align 4, !dbg !129          ; [#uses=1 type=i32] [debug line = 22:5]
  %37 = add nsw i32 %36, 1, !dbg !129             ; [#uses=1 type=i32] [debug line = 22:5]
  store i32 %37, i32* %i, align 4, !dbg !129      ; [debug line = 22:5]
  br label %4, !dbg !130                          ; [debug line = 23:3]

; <label>:38                                      ; preds = %17
  %39 = load i32* %i, align 4, !dbg !131          ; [#uses=1 type=i32] [debug line = 24:3]
  ret i32 %39, !dbg !131                          ; [debug line = 24:3]
}

; [#uses=0]
define void @_Z15mandlebrot_mainPA512_i([512 x i32]* %res) nounwind uwtable {
  %1 = alloca [512 x i32]*, align 8               ; [#uses=3 type=[512 x i32]**]
  %y = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %x = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %cr = alloca double, align 8                    ; [#uses=2 type=double*]
  %ci = alloca double, align 8                    ; [#uses=2 type=double*]
  %n = alloca i32, align 4                        ; [#uses=2 type=i32*]
  store [512 x i32]* %res, [512 x i32]** %1, align 8
  call void @llvm.dbg.declare(metadata !{[512 x i32]** %1}, metadata !132), !dbg !133 ; [debug line = 27:26] [debug variable = res]
  %2 = load [512 x i32]** %1, align 8, !dbg !134  ; [#uses=1 type=[512 x i32]*] [debug line = 27:53]
  call void (...)* @_ssdm_SpecArrayDimSize([512 x i32]* %2, i32 1024) nounwind, !dbg !134 ; [debug line = 27:53]
  call void @llvm.dbg.declare(metadata !{i32* %y}, metadata !136), !dbg !138 ; [debug line = 31:12] [debug variable = y]
  store i32 0, i32* %y, align 4, !dbg !139        ; [debug line = 31:17]
  br label %3, !dbg !139                          ; [debug line = 31:17]

; <label>:3                                       ; preds = %31, %0
  %4 = load i32* %y, align 4, !dbg !139           ; [#uses=1 type=i32] [debug line = 31:17]
  %5 = icmp slt i32 %4, 512, !dbg !139            ; [#uses=1 type=i1] [debug line = 31:17]
  br i1 %5, label %6, label %34, !dbg !139        ; [debug line = 31:17]

; <label>:6                                       ; preds = %3
  call void @llvm.dbg.declare(metadata !{i32* %x}, metadata !140), !dbg !143 ; [debug line = 32:14] [debug variable = x]
  store i32 0, i32* %x, align 4, !dbg !144        ; [debug line = 32:19]
  br label %7, !dbg !144                          ; [debug line = 32:19]

; <label>:7                                       ; preds = %27, %6
  %8 = load i32* %x, align 4, !dbg !144           ; [#uses=1 type=i32] [debug line = 32:19]
  %9 = icmp slt i32 %8, 1024, !dbg !144           ; [#uses=1 type=i1] [debug line = 32:19]
  br i1 %9, label %10, label %30, !dbg !144       ; [debug line = 32:19]

; <label>:10                                      ; preds = %7
  call void @llvm.dbg.declare(metadata !{double* %cr}, metadata !145), !dbg !147 ; [debug line = 34:14] [debug variable = cr]
  %11 = load i32* %x, align 4, !dbg !148          ; [#uses=1 type=i32] [debug line = 34:19]
  %12 = call double @_Z9mapToRealiidd(i32 %11, i32 1024, double -2.500000e+00, double 1.500000e+00), !dbg !148 ; [#uses=1 type=double] [debug line = 34:19]
  store double %12, double* %cr, align 8, !dbg !148 ; [debug line = 34:19]
  call void @llvm.dbg.declare(metadata !{double* %ci}, metadata !149), !dbg !150 ; [debug line = 35:14] [debug variable = ci]
  %13 = load i32* %y, align 4, !dbg !151          ; [#uses=1 type=i32] [debug line = 35:19]
  %14 = call double @_Z9mapToImagiidd(i32 %13, i32 512, double -1.000000e+00, double 1.000000e+00), !dbg !151 ; [#uses=1 type=double] [debug line = 35:19]
  store double %14, double* %ci, align 8, !dbg !151 ; [debug line = 35:19]
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !152), !dbg !153 ; [debug line = 38:11] [debug variable = n]
  %15 = load double* %cr, align 8, !dbg !154      ; [#uses=1 type=double] [debug line = 38:15]
  %16 = load double* %ci, align 8, !dbg !154      ; [#uses=1 type=double] [debug line = 38:15]
  %17 = call i32 @_Z14findmandelbrotddi(double %15, double %16, i32 512), !dbg !154 ; [#uses=1 type=i32] [debug line = 38:15]
  store i32 %17, i32* %n, align 4, !dbg !154      ; [debug line = 38:15]
  %18 = load i32* %n, align 4, !dbg !155          ; [#uses=1 type=i32] [debug line = 41:7]
  %19 = srem i32 %18, 256, !dbg !155              ; [#uses=1 type=i32] [debug line = 41:7]
  %20 = load i32* %y, align 4, !dbg !155          ; [#uses=1 type=i32] [debug line = 41:7]
  %21 = sext i32 %20 to i64, !dbg !155            ; [#uses=1 type=i64] [debug line = 41:7]
  %22 = load i32* %x, align 4, !dbg !155          ; [#uses=1 type=i32] [debug line = 41:7]
  %23 = sext i32 %22 to i64, !dbg !155            ; [#uses=1 type=i64] [debug line = 41:7]
  %24 = load [512 x i32]** %1, align 8, !dbg !155 ; [#uses=1 type=[512 x i32]*] [debug line = 41:7]
  %25 = getelementptr inbounds [512 x i32]* %24, i64 %23, !dbg !155 ; [#uses=1 type=[512 x i32]*] [debug line = 41:7]
  %26 = getelementptr inbounds [512 x i32]* %25, i32 0, i64 %21, !dbg !155 ; [#uses=1 type=i32*] [debug line = 41:7]
  store i32 %19, i32* %26, align 4, !dbg !155     ; [debug line = 41:7]
  br label %27, !dbg !156                         ; [debug line = 42:5]

; <label>:27                                      ; preds = %10
  %28 = load i32* %x, align 4, !dbg !157          ; [#uses=1 type=i32] [debug line = 32:35]
  %29 = add nsw i32 %28, 1, !dbg !157             ; [#uses=1 type=i32] [debug line = 32:35]
  store i32 %29, i32* %x, align 4, !dbg !157      ; [debug line = 32:35]
  br label %7, !dbg !157                          ; [debug line = 32:35]

; <label>:30                                      ; preds = %7
  br label %31, !dbg !158                         ; [debug line = 43:3]

; <label>:31                                      ; preds = %30
  %32 = load i32* %y, align 4, !dbg !159          ; [#uses=1 type=i32] [debug line = 31:34]
  %33 = add nsw i32 %32, 1, !dbg !159             ; [#uses=1 type=i32] [debug line = 31:34]
  store i32 %33, i32* %y, align 4, !dbg !159      ; [debug line = 31:34]
  br label %3, !dbg !159                          ; [debug line = 31:34]

; <label>:34                                      ; preds = %3
  ret void, !dbg !160                             ; [debug line = 44:1]
}

; [#uses=1]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!54, !61, !63, !69, !75, !75}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/mnt/f/dev/mandelbrot-hls/solution1/.autopilot/db/mandelbrot.pragma.2.cpp", metadata !"/mnt/f/dev", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !32} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !13, metadata !14, metadata !17, metadata !24, metadata !31}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"mapToReal", metadata !"mapToReal", metadata !"_Z9mapToRealiidd", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (i32, i32, double, double)* @_Z9mapToRealiidd, null, null, metadata !11, i32 3} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"mandelbrot-hls/mandelbrot.cpp", metadata !"/mnt/f/dev", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !10, metadata !10, metadata !9, metadata !9}
!9 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!10 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{i32 786478, i32 0, metadata !6, metadata !"mapToImag", metadata !"mapToImag", metadata !"_Z9mapToImagiidd", metadata !6, i32 9, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (i32, i32, double, double)* @_Z9mapToImagiidd, null, null, metadata !11, i32 9} ; [ DW_TAG_subprogram ]
!14 = metadata !{i32 786478, i32 0, metadata !6, metadata !"findmandelbrot", metadata !"findmandelbrot", metadata !"_Z14findmandelbrotddi", metadata !6, i32 14, metadata !15, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (double, double, i32)* @_Z14findmandelbrotddi, null, null, metadata !11, i32 14} ; [ DW_TAG_subprogram ]
!15 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !16, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!16 = metadata !{metadata !10, metadata !9, metadata !9, metadata !10}
!17 = metadata !{i32 786478, i32 0, metadata !6, metadata !"mandlebrot_main", metadata !"mandlebrot_main", metadata !"_Z15mandlebrot_mainPA512_i", metadata !6, i32 27, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([512 x i32]*)* @_Z15mandlebrot_mainPA512_i, null, null, metadata !11, i32 27} ; [ DW_TAG_subprogram ]
!18 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!19 = metadata !{null, metadata !20}
!20 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_pointer_type ]
!21 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 16384, i64 32, i32 0, i32 0, metadata !10, metadata !22, i32 0, i32 0} ; [ DW_TAG_array_type ]
!22 = metadata !{metadata !23}
!23 = metadata !{i32 786465, i64 0, i64 511}      ; [ DW_TAG_subrange_type ]
!24 = metadata !{i32 786478, i32 0, null, metadata !"ssdm_global_array_mandelbrotpp0cppaplinecpp", metadata !"ssdm_global_array_mandelbrotpp0cppaplinecpp", metadata !"_ZN43ssdm_global_array_mandelbrotpp0cppaplinecppC1Ev", metadata !6, i32 48, metadata !25, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !30, metadata !11, i32 48} ; [ DW_TAG_subprogram ]
!25 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !26, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!26 = metadata !{null, metadata !27}
!27 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !28} ; [ DW_TAG_pointer_type ]
!28 = metadata !{i32 786434, null, metadata !"ssdm_global_array_mandelbrotpp0cppaplinecpp", metadata !6, i32 46, i64 8, i64 8, i32 0, i32 0, null, metadata !29, i32 0, null, null} ; [ DW_TAG_class_type ]
!29 = metadata !{metadata !30}
!30 = metadata !{i32 786478, i32 0, metadata !28, metadata !"ssdm_global_array_mandelbrotpp0cppaplinecpp", metadata !"ssdm_global_array_mandelbrotpp0cppaplinecpp", metadata !"", metadata !6, i32 48, metadata !25, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !11, i32 48} ; [ DW_TAG_subprogram ]
!31 = metadata !{i32 786478, i32 0, null, metadata !"ssdm_global_array_mandelbrotpp0cppaplinecpp", metadata !"ssdm_global_array_mandelbrotpp0cppaplinecpp", metadata !"_ZN43ssdm_global_array_mandelbrotpp0cppaplinecppC2Ev", metadata !6, i32 48, metadata !25, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !30, metadata !11, i32 48} ; [ DW_TAG_subprogram ]
!32 = metadata !{metadata !33}
!33 = metadata !{metadata !34, metadata !37, metadata !34, metadata !34, metadata !38, metadata !40, metadata !37, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53}
!34 = metadata !{i32 786484, i32 0, metadata !35, metadata !"imgWidth", metadata !"imgWidth", metadata !"imgWidth", metadata !35, i32 7, metadata !36, i32 1, i32 1, i32 1024} ; [ DW_TAG_variable ]
!35 = metadata !{i32 786473, metadata !"mandelbrot-hls/mandelbrot.h", metadata !"/mnt/f/dev", null} ; [ DW_TAG_file_type ]
!36 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ]
!37 = metadata !{i32 786484, i32 0, metadata !35, metadata !"imgHeight", metadata !"imgHeight", metadata !"imgHeight", metadata !35, i32 8, metadata !36, i32 1, i32 1, i32 512} ; [ DW_TAG_variable ]
!38 = metadata !{i32 786484, i32 0, metadata !35, metadata !"minR", metadata !"minR", metadata !"minR", metadata !35, i32 10, metadata !39, i32 1, i32 1, double -2.500000e+00} ; [ DW_TAG_variable ]
!39 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_const_type ]
!40 = metadata !{i32 786484, i32 0, metadata !35, metadata !"maxR", metadata !"maxR", metadata !"maxR", metadata !35, i32 11, metadata !39, i32 1, i32 1, double 1.500000e+00} ; [ DW_TAG_variable ]
!41 = metadata !{i32 786484, i32 0, metadata !35, metadata !"minI", metadata !"minI", metadata !"minI", metadata !35, i32 12, metadata !39, i32 1, i32 1, double -1.000000e+00} ; [ DW_TAG_variable ]
!42 = metadata !{i32 786484, i32 0, metadata !35, metadata !"maxI", metadata !"maxI", metadata !"maxI", metadata !35, i32 13, metadata !39, i32 1, i32 1, double 1.000000e+00} ; [ DW_TAG_variable ]
!43 = metadata !{i32 786484, i32 0, metadata !35, metadata !"max_iteration", metadata !"max_iteration", metadata !"max_iteration", metadata !35, i32 9, metadata !36, i32 1, i32 1, i32 512} ; [ DW_TAG_variable ]
!44 = metadata !{i32 786484, i32 0, null, metadata !"ssdm_global_array_ins", metadata !"ssdm_global_array_ins", metadata !"_ZL21ssdm_global_array_ins", metadata !6, i32 58, metadata !28, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!45 = metadata !{i32 786484, i32 0, null, metadata !"signgam", metadata !"signgam", metadata !"", metadata !46, i32 168, metadata !10, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!46 = metadata !{i32 786473, metadata !"/usr/include/math.h", metadata !"/mnt/f/dev", null} ; [ DW_TAG_file_type ]
!47 = metadata !{i32 786484, i32 0, null, metadata !"maxI", metadata !"maxI", metadata !"_ZL4maxI", metadata !35, i32 13, metadata !39, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!48 = metadata !{i32 786484, i32 0, null, metadata !"minI", metadata !"minI", metadata !"_ZL4minI", metadata !35, i32 12, metadata !39, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!49 = metadata !{i32 786484, i32 0, null, metadata !"maxR", metadata !"maxR", metadata !"_ZL4maxR", metadata !35, i32 11, metadata !39, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!50 = metadata !{i32 786484, i32 0, null, metadata !"minR", metadata !"minR", metadata !"_ZL4minR", metadata !35, i32 10, metadata !39, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!51 = metadata !{i32 786484, i32 0, null, metadata !"max_iteration", metadata !"max_iteration", metadata !"_ZL13max_iteration", metadata !35, i32 9, metadata !36, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!52 = metadata !{i32 786484, i32 0, null, metadata !"imgHeight", metadata !"imgHeight", metadata !"_ZL9imgHeight", metadata !35, i32 8, metadata !36, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!53 = metadata !{i32 786484, i32 0, null, metadata !"imgWidth", metadata !"imgWidth", metadata !"_ZL8imgWidth", metadata !35, i32 7, metadata !36, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!54 = metadata !{double (i32, i32, double, double)* @_Z9mapToRealiidd, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60}
!55 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0}
!56 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!57 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int", metadata !"double", metadata !"double"}
!58 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!59 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"imgWidth", metadata !"minR", metadata !"maxR"}
!60 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!61 = metadata !{double (i32, i32, double, double)* @_Z9mapToImagiidd, metadata !55, metadata !56, metadata !57, metadata !58, metadata !62, metadata !60}
!62 = metadata !{metadata !"kernel_arg_name", metadata !"y", metadata !"imgHeight", metadata !"minI", metadata !"maxI"}
!63 = metadata !{i32 (double, double, i32)* @_Z14findmandelbrotddi, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !60}
!64 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0}
!65 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!66 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"double", metadata !"int"}
!67 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!68 = metadata !{metadata !"kernel_arg_name", metadata !"cr", metadata !"ci", metadata !"max_iteration"}
!69 = metadata !{void ([512 x i32]*)* @_Z15mandlebrot_mainPA512_i, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !60}
!70 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!71 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!72 = metadata !{metadata !"kernel_arg_type", metadata !"int [512]*"}
!73 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!74 = metadata !{metadata !"kernel_arg_name", metadata !"res"}
!75 = metadata !{null, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !60}
!76 = metadata !{metadata !"kernel_arg_addr_space"}
!77 = metadata !{metadata !"kernel_arg_access_qual"}
!78 = metadata !{metadata !"kernel_arg_type"}
!79 = metadata !{metadata !"kernel_arg_type_qual"}
!80 = metadata !{metadata !"kernel_arg_name"}
!81 = metadata !{i32 786689, metadata !5, metadata !"x", metadata !6, i32 16777219, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!82 = metadata !{i32 3, i32 22, metadata !5, null}
!83 = metadata !{i32 786689, metadata !5, metadata !"imgWidth", metadata !6, i32 33554435, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!84 = metadata !{i32 3, i32 29, metadata !5, null}
!85 = metadata !{i32 786689, metadata !5, metadata !"minR", metadata !6, i32 50331651, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!86 = metadata !{i32 3, i32 46, metadata !5, null}
!87 = metadata !{i32 786689, metadata !5, metadata !"maxR", metadata !6, i32 67108867, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!88 = metadata !{i32 3, i32 59, metadata !5, null}
!89 = metadata !{i32 786688, metadata !90, metadata !"xrange", metadata !6, i32 4, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!90 = metadata !{i32 786443, metadata !5, i32 3, i32 65, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!91 = metadata !{i32 4, i32 10, metadata !90, null}
!92 = metadata !{i32 4, i32 30, metadata !90, null}
!93 = metadata !{i32 6, i32 3, metadata !90, null}
!94 = metadata !{i32 786689, metadata !13, metadata !"y", metadata !6, i32 16777225, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!95 = metadata !{i32 9, i32 22, metadata !13, null}
!96 = metadata !{i32 786689, metadata !13, metadata !"imgHeight", metadata !6, i32 33554441, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!97 = metadata !{i32 9, i32 29, metadata !13, null}
!98 = metadata !{i32 786689, metadata !13, metadata !"minI", metadata !6, i32 50331657, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!99 = metadata !{i32 9, i32 47, metadata !13, null}
!100 = metadata !{i32 786689, metadata !13, metadata !"maxI", metadata !6, i32 67108873, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!101 = metadata !{i32 9, i32 60, metadata !13, null}
!102 = metadata !{i32 786688, metadata !103, metadata !"yrange", metadata !6, i32 10, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!103 = metadata !{i32 786443, metadata !13, i32 9, i32 66, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!104 = metadata !{i32 10, i32 10, metadata !103, null}
!105 = metadata !{i32 10, i32 30, metadata !103, null}
!106 = metadata !{i32 11, i32 3, metadata !103, null}
!107 = metadata !{i32 786689, metadata !14, metadata !"cr", metadata !6, i32 16777230, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!108 = metadata !{i32 14, i32 27, metadata !14, null}
!109 = metadata !{i32 786689, metadata !14, metadata !"ci", metadata !6, i32 33554446, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!110 = metadata !{i32 14, i32 38, metadata !14, null}
!111 = metadata !{i32 786689, metadata !14, metadata !"max_iteration", metadata !6, i32 50331662, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!112 = metadata !{i32 14, i32 46, metadata !14, null}
!113 = metadata !{i32 786688, metadata !114, metadata !"i", metadata !6, i32 16, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!114 = metadata !{i32 786443, metadata !14, i32 14, i32 61, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!115 = metadata !{i32 16, i32 7, metadata !114, null}
!116 = metadata !{i32 16, i32 12, metadata !114, null}
!117 = metadata !{i32 786688, metadata !114, metadata !"zr", metadata !6, i32 17, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!118 = metadata !{i32 17, i32 10, metadata !114, null}
!119 = metadata !{i32 17, i32 28, metadata !114, null}
!120 = metadata !{i32 786688, metadata !114, metadata !"zi", metadata !6, i32 17, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!121 = metadata !{i32 17, i32 20, metadata !114, null}
!122 = metadata !{i32 18, i32 3, metadata !114, null}
!123 = metadata !{i32 786688, metadata !124, metadata !"temp", metadata !6, i32 19, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!124 = metadata !{i32 786443, metadata !114, i32 18, i32 58, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!125 = metadata !{i32 19, i32 12, metadata !124, null}
!126 = metadata !{i32 19, i32 45, metadata !124, null}
!127 = metadata !{i32 20, i32 5, metadata !124, null}
!128 = metadata !{i32 21, i32 5, metadata !124, null}
!129 = metadata !{i32 22, i32 5, metadata !124, null}
!130 = metadata !{i32 23, i32 3, metadata !124, null}
!131 = metadata !{i32 24, i32 3, metadata !114, null}
!132 = metadata !{i32 786689, metadata !17, metadata !"res", metadata !6, i32 16777243, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!133 = metadata !{i32 27, i32 26, metadata !17, null}
!134 = metadata !{i32 27, i32 53, metadata !135, null}
!135 = metadata !{i32 786443, metadata !17, i32 27, i32 52, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!136 = metadata !{i32 786688, metadata !137, metadata !"y", metadata !6, i32 31, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!137 = metadata !{i32 786443, metadata !135, i32 31, i32 3, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!138 = metadata !{i32 31, i32 12, metadata !137, null}
!139 = metadata !{i32 31, i32 17, metadata !137, null}
!140 = metadata !{i32 786688, metadata !141, metadata !"x", metadata !6, i32 32, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!141 = metadata !{i32 786443, metadata !142, i32 32, i32 5, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!142 = metadata !{i32 786443, metadata !137, i32 31, i32 39, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!143 = metadata !{i32 32, i32 14, metadata !141, null}
!144 = metadata !{i32 32, i32 19, metadata !141, null}
!145 = metadata !{i32 786688, metadata !146, metadata !"cr", metadata !6, i32 34, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!146 = metadata !{i32 786443, metadata !141, i32 32, i32 40, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!147 = metadata !{i32 34, i32 14, metadata !146, null}
!148 = metadata !{i32 34, i32 19, metadata !146, null}
!149 = metadata !{i32 786688, metadata !146, metadata !"ci", metadata !6, i32 35, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!150 = metadata !{i32 35, i32 14, metadata !146, null}
!151 = metadata !{i32 35, i32 19, metadata !146, null}
!152 = metadata !{i32 786688, metadata !146, metadata !"n", metadata !6, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!153 = metadata !{i32 38, i32 11, metadata !146, null}
!154 = metadata !{i32 38, i32 15, metadata !146, null}
!155 = metadata !{i32 41, i32 7, metadata !146, null}
!156 = metadata !{i32 42, i32 5, metadata !146, null}
!157 = metadata !{i32 32, i32 35, metadata !141, null}
!158 = metadata !{i32 43, i32 3, metadata !142, null}
!159 = metadata !{i32 31, i32 34, metadata !137, null}
!160 = metadata !{i32 44, i32 1, metadata !135, null}
