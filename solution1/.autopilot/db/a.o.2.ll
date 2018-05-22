; ModuleID = '/mnt/f/dev/mandelbrot-hls/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mandlebrot_main.str = internal unnamed_addr constant [16 x i8] c"mandlebrot_main\00" ; [#uses=1 type=[16 x i8]*]
@llvm.global_ctors.1 = appending global [0 x void ()*] zeroinitializer ; [#uses=0 type=[0 x void ()*]*]
@llvm.global_ctors.0 = appending global [0 x i32] zeroinitializer ; [#uses=0 type=[0 x i32]*]

; [#uses=0]
define void @mandlebrot_main([1024 x [512 x i32]]* %res) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x [512 x i32]]* %res) nounwind, !map !88
  call void (...)* @_ssdm_op_SpecTopModule([16 x i8]* @mandlebrot_main.str) nounwind
  call void @llvm.dbg.value(metadata !{[1024 x [512 x i32]]* %res}, i64 0, metadata !95), !dbg !99 ; [debug line = 27:26] [debug variable = res]
  br label %1, !dbg !100                          ; [debug line = 31:17]

; <label>:1                                       ; preds = %9, %0
  %y.assign = phi i10 [ 0, %0 ], [ %y, %9 ]       ; [#uses=4 type=i10]
  %y.assign.cast3 = zext i10 %y.assign to i32, !dbg !100 ; [#uses=1 type=i32] [debug line = 31:17]
  %exitcond1 = icmp eq i10 %y.assign, -512, !dbg !100 ; [#uses=1 type=i1] [debug line = 31:17]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 512, i64 512, i64 512) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1, label %10, label %.preheader.preheader, !dbg !100 ; [debug line = 31:17]

.preheader.preheader:                             ; preds = %1
  %tmp = zext i10 %y.assign to i64, !dbg !103     ; [#uses=1 type=i64] [debug line = 41:7]
  %tmp.i2 = sitofp i32 %y.assign.cast3 to double, !dbg !107 ; [#uses=1 type=double] [debug line = 11:3@35:19]
  %tmp.3.i = fmul double %tmp.i2, 3.906250e-03, !dbg !107 ; [#uses=1 type=double] [debug line = 11:3@35:19]
  %ci = fadd double %tmp.3.i, -1.000000e+00, !dbg !107 ; [#uses=1 type=double] [debug line = 11:3@35:19]
  br label %.preheader, !dbg !110                 ; [debug line = 32:19]

.preheader:                                       ; preds = %findmandelbrot.exit, %.preheader.preheader
  %x.assign = phi i11 [ %x, %findmandelbrot.exit ], [ 0, %.preheader.preheader ] ; [#uses=4 type=i11]
  %x.assign.cast2 = zext i11 %x.assign to i32, !dbg !110 ; [#uses=1 type=i32] [debug line = 32:19]
  %exitcond = icmp eq i11 %x.assign, -1024, !dbg !110 ; [#uses=1 type=i1] [debug line = 32:19]
  %3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1024, i64 1024, i64 1024) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond, label %9, label %4, !dbg !110  ; [debug line = 32:19]

; <label>:4                                       ; preds = %.preheader
  call void @llvm.dbg.value(metadata !{i11 %x.assign}, i64 0, metadata !111), !dbg !113 ; [debug line = 3:22@34:19] [debug variable = x]
  %tmp.i = sitofp i32 %x.assign.cast2 to double, !dbg !114 ; [#uses=1 type=double] [debug line = 6:3@34:19]
  %tmp.1.i = fmul double %tmp.i, 3.906250e-03, !dbg !114 ; [#uses=1 type=double] [debug line = 6:3@34:19]
  %cr = fadd double %tmp.1.i, -2.500000e+00, !dbg !114 ; [#uses=1 type=double] [debug line = 6:3@34:19]
  call void @llvm.dbg.value(metadata !{double %cr}, i64 0, metadata !116), !dbg !112 ; [debug line = 34:19] [debug variable = cr]
  call void @llvm.dbg.value(metadata !{i10 %y.assign}, i64 0, metadata !117), !dbg !118 ; [debug line = 9:22@35:19] [debug variable = y]
  call void @llvm.dbg.value(metadata !{double %ci}, i64 0, metadata !119), !dbg !109 ; [debug line = 35:19] [debug variable = ci]
  call void @llvm.dbg.value(metadata !{double %cr}, i64 0, metadata !120) nounwind, !dbg !122 ; [debug line = 14:27@38:15] [debug variable = cr]
  call void @llvm.dbg.value(metadata !{double %ci}, i64 0, metadata !123) nounwind, !dbg !124 ; [debug line = 14:38@38:15] [debug variable = ci]
  br label %5, !dbg !125                          ; [debug line = 18:3@38:15]

; <label>:5                                       ; preds = %8, %4
  %n = phi i10 [ 0, %4 ], [ %i, %8 ]              ; [#uses=3 type=i10]
  %zr.i = phi double [ 0.000000e+00, %4 ], [ %temp, %8 ] ; [#uses=3 type=double]
  %zi.i = phi double [ 0.000000e+00, %4 ], [ %zi, %8 ] ; [#uses=3 type=double]
  %n.cast1 = trunc i10 %n to i8, !dbg !125        ; [#uses=2 type=i8] [debug line = 18:3@38:15]
  %tmp.i3 = icmp sgt i10 %n, -1, !dbg !125        ; [#uses=1 type=i1] [debug line = 18:3@38:15]
  %6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 512, i64 256) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.i3, label %7, label %findmandelbrot.exit, !dbg !125 ; [debug line = 18:3@38:15]

; <label>:7                                       ; preds = %5
  %tmp.9.i = fmul double %zr.i, %zr.i, !dbg !125  ; [#uses=2 type=double] [debug line = 18:3@38:15]
  %tmp..i = fmul double %zi.i, %zi.i, !dbg !125   ; [#uses=2 type=double] [debug line = 18:3@38:15]
  %tmp.1.i4 = fadd double %tmp.9.i, %tmp..i, !dbg !125 ; [#uses=2 type=double] [debug line = 18:3@38:15]
  %tmp.1.i4_to_int = bitcast double %tmp.1.i4 to i64 ; [#uses=2 type=i64]
  %tmp.1 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %tmp.1.i4_to_int, i32 52, i32 62) ; [#uses=1 type=i11]
  %tmp.2 = trunc i64 %tmp.1.i4_to_int to i52      ; [#uses=1 type=i52]
  %notlhs = icmp ne i11 %tmp.1, -1                ; [#uses=1 type=i1]
  %notrhs = icmp eq i52 %tmp.2, 0                 ; [#uses=1 type=i1]
  %tmp.3 = or i1 %notrhs, %notlhs                 ; [#uses=1 type=i1]
  %tmp.4 = fcmp olt double %tmp.1.i4, 4.000000e+00, !dbg !125 ; [#uses=1 type=i1] [debug line = 18:3@38:15]
  %tmp.5 = and i1 %tmp.3, %tmp.4, !dbg !125       ; [#uses=1 type=i1] [debug line = 18:3@38:15]
  br i1 %tmp.5, label %8, label %findmandelbrot.exit

; <label>:8                                       ; preds = %7
  %tmp.3.i6 = fsub double %tmp.9.i, %tmp..i, !dbg !127 ; [#uses=1 type=double] [debug line = 19:45@38:15]
  %temp = fadd double %tmp.3.i6, %cr, !dbg !127   ; [#uses=1 type=double] [debug line = 19:45@38:15]
  call void @llvm.dbg.value(metadata !{double %temp}, i64 0, metadata !129) nounwind, !dbg !127 ; [debug line = 19:45@38:15] [debug variable = temp]
  %tmp.4.i7 = fmul double %zr.i, 2.000000e+00, !dbg !130 ; [#uses=1 type=double] [debug line = 20:5@38:15]
  %tmp.5.i = fmul double %tmp.4.i7, %zi.i, !dbg !130 ; [#uses=1 type=double] [debug line = 20:5@38:15]
  %zi = fadd double %tmp.5.i, %ci, !dbg !130      ; [#uses=1 type=double] [debug line = 20:5@38:15]
  call void @llvm.dbg.value(metadata !{double %zi}, i64 0, metadata !131) nounwind, !dbg !130 ; [debug line = 20:5@38:15] [debug variable = zi]
  call void @llvm.dbg.value(metadata !{double %temp}, i64 0, metadata !132) nounwind, !dbg !133 ; [debug line = 21:5@38:15] [debug variable = zr]
  %i = add i10 %n, 1, !dbg !134                   ; [#uses=1 type=i10] [debug line = 22:5@38:15]
  call void @llvm.dbg.value(metadata !{i10 %i}, i64 0, metadata !135) nounwind, !dbg !134 ; [debug line = 22:5@38:15] [debug variable = i]
  br label %5, !dbg !136                          ; [debug line = 23:3@38:15]

findmandelbrot.exit:                              ; preds = %7, %5
  %n.cast1.lcssa = phi i8 [ %n.cast1, %7 ], [ %n.cast1, %5 ] ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i10 %n}, i64 0, metadata !137), !dbg !121 ; [debug line = 38:15] [debug variable = n]
  %tmp.6.cast = zext i8 %n.cast1.lcssa to i32, !dbg !103 ; [#uses=1 type=i32] [debug line = 41:7]
  %tmp.7 = zext i11 %x.assign to i64, !dbg !103   ; [#uses=1 type=i64] [debug line = 41:7]
  %res.addr = getelementptr [1024 x [512 x i32]]* %res, i64 0, i64 %tmp.7, i64 %tmp, !dbg !103 ; [#uses=1 type=i32*] [debug line = 41:7]
  store i32 %tmp.6.cast, i32* %res.addr, align 4, !dbg !103 ; [debug line = 41:7]
  %x = add i11 %x.assign, 1, !dbg !138            ; [#uses=1 type=i11] [debug line = 32:35]
  call void @llvm.dbg.value(metadata !{i11 %x}, i64 0, metadata !139), !dbg !138 ; [debug line = 32:35] [debug variable = x]
  br label %.preheader, !dbg !138                 ; [debug line = 32:35]

; <label>:9                                       ; preds = %.preheader
  %y = add i10 %y.assign, 1, !dbg !140            ; [#uses=1 type=i10] [debug line = 31:34]
  call void @llvm.dbg.value(metadata !{i10 %y}, i64 0, metadata !141), !dbg !140 ; [debug line = 31:34] [debug variable = y]
  br label %1, !dbg !140                          ; [debug line = 31:34]

; <label>:10                                      ; preds = %1
  ret void, !dbg !142                             ; [debug line = 44:1]
}

; [#uses=14]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=3]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=1]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=1]
declare i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64, i32, i32) nounwind readnone

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!54, !61, !63, !69, !75, !75}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!81}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/mnt/f/dev/mandelbrot-hls/solution1/.autopilot/db/mandelbrot.pragma.2.cpp", metadata !"/mnt/f/dev", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !32} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !13, metadata !14, metadata !17, metadata !24, metadata !31}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"mapToReal", metadata !"mapToReal", metadata !"_Z9mapToRealiidd", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 3} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"mandelbrot-hls/mandelbrot.cpp", metadata !"/mnt/f/dev", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !10, metadata !10, metadata !9, metadata !9}
!9 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!10 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{i32 786478, i32 0, metadata !6, metadata !"mapToImag", metadata !"mapToImag", metadata !"_Z9mapToImagiidd", metadata !6, i32 9, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 9} ; [ DW_TAG_subprogram ]
!14 = metadata !{i32 786478, i32 0, metadata !6, metadata !"findmandelbrot", metadata !"findmandelbrot", metadata !"_Z14findmandelbrotddi", metadata !6, i32 14, metadata !15, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 14} ; [ DW_TAG_subprogram ]
!15 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !16, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!16 = metadata !{metadata !10, metadata !9, metadata !9, metadata !10}
!17 = metadata !{i32 786478, i32 0, metadata !6, metadata !"mandlebrot_main", metadata !"mandlebrot_main", metadata !"_Z15mandlebrot_mainPA512_i", metadata !6, i32 27, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 27} ; [ DW_TAG_subprogram ]
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
!54 = metadata !{null, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60}
!55 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0}
!56 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!57 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int", metadata !"double", metadata !"double"}
!58 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!59 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"imgWidth", metadata !"minR", metadata !"maxR"}
!60 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!61 = metadata !{null, metadata !55, metadata !56, metadata !57, metadata !58, metadata !62, metadata !60}
!62 = metadata !{metadata !"kernel_arg_name", metadata !"y", metadata !"imgHeight", metadata !"minI", metadata !"maxI"}
!63 = metadata !{null, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !60}
!64 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0}
!65 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!66 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"double", metadata !"int"}
!67 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!68 = metadata !{metadata !"kernel_arg_name", metadata !"cr", metadata !"ci", metadata !"max_iteration"}
!69 = metadata !{null, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !60}
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
!81 = metadata !{metadata !82, [0 x i32]* @llvm.global_ctors.0}
!82 = metadata !{metadata !83}
!83 = metadata !{i32 0, i32 31, metadata !84}
!84 = metadata !{metadata !85}
!85 = metadata !{metadata !"llvm.global_ctors.0", metadata !86, metadata !"", i32 0, i32 31}
!86 = metadata !{metadata !87}
!87 = metadata !{i32 0, i32 0, i32 1}
!88 = metadata !{metadata !89}
!89 = metadata !{i32 0, i32 31, metadata !90}
!90 = metadata !{metadata !91}
!91 = metadata !{metadata !"res", metadata !92, metadata !"int", i32 0, i32 31}
!92 = metadata !{metadata !93, metadata !94}
!93 = metadata !{i32 0, i32 1023, i32 1}
!94 = metadata !{i32 0, i32 511, i32 1}
!95 = metadata !{i32 786689, metadata !17, metadata !"res", null, i32 27, metadata !96, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!96 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 16777216, i64 32, i32 0, i32 0, metadata !10, metadata !97, i32 0, i32 0} ; [ DW_TAG_array_type ]
!97 = metadata !{metadata !98, metadata !23}
!98 = metadata !{i32 786465, i64 0, i64 1023}     ; [ DW_TAG_subrange_type ]
!99 = metadata !{i32 27, i32 26, metadata !17, null}
!100 = metadata !{i32 31, i32 17, metadata !101, null}
!101 = metadata !{i32 786443, metadata !102, i32 31, i32 3, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!102 = metadata !{i32 786443, metadata !17, i32 27, i32 52, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!103 = metadata !{i32 41, i32 7, metadata !104, null}
!104 = metadata !{i32 786443, metadata !105, i32 32, i32 40, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!105 = metadata !{i32 786443, metadata !106, i32 32, i32 5, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!106 = metadata !{i32 786443, metadata !101, i32 31, i32 39, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!107 = metadata !{i32 11, i32 3, metadata !108, metadata !109}
!108 = metadata !{i32 786443, metadata !13, i32 9, i32 66, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!109 = metadata !{i32 35, i32 19, metadata !104, null}
!110 = metadata !{i32 32, i32 19, metadata !105, null}
!111 = metadata !{i32 786689, metadata !5, metadata !"x", metadata !6, i32 16777219, metadata !10, i32 0, metadata !112} ; [ DW_TAG_arg_variable ]
!112 = metadata !{i32 34, i32 19, metadata !104, null}
!113 = metadata !{i32 3, i32 22, metadata !5, metadata !112}
!114 = metadata !{i32 6, i32 3, metadata !115, metadata !112}
!115 = metadata !{i32 786443, metadata !5, i32 3, i32 65, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!116 = metadata !{i32 786688, metadata !104, metadata !"cr", metadata !6, i32 34, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!117 = metadata !{i32 786689, metadata !13, metadata !"y", metadata !6, i32 16777225, metadata !10, i32 0, metadata !109} ; [ DW_TAG_arg_variable ]
!118 = metadata !{i32 9, i32 22, metadata !13, metadata !109}
!119 = metadata !{i32 786688, metadata !104, metadata !"ci", metadata !6, i32 35, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!120 = metadata !{i32 786689, metadata !14, metadata !"cr", metadata !6, i32 16777230, metadata !9, i32 0, metadata !121} ; [ DW_TAG_arg_variable ]
!121 = metadata !{i32 38, i32 15, metadata !104, null}
!122 = metadata !{i32 14, i32 27, metadata !14, metadata !121}
!123 = metadata !{i32 786689, metadata !14, metadata !"ci", metadata !6, i32 33554446, metadata !9, i32 0, metadata !121} ; [ DW_TAG_arg_variable ]
!124 = metadata !{i32 14, i32 38, metadata !14, metadata !121}
!125 = metadata !{i32 18, i32 3, metadata !126, metadata !121}
!126 = metadata !{i32 786443, metadata !14, i32 14, i32 61, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!127 = metadata !{i32 19, i32 45, metadata !128, metadata !121}
!128 = metadata !{i32 786443, metadata !126, i32 18, i32 58, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!129 = metadata !{i32 786688, metadata !128, metadata !"temp", metadata !6, i32 19, metadata !9, i32 0, metadata !121} ; [ DW_TAG_auto_variable ]
!130 = metadata !{i32 20, i32 5, metadata !128, metadata !121}
!131 = metadata !{i32 786688, metadata !126, metadata !"zi", metadata !6, i32 17, metadata !9, i32 0, metadata !121} ; [ DW_TAG_auto_variable ]
!132 = metadata !{i32 786688, metadata !126, metadata !"zr", metadata !6, i32 17, metadata !9, i32 0, metadata !121} ; [ DW_TAG_auto_variable ]
!133 = metadata !{i32 21, i32 5, metadata !128, metadata !121}
!134 = metadata !{i32 22, i32 5, metadata !128, metadata !121}
!135 = metadata !{i32 786688, metadata !126, metadata !"i", metadata !6, i32 16, metadata !10, i32 0, metadata !121} ; [ DW_TAG_auto_variable ]
!136 = metadata !{i32 23, i32 3, metadata !128, metadata !121}
!137 = metadata !{i32 786688, metadata !104, metadata !"n", metadata !6, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!138 = metadata !{i32 32, i32 35, metadata !105, null}
!139 = metadata !{i32 786688, metadata !105, metadata !"x", metadata !6, i32 32, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!140 = metadata !{i32 31, i32 34, metadata !101, null}
!141 = metadata !{i32 786688, metadata !101, metadata !"y", metadata !6, i32 31, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!142 = metadata !{i32 44, i32 1, metadata !102, null}
