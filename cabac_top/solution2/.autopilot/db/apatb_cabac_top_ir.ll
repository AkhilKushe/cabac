; ModuleID = '/home/akhilkushe/Desktop/Projects/final_year_project/hls_cabac/cabac_top/solution2/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%class.ArithDec = type { i8 }
%"struct.ssdm_int<32, false>" = type { i32 }
%struct._initData_t = type { i1, i32, i32, i1 }

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_cabac_top_ir(i8* %globalCtx, %class.ArithDec* %bitStream, %"struct.ssdm_int<32, false>"* %bitOut, %struct._initData_t* nocapture readonly %initd) local_unnamed_addr #1 {
entry:
  %globalCtx_copy = alloca [512 x i8], align 512
  %bitStream_copy = alloca i8, align 512
  call void @llvm.sideeffect() #0 [ "stream_interface"(i8* %bitStream_copy) ]
  %bitOut_copy = alloca i32, align 512
  call void @llvm.sideeffect() #0 [ "stream_interface"(i32* %bitOut_copy) ]
  %0 = bitcast i8* %globalCtx to [512 x i8]*
  call fastcc void @copy_in([512 x i8]* %0, [512 x i8]* nonnull align 512 %globalCtx_copy, %class.ArithDec* %bitStream, i8* nonnull align 512 %bitStream_copy, %"struct.ssdm_int<32, false>"* %bitOut, i32* nonnull align 512 %bitOut_copy)
  %1 = getelementptr inbounds [512 x i8], [512 x i8]* %globalCtx_copy, i32 0, i32 0
  call void @apatb_cabac_top_hw(i8* %1, i8* %bitStream_copy, i32* %bitOut_copy, %struct._initData_t* %initd)
  call fastcc void @copy_out([512 x i8]* %0, [512 x i8]* nonnull align 512 %globalCtx_copy, %class.ArithDec* %bitStream, i8* nonnull align 512 %bitStream_copy, %"struct.ssdm_int<32, false>"* %bitOut, i32* nonnull align 512 %bitOut_copy)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in([512 x i8]* readonly, [512 x i8]* noalias align 512, %class.ArithDec*, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"struct.ssdm_int<32, false>"*, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #2 {
entry:
  call fastcc void @onebyonecpy_hls.p0a512i8([512 x i8]* align 512 %1, [512 x i8]* %0)
  call fastcc void @onebyonecpy_hls.p0class.ArithDec.125(i8* align 512 %3, %class.ArithDec* %2)
  call fastcc void @"onebyonecpy_hls.p0struct.ssdm_int<32, false>"(i32* align 512 %5, %"struct.ssdm_int<32, false>"* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a512i8([512 x i8]* noalias align 512, [512 x i8]* noalias readonly) unnamed_addr #3 {
entry:
  %2 = icmp eq [512 x i8]* %0, null
  %3 = icmp eq [512 x i8]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [512 x i8], [512 x i8]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [512 x i8], [512 x i8]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i8, i8* %src.addr, align 1
  store i8 %5, i8* %dst.addr, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 512
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0class.ArithDec(%class.ArithDec* noalias "fpga.caller.interfaces"="layout_transformed", i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = icmp eq %class.ArithDec* %0, null
  %3 = icmp eq i8* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @streamcpy_hls.p0class.ArithDec(%class.ArithDec* nonnull %0, i8* nonnull align 512 %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0class.ArithDec(%class.ArithDec* noalias nocapture "fpga.caller.interfaces"="layout_transformed", i8* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #5 {
entry:
  %2 = alloca i8
  %3 = alloca %class.ArithDec
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %1)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  call void @fpga_fifo_pop_1(i8* %2, i8* %1)
  %5 = load volatile i8, i8* %2
  %oldret = insertvalue %class.ArithDec undef, i8 %5, 0
  store %class.ArithDec %oldret, %class.ArithDec* %3
  %6 = bitcast %class.ArithDec* %3 to i8*
  %7 = bitcast %class.ArithDec* %0 to i8*
  call void @fpga_fifo_push_1(i8* %6, i8* %7)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0struct.ssdm_int<32, false>"(i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"struct.ssdm_int<32, false>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = icmp eq i32* %0, null
  %3 = icmp eq %"struct.ssdm_int<32, false>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0struct.ssdm_int<32, false>"(i32* nonnull align 512 %0, %"struct.ssdm_int<32, false>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0struct.ssdm_int<32, false>"(i32* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"struct.ssdm_int<32, false>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #5 {
entry:
  %2 = alloca %"struct.ssdm_int<32, false>"
  %3 = alloca i32
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"struct.ssdm_int<32, false>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_4(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"struct.ssdm_int<32, false>"* %2 to i8*
  %7 = bitcast %"struct.ssdm_int<32, false>"* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %6, i8* %7)
  %8 = load volatile %"struct.ssdm_int<32, false>", %"struct.ssdm_int<32, false>"* %2
  %9 = call i32 @"_llvm.fpga.pack.bits.i32.s_struct.ssdm_int<32, false>s"(%"struct.ssdm_int<32, false>" %8)
  store i32 %9, i32* %3
  %10 = bitcast i32* %3 to i8*
  %11 = bitcast i32* %0 to i8*
  call void @fpga_fifo_push_4(i8* %10, i8* %11)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out([512 x i8]*, [512 x i8]* noalias readonly align 512, %class.ArithDec*, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"struct.ssdm_int<32, false>"*, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #6 {
entry:
  call fastcc void @onebyonecpy_hls.p0a512i8([512 x i8]* %0, [512 x i8]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0class.ArithDec(%class.ArithDec* %2, i8* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0struct.ssdm_int<32, false>.114"(%"struct.ssdm_int<32, false>"* %4, i32* align 512 %5)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0struct.ssdm_int<32, false>.114"(%"struct.ssdm_int<32, false>"* noalias "fpga.caller.interfaces"="layout_transformed", i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = icmp eq %"struct.ssdm_int<32, false>"* %0, null
  %3 = icmp eq i32* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0struct.ssdm_int<32, false>.117"(%"struct.ssdm_int<32, false>"* nonnull %0, i32* nonnull align 512 %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0struct.ssdm_int<32, false>.117"(%"struct.ssdm_int<32, false>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed", i32* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #5 {
entry:
  %2 = alloca i32
  %3 = alloca %"struct.ssdm_int<32, false>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i32* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_4(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i32* %2 to i8*
  %7 = bitcast i32* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %6, i8* %7)
  %8 = load volatile i32, i32* %2
  %oldret = insertvalue %"struct.ssdm_int<32, false>" undef, i32 %8, 0
  store %"struct.ssdm_int<32, false>" %oldret, %"struct.ssdm_int<32, false>"* %3
  %9 = bitcast %"struct.ssdm_int<32, false>"* %3 to i8*
  %10 = bitcast %"struct.ssdm_int<32, false>"* %0 to i8*
  call void @fpga_fifo_push_4(i8* %9, i8* %10)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal i32 @"_llvm.fpga.pack.bits.i32.s_struct.ssdm_int<32, false>s"(%"struct.ssdm_int<32, false>" %A) #7 {
  %A.0 = extractvalue %"struct.ssdm_int<32, false>" %A, 0
  ret i32 %A.0
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0class.ArithDec.125(i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %class.ArithDec* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = icmp eq i8* %0, null
  %3 = icmp eq %class.ArithDec* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @streamcpy_hls.p0class.ArithDec.128(i8* nonnull align 512 %0, %class.ArithDec* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0class.ArithDec.128(i8* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %class.ArithDec* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #5 {
entry:
  %2 = alloca %class.ArithDec
  %3 = alloca i8
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %class.ArithDec* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_1(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %class.ArithDec* %2 to i8*
  %7 = bitcast %class.ArithDec* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %6, i8* %7)
  %8 = load volatile %class.ArithDec, %class.ArithDec* %2
  %9 = call i8 @_llvm.fpga.pack.bits.i8.s_class.ArithDecs(%class.ArithDec %8)
  store i8 %9, i8* %3
  call void @fpga_fifo_push_1(i8* %3, i8* %0)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal i8 @_llvm.fpga.pack.bits.i8.s_class.ArithDecs(%class.ArithDec %A) #7 {
  %A.0 = extractvalue %class.ArithDec %A, 0
  ret i8 %A.0
}

declare void @apatb_cabac_top_hw(i8*, i8*, i32*, %struct._initData_t*)

define void @cabac_top_hw_stub_wrapper(i8*, i8*, i32*, %struct._initData_t*) #8 {
entry:
  %4 = alloca %class.ArithDec
  %5 = alloca %"struct.ssdm_int<32, false>"
  %6 = bitcast i8* %0 to [512 x i8]*
  call void @copy_out([512 x i8]* null, [512 x i8]* %6, %class.ArithDec* %4, i8* %1, %"struct.ssdm_int<32, false>"* %5, i32* %2)
  %7 = bitcast [512 x i8]* %6 to i8*
  call void @cabac_top_hw_stub(i8* %7, %class.ArithDec* %4, %"struct.ssdm_int<32, false>"* %5, %struct._initData_t* %3)
  call void @copy_in([512 x i8]* null, [512 x i8]* %6, %class.ArithDec* %4, i8* %1, %"struct.ssdm_int<32, false>"* %5, i32* %2)
  ret void
}

declare void @cabac_top_hw_stub(i8*, %class.ArithDec*, %"struct.ssdm_int<32, false>"*, %struct._initData_t*)

declare i1 @fpga_fifo_not_empty_1(i8*)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

attributes #0 = { inaccessiblememonly nounwind }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #5 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #6 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #7 = { alwaysinline nounwind readnone }
attributes #8 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
!7 = distinct !{!7, !6}
