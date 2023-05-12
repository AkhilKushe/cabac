; ModuleID = '/home/akhilkushe/Desktop/Projects/final_year_project/hls_cabac/cabac_top/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%class.ArithDec = type { i8 }
%"class.hls::stream<unsigned int, 0>" = type opaque
%"class.hls::stream<_data_in, 0>" = type { %struct._data_in }
%struct._data_in = type { %struct._pps, %struct._sps, %struct._s_header, %struct._NbCTU_t, %struct._NbCTU_t, i32, i1 }
%struct._pps = type { i1, i1, i1, i8 }
%struct._sps = type { i32, i32, i8, i8, i8, i8, i8, i8 }
%struct._s_header = type { i1, i1, i32, i1, i32 }
%struct._NbCTU_t = type { [3 x i8], [3 x [5 x i16]], [3 x i8], [3 x i8], i1, [64 x i8], [64 x i8], [64 x i8] }
%"class.hls::stream<_data_out, 0>" = type { %struct._data_out }
%struct._data_out = type { [3 x i8], [3 x [5 x i16]], [3 x i8], [3 x i8], i1 }

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_cabac_top_ir(i8* %globalCtx, %class.ArithDec* %bitStream, %"class.hls::stream<unsigned int, 0>"* nocapture readonly %bitOut, %"class.hls::stream<_data_in, 0>"* %data_in_s, %"class.hls::stream<_data_out, 0>"* %data_out_s) local_unnamed_addr #1 {
entry:
  %globalCtx_copy = alloca [512 x i8], align 512
  %bitStream_copy = alloca %class.ArithDec, align 512
  call void @llvm.sideeffect() #0 [ "stream_interface"(%class.ArithDec* %bitStream_copy) ]
  %data_in_s_copy = alloca %"class.hls::stream<_data_in, 0>", align 512
  call void @llvm.sideeffect() #0 [ "stream_interface"(%"class.hls::stream<_data_in, 0>"* %data_in_s_copy) ]
  %data_out_s_copy = alloca %"class.hls::stream<_data_out, 0>", align 512
  call void @llvm.sideeffect() #0 [ "stream_interface"(%"class.hls::stream<_data_out, 0>"* %data_out_s_copy) ]
  %0 = bitcast i8* %globalCtx to [512 x i8]*
  call fastcc void @copy_in([512 x i8]* %0, [512 x i8]* nonnull align 512 %globalCtx_copy, %class.ArithDec* %bitStream, %class.ArithDec* nonnull align 512 %bitStream_copy, %"class.hls::stream<_data_in, 0>"* %data_in_s, %"class.hls::stream<_data_in, 0>"* nonnull align 512 %data_in_s_copy, %"class.hls::stream<_data_out, 0>"* %data_out_s, %"class.hls::stream<_data_out, 0>"* nonnull align 512 %data_out_s_copy)
  %1 = getelementptr inbounds [512 x i8], [512 x i8]* %globalCtx_copy, i32 0, i32 0
  call void @apatb_cabac_top_hw(i8* %1, %class.ArithDec* %bitStream_copy, %"class.hls::stream<unsigned int, 0>"* %bitOut, %"class.hls::stream<_data_in, 0>"* %data_in_s_copy, %"class.hls::stream<_data_out, 0>"* %data_out_s_copy)
  call fastcc void @copy_out([512 x i8]* %0, [512 x i8]* nonnull align 512 %globalCtx_copy, %class.ArithDec* %bitStream, %class.ArithDec* nonnull align 512 %bitStream_copy, %"class.hls::stream<_data_in, 0>"* %data_in_s, %"class.hls::stream<_data_in, 0>"* nonnull align 512 %data_in_s_copy, %"class.hls::stream<_data_out, 0>"* %data_out_s, %"class.hls::stream<_data_out, 0>"* nonnull align 512 %data_out_s_copy)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in([512 x i8]* readonly, [512 x i8]* noalias align 512, %class.ArithDec*, %class.ArithDec* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<_data_in, 0>"*, %"class.hls::stream<_data_in, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<_data_out, 0>"*, %"class.hls::stream<_data_out, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #2 {
entry:
  call fastcc void @onebyonecpy_hls.p0a512i8([512 x i8]* align 512 %1, [512 x i8]* %0)
  call fastcc void @onebyonecpy_hls.p0class.ArithDec(%class.ArithDec* align 512 %3, %class.ArithDec* %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<_data_in, 0>"(%"class.hls::stream<_data_in, 0>"* align 512 %5, %"class.hls::stream<_data_in, 0>"* %4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<_data_out, 0>"(%"class.hls::stream<_data_out, 0>"* align 512 %7, %"class.hls::stream<_data_out, 0>"* %6)
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
define internal fastcc void @onebyonecpy_hls.p0class.ArithDec(%class.ArithDec* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %class.ArithDec* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = icmp eq %class.ArithDec* %0, null
  %3 = icmp eq %class.ArithDec* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @streamcpy_hls.p0class.ArithDec(%class.ArithDec* nonnull align 512 %0, %class.ArithDec* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0class.ArithDec(%class.ArithDec* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %class.ArithDec* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #5 {
entry:
  %2 = alloca %class.ArithDec
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %class.ArithDec* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %class.ArithDec* %2 to i8*
  %6 = bitcast %class.ArithDec* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %class.ArithDec, %class.ArithDec* %2
  %8 = bitcast %class.ArithDec* %2 to i8*
  %9 = bitcast %class.ArithDec* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<_data_in, 0>"(%"class.hls::stream<_data_in, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<_data_in, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = icmp eq %"class.hls::stream<_data_in, 0>"* %0, null
  %3 = icmp eq %"class.hls::stream<_data_in, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<_data_in, 0>"(%"class.hls::stream<_data_in, 0>"* nonnull align 512 %0, %"class.hls::stream<_data_in, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<_data_in, 0>"(%"class.hls::stream<_data_in, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<_data_in, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #5 {
entry:
  %2 = alloca %"class.hls::stream<_data_in, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<_data_in, 0>"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_512(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<_data_in, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<_data_in, 0>"* %1 to i8*
  call void @fpga_fifo_pop_512(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<_data_in, 0>", %"class.hls::stream<_data_in, 0>"* %2
  %8 = bitcast %"class.hls::stream<_data_in, 0>"* %2 to i8*
  %9 = bitcast %"class.hls::stream<_data_in, 0>"* %0 to i8*
  call void @fpga_fifo_push_512(i8* %8, i8* %9)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<_data_out, 0>"(%"class.hls::stream<_data_out, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<_data_out, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = icmp eq %"class.hls::stream<_data_out, 0>"* %0, null
  %3 = icmp eq %"class.hls::stream<_data_out, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<_data_out, 0>"(%"class.hls::stream<_data_out, 0>"* nonnull align 512 %0, %"class.hls::stream<_data_out, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<_data_out, 0>"(%"class.hls::stream<_data_out, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<_data_out, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #5 {
entry:
  %2 = alloca %"class.hls::stream<_data_out, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<_data_out, 0>"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_42(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<_data_out, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<_data_out, 0>"* %1 to i8*
  call void @fpga_fifo_pop_42(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<_data_out, 0>", %"class.hls::stream<_data_out, 0>"* %2
  %8 = bitcast %"class.hls::stream<_data_out, 0>"* %2 to i8*
  %9 = bitcast %"class.hls::stream<_data_out, 0>"* %0 to i8*
  call void @fpga_fifo_push_42(i8* %8, i8* %9)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out([512 x i8]*, [512 x i8]* noalias readonly align 512, %class.ArithDec*, %class.ArithDec* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<_data_in, 0>"*, %"class.hls::stream<_data_in, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<_data_out, 0>"*, %"class.hls::stream<_data_out, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #6 {
entry:
  call fastcc void @onebyonecpy_hls.p0a512i8([512 x i8]* %0, [512 x i8]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0class.ArithDec(%class.ArithDec* %2, %class.ArithDec* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<_data_in, 0>"(%"class.hls::stream<_data_in, 0>"* %4, %"class.hls::stream<_data_in, 0>"* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<_data_out, 0>"(%"class.hls::stream<_data_out, 0>"* %6, %"class.hls::stream<_data_out, 0>"* align 512 %7)
  ret void
}

declare void @apatb_cabac_top_hw(i8*, %class.ArithDec*, %"class.hls::stream<unsigned int, 0>"*, %"class.hls::stream<_data_in, 0>"*, %"class.hls::stream<_data_out, 0>"*)

define void @cabac_top_hw_stub_wrapper(i8*, %class.ArithDec*, %"class.hls::stream<unsigned int, 0>"*, %"class.hls::stream<_data_in, 0>"*, %"class.hls::stream<_data_out, 0>"*) #7 {
entry:
  %5 = bitcast i8* %0 to [512 x i8]*
  call void @copy_out([512 x i8]* null, [512 x i8]* %5, %class.ArithDec* null, %class.ArithDec* %1, %"class.hls::stream<_data_in, 0>"* null, %"class.hls::stream<_data_in, 0>"* %3, %"class.hls::stream<_data_out, 0>"* null, %"class.hls::stream<_data_out, 0>"* %4)
  %6 = bitcast [512 x i8]* %5 to i8*
  call void @cabac_top_hw_stub(i8* %6, %class.ArithDec* %1, %"class.hls::stream<unsigned int, 0>"* %2, %"class.hls::stream<_data_in, 0>"* %3, %"class.hls::stream<_data_out, 0>"* %4)
  call void @copy_in([512 x i8]* null, [512 x i8]* %5, %class.ArithDec* null, %class.ArithDec* %1, %"class.hls::stream<_data_in, 0>"* null, %"class.hls::stream<_data_in, 0>"* %3, %"class.hls::stream<_data_out, 0>"* null, %"class.hls::stream<_data_out, 0>"* %4)
  ret void
}

declare void @cabac_top_hw_stub(i8*, %class.ArithDec*, %"class.hls::stream<unsigned int, 0>"*, %"class.hls::stream<_data_in, 0>"*, %"class.hls::stream<_data_out, 0>"*)

declare i1 @fpga_fifo_not_empty_1(i8*)

declare i1 @fpga_fifo_not_empty_512(i8*)

declare i1 @fpga_fifo_not_empty_42(i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_pop_512(i8*, i8*)

declare void @fpga_fifo_pop_42(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

declare void @fpga_fifo_push_512(i8*, i8*)

declare void @fpga_fifo_push_42(i8*, i8*)

attributes #0 = { inaccessiblememonly nounwind }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #5 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #6 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #7 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
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
!8 = distinct !{!8, !6}
