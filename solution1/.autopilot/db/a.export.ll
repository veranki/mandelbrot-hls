; ModuleID = '/mnt/f/dev/mandelbrot-hls/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mandlebrot_main_str = internal unnamed_addr constant [16 x i8] c"mandlebrot_main\00"
@llvm_global_ctors_1 = appending global [0 x void ()*] zeroinitializer
@llvm_global_ctors_0 = appending global [0 x i32] zeroinitializer

define void @mandlebrot_main([524288 x i32]* %res) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([524288 x i32]* %res) nounwind, !map !34
  call void (...)* @_ssdm_op_SpecTopModule([16 x i8]* @mandlebrot_main_str) nounwind
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %0
  %y_assign = phi i10 [ 0, %0 ], [ %y, %.loopexit.loopexit ]
  %y_assign_cast3 = zext i10 %y_assign to i32
  %exitcond1 = icmp eq i10 %y_assign, -512
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 512, i64 512, i64 512) nounwind
  %y = add i10 %y_assign, 1
  br i1 %exitcond1, label %5, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.loopexit
  %tmp_cast = zext i10 %y_assign to i21
  %tmp_i2 = sitofp i32 %y_assign_cast3 to double
  %tmp_3_i = fmul double %tmp_i2, 3.906250e-03
  %ci = fadd double %tmp_3_i, -1.000000e+00
  br label %.preheader

.preheader:                                       ; preds = %findmandelbrot.exit, %.preheader.preheader
  %x_assign = phi i11 [ %x, %findmandelbrot.exit ], [ 0, %.preheader.preheader ]
  %x_assign_cast2 = zext i11 %x_assign to i32
  %exitcond = icmp eq i11 %x_assign, -1024
  %empty_4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1024, i64 1024, i64 1024) nounwind
  %x = add i11 %x_assign, 1
  br i1 %exitcond, label %.loopexit.loopexit, label %1

; <label>:1                                       ; preds = %.preheader
  %tmp_i = sitofp i32 %x_assign_cast2 to double
  %tmp_1_i = fmul double %tmp_i, 3.906250e-03
  %cr = fadd double %tmp_1_i, -2.500000e+00
  br label %2

; <label>:2                                       ; preds = %4, %1
  %n = phi i10 [ 0, %1 ], [ %i, %4 ]
  %zr_i = phi double [ 0.000000e+00, %1 ], [ %temp, %4 ]
  %zi_i = phi double [ 0.000000e+00, %1 ], [ %zi, %4 ]
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i10.i32(i10 %n, i32 9)
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 512, i64 256) nounwind
  %i = add i10 %n, 1
  br i1 %tmp, label %findmandelbrot.exit, label %3

; <label>:3                                       ; preds = %2
  %tmp_9_i = fmul double %zr_i, %zr_i
  %tmp_i_6 = fmul double %zi_i, %zi_i
  %tmp_1_i4 = fadd double %tmp_9_i, %tmp_i_6
  %tmp_1_i4_to_int = bitcast double %tmp_1_i4 to i64
  %tmp_1 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %tmp_1_i4_to_int, i32 52, i32 62)
  %tmp_2 = trunc i64 %tmp_1_i4_to_int to i52
  %notlhs = icmp ne i11 %tmp_1, -1
  %notrhs = icmp eq i52 %tmp_2, 0
  %tmp_3 = or i1 %notrhs, %notlhs
  %tmp_4 = fcmp olt double %tmp_1_i4, 4.000000e+00
  %tmp_5 = and i1 %tmp_3, %tmp_4
  br i1 %tmp_5, label %4, label %findmandelbrot.exit

; <label>:4                                       ; preds = %3
  %tmp_3_i6 = fsub double %tmp_9_i, %tmp_i_6
  %temp = fadd double %tmp_3_i6, %cr
  %tmp_4_i7 = fmul double %zr_i, 2.000000e+00
  %tmp_5_i = fmul double %tmp_4_i7, %zi_i
  %zi = fadd double %tmp_5_i, %ci
  br label %2

findmandelbrot.exit:                              ; preds = %2, %3
  %tmp_7 = trunc i10 %n to i8
  %tmp_6_cast = zext i8 %tmp_7 to i32
  %tmp_6 = call i20 @_ssdm_op_BitConcatenate.i20.i11.i9(i11 %x_assign, i9 0)
  %tmp_7_cast = zext i20 %tmp_6 to i21
  %tmp_8 = add i21 %tmp_7_cast, %tmp_cast
  %tmp_8_cast = zext i21 %tmp_8 to i64
  %res_addr = getelementptr [524288 x i32]* %res, i64 0, i64 %tmp_8_cast
  store i32 %tmp_6_cast, i32* %res_addr, align 4
  br label %.preheader

; <label>:5                                       ; preds = %.loopexit
  ret void
}

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

declare i8 @_ssdm_op_PartSelect.i8.i10.i32.i32(i10, i32, i32) nounwind readnone

declare i52 @_ssdm_op_PartSelect.i52.i64.i32.i32(i64, i32, i32) nounwind readnone

define weak i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_7 = trunc i64 %empty to i11
  ret i11 %empty_7
}

define weak i1 @_ssdm_op_BitSelect.i1.i10.i32(i10, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i10
  %empty_8 = shl i10 1, %empty
  %empty_9 = and i10 %0, %empty_8
  %empty_10 = icmp ne i10 %empty_9, 0
  ret i1 %empty_10
}

define weak i20 @_ssdm_op_BitConcatenate.i20.i11.i9(i11, i9) nounwind readnone {
entry:
  %empty = zext i11 %0 to i20
  %empty_11 = zext i9 %1 to i20
  %empty_12 = shl i20 %empty, 9
  %empty_13 = or i20 %empty_12, %empty_11
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
