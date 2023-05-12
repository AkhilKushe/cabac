#include "initializer.h"
#include "utils.h"
#include <iostream>
#include "init_tables.h"

UChar Initialize::calc_ctxState(int qp, UChar initVal) {
	UChar ctxState;

	qp = Clip3(0, 51, qp);

	int  slope      = (initVal>>4)*5 - 45;
	int  offset     = ((initVal&15)<<3)-16;

	int  initState  =  min( max( 1, ( ( ( slope * qp ) >> 4 ) + offset ) ), 126 );
	UInt mpState    = (initState >= 64 );
	ctxState       = ( (mpState? (initState - 64):(63 - initState)) <<1) + mpState;

#ifndef __SYNTHESIS__
	  std::cout << "Init Val :" << (int)initVal << std::endl;
	  std::cout << "Slope : " << (int)slope << std::endl;
	  std::cout << "Offset : " << (int)offset << std::endl;
	  std::cout << "CtxState : " << (int)ctxState << std::endl;
#endif

	return ctxState;
}

void Initialize::load_global(volatile UChar globalCtx[MAX_NUM_CTX_MOD], hls::stream<UChar> &ctxOut, UInt& count) {
	for(int i=0; i<MAX_NUM_CTX_MOD; i++){
		UChar val = globalCtx[i];
		ctxOut.write(val);
	}
	count += MAX_NUM_CTX_MOD;
}

void Initialize::stream_init_buffer(UChar* ctxTable, UInt size, int qp, SliceType initType, hls::stream<UChar> &ctxOut, UInt& count){
	//int start = initType*size;
	//int end = (initType*size) + size;

	for(int i=0; i<size; i++){
		UChar ctxState = calc_ctxState(qp, ctxTable[i]);
		ctxOut.write(ctxState);
	}
	count += size;
}

/*
void Initialize::load_local(SliceType sliceType, int qp, bool cabac_init_flag, hls::stream<UChar> &ctxOut, UInt& count){
	SliceType initType;

	switch(sliceType) {
	case I_SLICE: initType = I_SLICE;			// I Slice
			break;
	case P_SLICE: initType = cabac_init_flag ? B_SLICE:P_SLICE;
			break;
	case B_SLICE: initType = cabac_init_flag ? P_SLICE:B_SLICE;
			break;
	}

	stream_init_buffer((UChar *)INIT_SAO_MERGE_FLAG, 1*1*NUM_SAO_MERGE_FLAG_CTX, qp, initType, ctxOut, count);
	stream_init_buffer((UChar *)INIT_SAO_TYPE_IDX, 1*1*NUM_SAO_TYPE_IDX_CTX, qp, initType, ctxOut, count);
	stream_init_buffer((UChar *)INIT_SPLIT_FLAG, 1*1*NUM_SPLIT_FLAG_CTX, qp, initType, ctxOut, count);
}
*/

void Initialize::load_local(SliceType sliceType, int qp, bool cabac_init_flag, hls::stream<UChar> &ctxOut, UInt& count){
	SliceType initType;

	switch(sliceType) {
	case I_SLICE: initType = I_SLICE;			// I Slice
			break;
	case P_SLICE: initType = cabac_init_flag ? B_SLICE:P_SLICE;
			break;
	case B_SLICE: initType = cabac_init_flag ? P_SLICE:B_SLICE;
			break;
	}

	UChar * ctxTablePtr;
	switch(initType) {
	case I_SLICE: ctxTablePtr = (UChar*)I_FRAME_INIT_VALS;			// I Slice
			break;
	case P_SLICE: ctxTablePtr = (UChar*)P_FRAME_INIT_VALS;
			break;
	case B_SLICE: ctxTablePtr = (UChar*)B_FRAME_INIT_VALS;
			break;
	}

#ifndef __SYNTHESIS__
	  std::cout << "Slice Type :" << (int)sliceType << std::endl;
	  std::cout << "InitVal: " << (int)initType << std::endl;
#endif

	stream_init_buffer(ctxTablePtr, 8, qp, initType, ctxOut, count);
}

void initialization_top(bool firstSlice, SliceType sliceType, int qp, bool cabac_init_flag, volatile UChar globalCtx[MAX_NUM_CTX_MOD], hls::stream<UChar> &ctxOut, UInt& count) {
	Initialize init;

	if(firstSlice){
		init.load_local(sliceType,qp,cabac_init_flag,ctxOut, count);
	} else {
		init.load_global(globalCtx,ctxOut, count);
	}
}







