; ModuleID = '/mnt/f/dev/mandelbrot-hls/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mandlebrot_main_str = internal unnamed_addr constant [16 x i8] c"mandlebrot_main\00" ; [#uses=1 type=[16 x i8]*]
@llvm_global_ctors_1 = appending global [0 x void ()*] zeroinitializer ; [#uses=0 type=[0 x void ()*]*]
@llvm_global_ctors_0 = appending global [0 x i32] zeroinitializer ; [#uses=0 type=[0 x i32]*]

; [#uses=0]
define void @mandlebrot_main([524288 x i32]* %res) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([524288 x i32]* %res) nounwind, !map !34
  call void (...)* @_ssdm_op_SpecTopModule([16 x i8]* @mandlebrot_main_str) nounwind
  call void @llvm.dbg.value(metadata !{[524288 x i32]* %res}, i64 0, metadata !41), !dbg !56 ; [debug line = 27:26] [debug variable = res]
  br label %.loopexit, !dbg !57                   ; [debug line = 31:17]

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %0
  %y_assign = phi i10 [ 0, %0 ], [ %y, %.loopexit.loopexit ] ; [#uses=4 type=i10]
  %y_assign_cast3 = zext i10 %y_assign to i32, !dbg !57 ; [#uses=1 type=i32] [debug line = 31:17]
  %exitcond1 = icmp eq i10 %y_assign, -512, !dbg !57 ; [#uses=1 type=i1] [debug line = 31:17]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 512, i64 512, i64 512) nounwind ; [#uses=0 type=i32]
  %y = add i10 %y_assign, 1, !dbg !60             ; [#uses=1 type=i10] [debug line = 31:34]
  call void @llvm.dbg.value(metadata !{i10 %y}, i64 0, metadata !61), !dbg !60 ; [debug line = 31:34] [debug variable = y]
  br i1 %exitcond1, label %5, label %.preheader.preheader, !dbg !57 ; [debug line = 31:17]

.preheader.preheader:                             ; preds = %.loopexit
  %tmp_cast = zext i10 %y_assign to i21, !dbg !62 ; [#uses=1 type=i21] [debug line = 11:3@35:19]
  %tmp_i2 = sitofp i32 %y_assign_cast3 to double, !dbg !62 ; [#uses=1 type=double] [debug line = 11:3@35:19]
  %tmp_3_i = fmul double %tmp_i2, 3.906250e-03, !dbg !62 ; [#uses=1 type=double] [debug line = 11:3@35:19]
  %ci = fadd double %tmp_3_i, -1.000000e+00, !dbg !62 ; [#uses=1 type=double] [debug line = 11:3@35:19]
  br label %.preheader, !dbg !72                  ; [debug line = 32:19]

.preheader:                                       ; preds = %findmandelbrot.exit, %.preheader.preheader
  %x_assign = phi i11 [ %x, %findmandelbrot.exit ], [ 0, %.preheader.preheader ] ; [#uses=4 type=i11]
  %x_assign_cast2 = zext i11 %x_assign to i32, !dbg !72 ; [#uses=1 type=i32] [debug line = 32:19]
  %exitcond = icmp eq i11 %x_assign, -1024, !dbg !72 ; [#uses=1 type=i1] [debug line = 32:19]
  %empty_4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1024, i64 1024, i64 1024) nounwind ; [#uses=0 type=i32]
  %x = add i11 %x_assign, 1, !dbg !73             ; [#uses=1 type=i11] [debug line = 32:35]
  br i1 %exitcond, label %.loopexit.loopexit, label %1, !dbg !72 ; [debug line = 32:19]

; <label>:1                                       ; preds = %.preheader
  call void @llvm.dbg.value(metadata !{i11 %x_assign}, i64 0, metadata !74), !dbg !77 ; [debug line = 3:22@34:19] [debug variable = x]
  %tmp_i = sitofp i32 %x_assign_cast2 to double, !dbg !78 ; [#uses=1 type=double] [debug line = 6:3@34:19]
  %tmp_1_i = fmul double %tmp_i, 3.906250e-03, !dbg !78 ; [#uses=1 type=double] [debug line = 6:3@34:19]
  %cr = fadd double %tmp_1_i, -2.500000e+00, !dbg !78 ; [#uses=1 type=double] [debug line = 6:3@34:19]
  call void @llvm.dbg.value(metadata !{double %cr}, i64 0, metadata !80), !dbg !76 ; [debug line = 34:19] [debug variable = cr]
  call void @llvm.dbg.value(metadata !{i10 %y_assign}, i64 0, metadata !81), !dbg !82 ; [debug line = 9:22@35:19] [debug variable = y]
  call void @llvm.dbg.value(metadata !{double %ci}, i64 0, metadata !83), !dbg !68 ; [debug line = 35:19] [debug variable = ci]
  call void @llvm.dbg.value(metadata !{double %cr}, i64 0, metadata !84) nounwind, !dbg !89 ; [debug line = 14:27@38:15] [debug variable = cr]
  call void @llvm.dbg.value(metadata !{double %ci}, i64 0, metadata !90) nounwind, !dbg !91 ; [debug line = 14:38@38:15] [debug variable = ci]
  br label %2, !dbg !92                           ; [debug line = 18:3@38:15]

; <label>:2                                       ; preds = %4, %1
  %n = phi i10 [ 0, %1 ], [ %i, %4 ]              ; [#uses=3 type=i10]
  %zr_i = phi double [ 0.000000e+00, %1 ], [ %temp, %4 ] ; [#uses=3 type=double]
  %zi_i = phi double [ 0.000000e+00, %1 ], [ %zi, %4 ] ; [#uses=3 type=double]
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i10.i32(i10 %n, i32 9), !dbg !92 ; [#uses=1 type=i1] [debug line = 18:3@38:15]
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 512, i64 256) nounwind ; [#uses=0 type=i32]
  %i = add i10 %n, 1, !dbg !94                    ; [#uses=1 type=i10] [debug line = 22:5@38:15]
  br i1 %tmp, label %findmandelbrot.exit, label %3, !dbg !92 ; [debug line = 18:3@38:15]

; <label>:3                                       ; preds = %2
  %tmp_9_i = fmul double %zr_i, %zr_i, !dbg !92   ; [#uses=2 type=double] [debug line = 18:3@38:15]
  %tmp_i_6 = fmul double %zi_i, %zi_i, !dbg !92   ; [#uses=2 type=double] [debug line = 18:3@38:15]
  %tmp_1_i4 = fadd double %tmp_9_i, %tmp_i_6, !dbg !92 ; [#uses=2 type=double] [debug line = 18:3@38:15]
  %tmp_1_i4_to_int = bitcast double %tmp_1_i4 to i64 ; [#uses=2 type=i64]
  %tmp_1 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %tmp_1_i4_to_int, i32 52, i32 62) ; [#uses=1 type=i11]
  %tmp_2 = trunc i64 %tmp_1_i4_to_int to i52      ; [#uses=1 type=i52]
  %notlhs = icmp ne i11 %tmp_1, -1                ; [#uses=1 type=i1]
  %notrhs = icmp eq i52 %tmp_2, 0                 ; [#uses=1 type=i1]
  %tmp_3 = or i1 %notrhs, %notlhs                 ; [#uses=1 type=i1]
  %tmp_4 = fcmp olt double %tmp_1_i4, 4.000000e+00, !dbg !92 ; [#uses=1 type=i1] [debug line = 18:3@38:15]
  %tmp_5 = and i1 %tmp_3, %tmp_4, !dbg !92        ; [#uses=1 type=i1] [debug line = 18:3@38:15]
  br i1 %tmp_5, label %4, label %findmandelbrot.exit

; <label>:4                                       ; preds = %3
  %tmp_3_i6 = fsub double %tmp_9_i, %tmp_i_6, !dbg !96 ; [#uses=1 type=double] [debug line = 19:45@38:15]
  %temp = fadd double %tmp_3_i6, %cr, !dbg !96    ; [#uses=1 type=double] [debug line = 19:45@38:15]
  call void @llvm.dbg.value(metadata !{double %temp}, i64 0, metadata !97) nounwind, !dbg !96 ; [debug line = 19:45@38:15] [debug variable = temp]
  %tmp_4_i7 = fmul double %zr_i, 2.000000e+00, !dbg !98 ; [#uses=1 type=double] [debug line = 20:5@38:15]
  %tmp_5_i = fmul double %tmp_4_i7, %zi_i, !dbg !98 ; [#uses=1 type=double] [debug line = 20:5@38:15]
  %zi = fadd double %tmp_5_i, %ci, !dbg !98       ; [#uses=1 type=double] [debug line = 20:5@38:15]
  call void @llvm.dbg.value(metadata !{double %zi}, i64 0, metadata !99) nounwind, !dbg !98 ; [debug line = 20:5@38:15] [debug variable = zi]
  call void @llvm.dbg.value(metadata !{double %temp}, i64 0, metadata !100) nounwind, !dbg !101 ; [debug line = 21:5@38:15] [debug variable = zr]
  call void @llvm.dbg.value(metadata !{i10 %i}, i64 0, metadata !102) nounwind, !dbg !94 ; [debug line = 22:5@38:15] [debug variable = i]
  br label %2, !dbg !103                          ; [debug line = 23:3@38:15]

findmandelbrot.exit:                              ; preds = %3, %2
  %tmp_7 = trunc i10 %n to i8, !dbg !92           ; [#uses=1 type=i8] [debug line = 18:3@38:15]
  call void @llvm.dbg.value(metadata !{i10 %n}, i64 0, metadata !104), !dbg !88 ; [debug line = 38:15] [debug variable = n]
  %tmp_6_cast = zext i8 %tmp_7 to i32, !dbg !105  ; [#uses=1 type=i32] [debug line = 41:7]
  %tmp_6 = call i20 @_ssdm_op_BitConcatenate.i20.i11.i9(i11 %x_assign, i9 0) ; [#uses=1 type=i20]
  %tmp_7_cast = zext i20 %tmp_6 to i21, !dbg !105 ; [#uses=1 type=i21] [debug line = 41:7]
  %tmp_8 = add i21 %tmp_7_cast, %tmp_cast, !dbg !105 ; [#uses=1 type=i21] [debug line = 41:7]
  %tmp_8_cast = zext i21 %tmp_8 to i64, !dbg !105 ; [#uses=1 type=i64] [debug line = 41:7]
  %res_addr = getelementptr [524288 x i32]* %res, i64 0, i64 %tmp_8_cast, !dbg !105 ; [#uses=1 type=i32*] [debug line = 41:7]
  store i32 %tmp_6_cast, i32* %res_addr, align 4, !dbg !105 ; [debug line = 41:7]
  call void @llvm.dbg.value(metadata !{i11 %x}, i64 0, metadata !106), !dbg !73 ; [debug line = 32:35] [debug variable = x]
  br label %.preheader, !dbg !73                  ; [debug line = 32:35]

; <label>:5                                       ; preds = %.loopexit
  ret void, !dbg !107                             ; [debug line = 44:1]
}

; [#uses=1]
declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

; [#uses=14]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=3]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=0]
declare i8 @_ssdm_op_PartSelect.i8.i10.i32.i32(i10, i32, i32) nounwind readnone

; [#uses=0]
declare i52 @_ssdm_op_PartSelect.i52.i64.i32.i32(i64, i32, i32) nounwind readnone

; [#uses=1]
define weak i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2) ; [#uses=1 type=i64]
  %empty_7 = trunc i64 %empty to i11              ; [#uses=1 type=i11]
  ret i11 %empty_7
}

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i10.i32(i10, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i10                    ; [#uses=1 type=i10]
  %empty_8 = shl i10 1, %empty                    ; [#uses=1 type=i10]
  %empty_9 = and i10 %0, %empty_8                 ; [#uses=1 type=i10]
  %empty_10 = icmp ne i10 %empty_9, 0             ; [#uses=1 type=i1]
  ret i1 %empty_10
}

; [#uses=1]
define weak i20 @_ssdm_op_BitConcatenate.i20.i11.i9(i11, i9) nounwind readnone {
entry:
  %empty = zext i11 %0 to i20                     ; [#uses=1 type=i20]
  %empty_11 = zext i9 %1 to i20                   ; [#uses=1 type=i20]
  %empty_12 = shl i20 %empty, 9                   ; [#uses=1 type=i20]
  %empty_13 = or i20 %empty_12, %empty_11         ; [#uses=1 type=i20]
  ret i20 %empty_13
}

!opencl.kernels = !{!0, !7, !9, !15, !21, !21}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!27}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int", metadata !"double", metadata !"double"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"imgWidth", metadata !"minR", metadata !"maxR"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !8, metadata !6}
!8 = metadata !{metadata !"kernel_arg_name", metadata !"y", metadata !"imgHeight", metadata !"minI", metadata !"maxI"}
!9 = metadata !{null, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !6}
!10 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0}
!11 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!12 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"double", metadata !"int"}
!13 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!14 = metadata !{metadata !"kernel_arg_name", metadata !"cr", metadata !"ci", metadata !"max_iteration"}
!15 = metadata !{null, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !6}
!16 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!17 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!18 = metadata !{metadata !"kernel_arg_type", metadata !"int [512]*"}
!19 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!20 = metadata !{metadata !"kernel_arg_name", metadata !"res"}
!21 = metadata !{null, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !6}
!22 = metadata !{metadata !"kernel_arg_addr_space"}
!23 = metadata !{metadata !"kernel_arg_access_qual"}
!24 = metadata !{metadata !"kernel_arg_type"}
!25 = metadata !{metadata !"kernel_arg_type_qual"}
!26 = metadata !{metadata !"kernel_arg_name"}
!27 = metadata !{metadata !28, [0 x i32]* @llvm_global_ctors_0}
!28 = metadata !{metadata !29}
!29 = metadata !{i32 0, i32 31, metadata !30}
!30 = metadata !{metadata !31}
!31 = metadata !{metadata !"llvm.global_ctors.0", metadata !32, metadata !"", i32 0, i32 31}
!32 = metadata !{metadata !33}
!33 = metadata !{i32 0, i32 0, i32 1}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 0, i32 31, metadata !36}
!36 = metadata !{metadata !37}
!37 = metadata !{metadata !"res", metadata !38, metadata !"int", i32 0, i32 31}
!38 = metadata !{metadata !39, metadata !40}
!39 = metadata !{i32 0, i32 1023, i32 1}
!40 = metadata !{i32 0, i32 511, i32 1}
!41 = metadata !{i32 786689, metadata !42, metadata !"res", null, i32 27, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!42 = metadata !{i32 786478, i32 0, metadata !43, metadata !"mandlebrot_main", metadata !"mandlebrot_main", metadata !"_Z15mandlebrot_mainPA512_i", metadata !43, i32 27, metadata !44, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !51, i32 27} ; [ DW_TAG_subprogram ]
!43 = metadata !{i32 786473, metadata !"mandelbrot-hls/mandelbrot.cpp", metadata !"/mnt/f/dev", null} ; [ DW_TAG_file_type ]
!44 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !45, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!45 = metadata !{null, metadata !46}
!46 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ]
!47 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 16384, i64 32, i32 0, i32 0, metadata !48, metadata !49, i32 0, i32 0} ; [ DW_TAG_array_type ]
!48 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!49 = metadata !{metadata !50}
!50 = metadata !{i32 786465, i64 0, i64 511}      ; [ DW_TAG_subrange_type ]
!51 = metadata !{metadata !52}
!52 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!53 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 16777216, i64 32, i32 0, i32 0, metadata !48, metadata !54, i32 0, i32 0} ; [ DW_TAG_array_type ]
!54 = metadata !{metadata !55, metadata !50}
!55 = metadata !{i32 786465, i64 0, i64 1023}     ; [ DW_TAG_subrange_type ]
!56 = metadata !{i32 27, i32 26, metadata !42, null}
!57 = metadata !{i32 31, i32 17, metadata !58, null}
!58 = metadata !{i32 786443, metadata !59, i32 31, i32 3, metadata !43, i32 5} ; [ DW_TAG_lexical_block ]
!59 = metadata !{i32 786443, metadata !42, i32 27, i32 52, metadata !43, i32 4} ; [ DW_TAG_lexical_block ]
!60 = metadata !{i32 31, i32 34, metadata !58, null}
!61 = metadata !{i32 786688, metadata !58, metadata !"y", metadata !43, i32 31, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!62 = metadata !{i32 11, i32 3, metadata !63, metadata !68}
!63 = metadata !{i32 786443, metadata !64, i32 9, i32 66, metadata !43, i32 1} ; [ DW_TAG_lexical_block ]
!64 = metadata !{i32 786478, i32 0, metadata !43, metadata !"mapToImag", metadata !"mapToImag", metadata !"_Z9mapToImagiidd", metadata !43, i32 9, metadata !65, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !51, i32 9} ; [ DW_TAG_subprogram ]
!65 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !66, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!66 = metadata !{metadata !67, metadata !48, metadata !48, metadata !67, metadata !67}
!67 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!68 = metadata !{i32 35, i32 19, metadata !69, null}
!69 = metadata !{i32 786443, metadata !70, i32 32, i32 40, metadata !43, i32 8} ; [ DW_TAG_lexical_block ]
!70 = metadata !{i32 786443, metadata !71, i32 32, i32 5, metadata !43, i32 7} ; [ DW_TAG_lexical_block ]
!71 = metadata !{i32 786443, metadata !58, i32 31, i32 39, metadata !43, i32 6} ; [ DW_TAG_lexical_block ]
!72 = metadata !{i32 32, i32 19, metadata !70, null}
!73 = metadata !{i32 32, i32 35, metadata !70, null}
!74 = metadata !{i32 786689, metadata !75, metadata !"x", metadata !43, i32 16777219, metadata !48, i32 0, metadata !76} ; [ DW_TAG_arg_variable ]
!75 = metadata !{i32 786478, i32 0, metadata !43, metadata !"mapToReal", metadata !"mapToReal", metadata !"_Z9mapToRealiidd", metadata !43, i32 3, metadata !65, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !51, i32 3} ; [ DW_TAG_subprogram ]
!76 = metadata !{i32 34, i32 19, metadata !69, null}
!77 = metadata !{i32 3, i32 22, metadata !75, metadata !76}
!78 = metadata !{i32 6, i32 3, metadata !79, metadata !76}
!79 = metadata !{i32 786443, metadata !75, i32 3, i32 65, metadata !43, i32 0} ; [ DW_TAG_lexical_block ]
!80 = metadata !{i32 786688, metadata !69, metadata !"cr", metadata !43, i32 34, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!81 = metadata !{i32 786689, metadata !64, metadata !"y", metadata !43, i32 16777225, metadata !48, i32 0, metadata !68} ; [ DW_TAG_arg_variable ]
!82 = metadata !{i32 9, i32 22, metadata !64, metadata !68}
!83 = metadata !{i32 786688, metadata !69, metadata !"ci", metadata !43, i32 35, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!84 = metadata !{i32 786689, metadata !85, metadata !"cr", metadata !43, i32 16777230, metadata !67, i32 0, metadata !88} ; [ DW_TAG_arg_variable ]
!85 = metadata !{i32 786478, i32 0, metadata !43, metadata !"findmandelbrot", metadata !"findmandelbrot", metadata !"_Z14findmandelbrotddi", metadata !43, i32 14, metadata !86, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !51, i32 14} ; [ DW_TAG_subprogram ]
!86 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !87, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!87 = metadata !{metadata !48, metadata !67, metadata !67, metadata !48}
!88 = metadata !{i32 38, i32 15, metadata !69, null}
!89 = metadata !{i32 14, i32 27, metadata !85, metadata !88}
!90 = metadata !{i32 786689, metadata !85, metadata !"ci", metadata !43, i32 33554446, metadata !67, i32 0, metadata !88} ; [ DW_TAG_arg_variable ]
!91 = metadata !{i32 14, i32 38, metadata !85, metadata !88}
!92 = metadata !{i32 18, i32 3, metadata !93, metadata !88}
!93 = metadata !{i32 786443, metadata !85, i32 14, i32 61, metadata !43, i32 2} ; [ DW_TAG_lexical_block ]
!94 = metadata !{i32 22, i32 5, metadata !95, metadata !88}
!95 = metadata !{i32 786443, metadata !93, i32 18, i32 58, metadata !43, i32 3} ; [ DW_TAG_lexical_block ]
!96 = metadata !{i32 19, i32 45, metadata !95, metadata !88}
!97 = metadata !{i32 786688, metadata !95, metadata !"temp", metadata !43, i32 19, metadata !67, i32 0, metadata !88} ; [ DW_TAG_auto_variable ]
!98 = metadata !{i32 20, i32 5, metadata !95, metadata !88}
!99 = metadata !{i32 786688, metadata !93, metadata !"zi", metadata !43, i32 17, metadata !67, i32 0, metadata !88} ; [ DW_TAG_auto_variable ]
!100 = metadata !{i32 786688, metadata !93, metadata !"zr", metadata !43, i32 17, metadata !67, i32 0, metadata !88} ; [ DW_TAG_auto_variable ]
!101 = metadata !{i32 21, i32 5, metadata !95, metadata !88}
!102 = metadata !{i32 786688, metadata !93, metadata !"i", metadata !43, i32 16, metadata !48, i32 0, metadata !88} ; [ DW_TAG_auto_variable ]
!103 = metadata !{i32 23, i32 3, metadata !95, metadata !88}
!104 = metadata !{i32 786688, metadata !69, metadata !"n", metadata !43, i32 38, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!105 = metadata !{i32 41, i32 7, metadata !69, null}
!106 = metadata !{i32 786688, metadata !70, metadata !"x", metadata !43, i32 32, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!107 = metadata !{i32 44, i32 1, metadata !59, null}
