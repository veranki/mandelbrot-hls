; ModuleID = '/mnt/f/dev/mandelbrot-hls/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mandlebrot_main.str = internal unnamed_addr constant [16 x i8] c"mandlebrot_main\00" ; [#uses=1 type=[16 x i8]*]
@llvm.global_ctors = appending global [0 x { i32, void ()* }] zeroinitializer ; [#uses=0 type=[0 x { i32, void ()* }]*]

; [#uses=1]
define internal fastcc double @mapToReal(i32 %x) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !81), !dbg !82 ; [debug line = 3:22] [debug variable = x]
  %tmp = sitofp i32 %x to double, !dbg !83        ; [#uses=1 type=double] [debug line = 6:3]
  %tmp.1 = fmul double %tmp, 3.906250e-03, !dbg !83 ; [#uses=1 type=double] [debug line = 6:3]
  %tmp.2 = fadd double %tmp.1, -2.500000e+00, !dbg !83 ; [#uses=1 type=double] [debug line = 6:3]
  ret double %tmp.2, !dbg !83                     ; [debug line = 6:3]
}

; [#uses=1]
define internal fastcc double @mapToImag(i32 %y) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !85), !dbg !86 ; [debug line = 9:22] [debug variable = y]
  %tmp = sitofp i32 %y to double, !dbg !87        ; [#uses=1 type=double] [debug line = 11:3]
  %tmp.3 = fmul double %tmp, 3.906250e-03, !dbg !87 ; [#uses=1 type=double] [debug line = 11:3]
  %tmp.4 = fadd double %tmp.3, -1.000000e+00, !dbg !87 ; [#uses=1 type=double] [debug line = 11:3]
  ret double %tmp.4, !dbg !87                     ; [debug line = 11:3]
}

; [#uses=0]
define void @mandlebrot_main([512 x i32]* %res) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([16 x i8]* @mandlebrot_main.str) nounwind
  call void @llvm.dbg.value(metadata !{[512 x i32]* %res}, i64 0, metadata !89), !dbg !90 ; [debug line = 27:26] [debug variable = res]
  call void (...)* @_ssdm_SpecArrayDimSize([512 x i32]* %res, i32 1024) nounwind, !dbg !91 ; [debug line = 27:53]
  br label %1, !dbg !93                           ; [debug line = 31:17]

; <label>:1                                       ; preds = %3, %0
  %y = phi i32 [ 0, %0 ], [ %y.1, %3 ]            ; [#uses=4 type=i32]
  %exitcond1 = icmp eq i32 %y, 512, !dbg !93      ; [#uses=1 type=i1] [debug line = 31:17]
  br i1 %exitcond1, label %4, label %.preheader.preheader, !dbg !93 ; [debug line = 31:17]

.preheader.preheader:                             ; preds = %1
  %tmp = sext i32 %y to i64, !dbg !95             ; [#uses=1 type=i64] [debug line = 41:7]
  br label %.preheader, !dbg !99                  ; [debug line = 32:19]

.preheader:                                       ; preds = %2, %.preheader.preheader
  %x = phi i32 [ %x.1, %2 ], [ 0, %.preheader.preheader ] ; [#uses=4 type=i32]
  %exitcond = icmp eq i32 %x, 1024, !dbg !99      ; [#uses=1 type=i1] [debug line = 32:19]
  br i1 %exitcond, label %3, label %2, !dbg !99   ; [debug line = 32:19]

; <label>:2                                       ; preds = %.preheader
  %cr = call fastcc double @mapToReal(i32 %x), !dbg !100 ; [#uses=1 type=double] [debug line = 34:19]
  call void @llvm.dbg.value(metadata !{double %cr}, i64 0, metadata !101), !dbg !100 ; [debug line = 34:19] [debug variable = cr]
  %ci = call fastcc double @mapToImag(i32 %y), !dbg !102 ; [#uses=1 type=double] [debug line = 35:19]
  call void @llvm.dbg.value(metadata !{double %ci}, i64 0, metadata !103), !dbg !102 ; [debug line = 35:19] [debug variable = ci]
  %n = call fastcc i32 @findmandelbrot(double %cr, double %ci), !dbg !104 ; [#uses=1 type=i32] [debug line = 38:15]
  call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !105), !dbg !104 ; [debug line = 38:15] [debug variable = n]
  %tmp.6 = srem i32 %n, 256, !dbg !95             ; [#uses=1 type=i32] [debug line = 41:7]
  %tmp.7 = sext i32 %x to i64, !dbg !95           ; [#uses=1 type=i64] [debug line = 41:7]
  %res.addr = getelementptr inbounds [512 x i32]* %res, i64 %tmp.7, i64 %tmp, !dbg !95 ; [#uses=1 type=i32*] [debug line = 41:7]
  store i32 %tmp.6, i32* %res.addr, align 4, !dbg !95 ; [debug line = 41:7]
  %x.1 = add nsw i32 %x, 1, !dbg !106             ; [#uses=1 type=i32] [debug line = 32:35]
  call void @llvm.dbg.value(metadata !{i32 %x.1}, i64 0, metadata !107), !dbg !106 ; [debug line = 32:35] [debug variable = x]
  br label %.preheader, !dbg !106                 ; [debug line = 32:35]

; <label>:3                                       ; preds = %.preheader
  %y.1 = add nsw i32 %y, 1, !dbg !108             ; [#uses=1 type=i32] [debug line = 31:34]
  call void @llvm.dbg.value(metadata !{i32 %y.1}, i64 0, metadata !109), !dbg !108 ; [debug line = 31:34] [debug variable = y]
  br label %1, !dbg !108                          ; [debug line = 31:34]

; <label>:4                                       ; preds = %1
  ret void, !dbg !110                             ; [debug line = 44:1]
}

; [#uses=14]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define internal fastcc i32 @findmandelbrot(double %cr, double %ci) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{double %cr}, i64 0, metadata !111), !dbg !112 ; [debug line = 14:27] [debug variable = cr]
  call void @llvm.dbg.value(metadata !{double %ci}, i64 0, metadata !113), !dbg !114 ; [debug line = 14:38] [debug variable = ci]
  br label %1, !dbg !115                          ; [debug line = 18:3]

; <label>:1                                       ; preds = %3, %0
  %i = phi i32 [ 0, %0 ], [ %i.1, %3 ]            ; [#uses=4 type=i32]
  %zr = phi double [ 0.000000e+00, %0 ], [ %temp, %3 ] ; [#uses=3 type=double]
  %zi = phi double [ 0.000000e+00, %0 ], [ %zi.1, %3 ] ; [#uses=3 type=double]
  %tmp = icmp slt i32 %i, 512, !dbg !115          ; [#uses=1 type=i1] [debug line = 18:3]
  br i1 %tmp, label %2, label %.critedge, !dbg !115 ; [debug line = 18:3]

; <label>:2                                       ; preds = %1
  %tmp.9 = fmul double %zr, %zr, !dbg !115        ; [#uses=2 type=double] [debug line = 18:3]
  %tmp.10 = fmul double %zi, %zi, !dbg !115       ; [#uses=2 type=double] [debug line = 18:3]
  %tmp.11 = fadd double %tmp.9, %tmp.10, !dbg !115 ; [#uses=1 type=double] [debug line = 18:3]
  %tmp.12 = fcmp olt double %tmp.11, 4.000000e+00, !dbg !115 ; [#uses=1 type=i1] [debug line = 18:3]
  br i1 %tmp.12, label %3, label %.critedge

; <label>:3                                       ; preds = %2
  %tmp.13 = fsub double %tmp.9, %tmp.10, !dbg !117 ; [#uses=1 type=double] [debug line = 19:45]
  %temp = fadd double %tmp.13, %cr, !dbg !117     ; [#uses=1 type=double] [debug line = 19:45]
  call void @llvm.dbg.value(metadata !{double %temp}, i64 0, metadata !119), !dbg !117 ; [debug line = 19:45] [debug variable = temp]
  %tmp.14 = fmul double %zr, 2.000000e+00, !dbg !120 ; [#uses=1 type=double] [debug line = 20:5]
  %tmp.15 = fmul double %tmp.14, %zi, !dbg !120   ; [#uses=1 type=double] [debug line = 20:5]
  %zi.1 = fadd double %tmp.15, %ci, !dbg !120     ; [#uses=1 type=double] [debug line = 20:5]
  call void @llvm.dbg.value(metadata !{double %zi.1}, i64 0, metadata !121), !dbg !120 ; [debug line = 20:5] [debug variable = zi]
  call void @llvm.dbg.value(metadata !{double %temp}, i64 0, metadata !122), !dbg !123 ; [debug line = 21:5] [debug variable = zr]
  %i.1 = add nsw i32 %i, 1, !dbg !124             ; [#uses=1 type=i32] [debug line = 22:5]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !125), !dbg !124 ; [debug line = 22:5] [debug variable = i]
  br label %1, !dbg !126                          ; [debug line = 23:3]

.critedge:                                        ; preds = %2, %1
  %i.0.lcssa = phi i32 [ %i, %2 ], [ %i, %1 ]     ; [#uses=1 type=i32]
  ret i32 %i.0.lcssa, !dbg !127                   ; [debug line = 24:3]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

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
!17 = metadata !{i32 786478, i32 0, metadata !6, metadata !"mandlebrot_main", metadata !"mandlebrot_main", metadata !"_Z15mandlebrot_mainPA512_i", metadata !6, i32 27, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([512 x i32]*)* @mandlebrot_main, null, null, metadata !11, i32 27} ; [ DW_TAG_subprogram ]
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
!69 = metadata !{void ([512 x i32]*)* @mandlebrot_main, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !60}
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
!83 = metadata !{i32 6, i32 3, metadata !84, null}
!84 = metadata !{i32 786443, metadata !5, i32 3, i32 65, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 786689, metadata !13, metadata !"y", metadata !6, i32 16777225, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!86 = metadata !{i32 9, i32 22, metadata !13, null}
!87 = metadata !{i32 11, i32 3, metadata !88, null}
!88 = metadata !{i32 786443, metadata !13, i32 9, i32 66, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!89 = metadata !{i32 786689, metadata !17, metadata !"res", metadata !6, i32 16777243, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!90 = metadata !{i32 27, i32 26, metadata !17, null}
!91 = metadata !{i32 27, i32 53, metadata !92, null}
!92 = metadata !{i32 786443, metadata !17, i32 27, i32 52, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!93 = metadata !{i32 31, i32 17, metadata !94, null}
!94 = metadata !{i32 786443, metadata !92, i32 31, i32 3, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!95 = metadata !{i32 41, i32 7, metadata !96, null}
!96 = metadata !{i32 786443, metadata !97, i32 32, i32 40, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!97 = metadata !{i32 786443, metadata !98, i32 32, i32 5, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!98 = metadata !{i32 786443, metadata !94, i32 31, i32 39, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!99 = metadata !{i32 32, i32 19, metadata !97, null}
!100 = metadata !{i32 34, i32 19, metadata !96, null}
!101 = metadata !{i32 786688, metadata !96, metadata !"cr", metadata !6, i32 34, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!102 = metadata !{i32 35, i32 19, metadata !96, null}
!103 = metadata !{i32 786688, metadata !96, metadata !"ci", metadata !6, i32 35, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!104 = metadata !{i32 38, i32 15, metadata !96, null}
!105 = metadata !{i32 786688, metadata !96, metadata !"n", metadata !6, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!106 = metadata !{i32 32, i32 35, metadata !97, null}
!107 = metadata !{i32 786688, metadata !97, metadata !"x", metadata !6, i32 32, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!108 = metadata !{i32 31, i32 34, metadata !94, null}
!109 = metadata !{i32 786688, metadata !94, metadata !"y", metadata !6, i32 31, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!110 = metadata !{i32 44, i32 1, metadata !92, null}
!111 = metadata !{i32 786689, metadata !14, metadata !"cr", metadata !6, i32 16777230, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!112 = metadata !{i32 14, i32 27, metadata !14, null}
!113 = metadata !{i32 786689, metadata !14, metadata !"ci", metadata !6, i32 33554446, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!114 = metadata !{i32 14, i32 38, metadata !14, null}
!115 = metadata !{i32 18, i32 3, metadata !116, null}
!116 = metadata !{i32 786443, metadata !14, i32 14, i32 61, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!117 = metadata !{i32 19, i32 45, metadata !118, null}
!118 = metadata !{i32 786443, metadata !116, i32 18, i32 58, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!119 = metadata !{i32 786688, metadata !118, metadata !"temp", metadata !6, i32 19, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!120 = metadata !{i32 20, i32 5, metadata !118, null}
!121 = metadata !{i32 786688, metadata !116, metadata !"zi", metadata !6, i32 17, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!122 = metadata !{i32 786688, metadata !116, metadata !"zr", metadata !6, i32 17, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!123 = metadata !{i32 21, i32 5, metadata !118, null}
!124 = metadata !{i32 22, i32 5, metadata !118, null}
!125 = metadata !{i32 786688, metadata !116, metadata !"i", metadata !6, i32 16, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!126 = metadata !{i32 23, i32 3, metadata !118, null}
!127 = metadata !{i32 24, i32 3, metadata !116, null}
