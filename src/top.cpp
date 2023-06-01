#include "top.h"
#include "initializer.h"
#include "utils.h"
#include "arith_dec.h"
#include "deBin.h"
#include "intra_se.h"
#include "quad_tree.h"
#include "transform.h"
#include <string.h>

void load_ram(UChar ctxTable[MAX_NUM_CTX_MOD], hls::stream<UChar>& inpStream, UInt cnt){
	for(int i=0; i < cnt; i++) {
		ctxTable[i] = inpStream.read();
	}
}

void store_global_ram(volatile UChar globalCtx[MAX_NUM_CTX_MOD], UChar ctxTable[MAX_NUM_CTX_MOD], UInt cnt){
	for(int i=0; i < cnt; i++) {
		globalCtx[i] = ctxTable[i];
	}
}



// TODO : fix top inteface with input/output declaration
void cabac_top(volatile UChar globalCtx[MAX_NUM_CTX_MOD], volatile int8_t tranCoeff[64][64], volatile UChar bitStream[1024], hls::stream<data_in_t>& data_in_s, hls::stream<data_out_t>& data_out_s){
#pragma HLS INTERFACE mode=m_axi bundle=ctx name=gCtx port=globalCtx
#pragma HLS INTERFACE mode=s_axilite port=globalCtx

#pragma HLS INTERFACE mode=m_axi bundle=tran name=tranC port=tranCoeff
#pragma HLS INTERFACE mode=s_axilite port=tranCoeff

#pragma HLS INTERFACE mode=m_axi bundle=bstream name=bst port=bitStream
#pragma HLS INTERFACE mode=s_axilite port=bitStream

#pragma HLS INTERFACE mode=s_axilite port=data_in_s
#pragma HLS INTERFACE mode=s_axilite port=data_out_s

	hls::stream<UChar> streamCtxRAM;
#pragma HLS STREAM depth=512 type=fifo variable=streamCtxRAM

	UChar ctxTables[MAX_NUM_CTX_MOD];
	UInt ctxWritten;
	ctxWritten = 0;

	data_in_t data_in;
	data_out_t data_out;
	data_in = data_in_s.read();
	//memcpy(&data_in, &data_in_s, sizeof(data_in_t));

	initialization_top(data_in.firstCTU, data_in.s_header.slice_type, data_in.s_header.qp, data_in.s_header.cabac_init_flag, globalCtx, streamCtxRAM, ctxWritten);

	load_ram(ctxTables, streamCtxRAM, ctxWritten);



	UChar tempBst[1024];
	/*
	for(int i=0; i<30; i++){
		tempBst[i] = bitStream.read();
	}
	*/
	memcpy(tempBst, (UChar*)bitStream, 1024*sizeof(UChar));
	// Initialize Arith decoder
	// TODO : Export BAE state, Arith initialization only for first CTU, currently only 1 CTU
	arith_t baeState;
	arith_init(tempBst, baeState);

	sao_top(data_in, data_out, baeState, tempBst, ctxTables);

	CU_t cu1;
	internal_data_t dint;
	UInt symbolVal;

	init_buffer_int(dint);

	cu1.depth = 0;
	cu1.log2CbSize = 6;
	cu1.x = 0;
	cu1.y = 0;

	// Manual decode
	parseSplitCuFlag(cu1, data_in, data_out, dint, baeState, tempBst, ctxTables, symbolVal);
#ifndef __SYNTHESIS__
	std::cout << "1 Split flag symbol val :" << symbolVal << std::endl << std::endl;
#endif

	cu1.depth = 1;
	cu1.log2CbSize = 5;
	cu1.x = 0;
	cu1.y = 0;

	// Manual decode
	parseSplitCuFlag(cu1, data_in, data_out, dint, baeState, tempBst, ctxTables, symbolVal);
#ifndef __SYNTHESIS__
	std::cout << "2 Split flag symbol val :" << symbolVal << std::endl << std::endl;
#endif

	cu1.depth = 2;
	cu1.log2CbSize = 4;
	cu1.x = 0;
	cu1.y = 0;

	// Manual decode
	parseSplitCuFlag(cu1, data_in, data_out, dint, baeState, tempBst, ctxTables, symbolVal);
#ifndef __SYNTHESIS__
	std::cout << "3 Split flag symbol val :" << symbolVal << std::endl << std::endl;
#endif

	cu1.depth = 3;
	cu1.log2CbSize = 3;
	cu1.x = 0;
	cu1.y = 0;

	parsePartMode(baeState, tempBst, ctxTables, symbolVal);
	if(symbolVal==1){
		cu1.IntraSplitFlag = 1;
	} else {
		cu1.IntraSplitFlag=0;
	}
#ifndef __SYNTHESIS__
	std::cout << "4 part mode symbol val :" << symbolVal << std::endl << std::endl;
#endif
	cu1.part_mode = symbolVal;

	parsePrevIntraLumaPredFlag(baeState, tempBst, ctxTables, symbolVal);
#ifndef __SYNTHESIS__
	std::cout << "5 prev intra luma pred flag :" << symbolVal << std::endl << std::endl;
#endif
	cu1.prev_intra_luma_pred_flag[0] = symbolVal;

	parsePrevIntraLumaPredFlag(baeState, tempBst, ctxTables, symbolVal);
#ifndef __SYNTHESIS__
	std::cout << "6 prev intra luma pred flag :" << symbolVal << std::endl << std::endl;
#endif
	cu1.prev_intra_luma_pred_flag[1] = symbolVal;

	parsePrevIntraLumaPredFlag(baeState, tempBst, ctxTables, symbolVal);
#ifndef __SYNTHESIS__
	std::cout << "7 prev intra luma pred flag :" << symbolVal << std::endl << std::endl;
#endif
	cu1.prev_intra_luma_pred_flag[2] = symbolVal;

	parsePrevIntraLumaPredFlag(baeState, tempBst, ctxTables, symbolVal);
#ifndef __SYNTHESIS__
	std::cout << "8 prev intra luma pred flag :" << symbolVal << std::endl << std::endl;
#endif
	cu1.prev_intra_luma_pred_flag[3] = symbolVal;

	parseMpmIdx(baeState, tempBst, ctxTables, symbolVal);
#ifndef __SYNTHESIS__
	std::cout << "9 mpm idx :" << symbolVal << std::endl << std::endl;
#endif
	cu1.mpm_idx[0] = symbolVal;

	parseMpmIdx(baeState, tempBst, ctxTables, symbolVal);
#ifndef __SYNTHESIS__
	std::cout << "10 mpm idx :" << symbolVal << std::endl << std::endl;
#endif
	cu1.mpm_idx[1] = symbolVal;

	parseRemIntraLumaPredMode(baeState, tempBst, ctxTables, symbolVal);
#ifndef __SYNTHESIS__
	std::cout << "11 rem intra luma pred :" << symbolVal << std::endl << std::endl;
#endif
	cu1.rem_intra_luma_pred_mode[2] = symbolVal;

	parseMpmIdx(baeState, tempBst, ctxTables, symbolVal);
#ifndef __SYNTHESIS__
	std::cout << "12 mpm idx :" << symbolVal << std::endl << std::endl;
#endif
	cu1.mpm_idx[3] = symbolVal;

	parseIntraChromaPredMode(baeState, tempBst, ctxTables, symbolVal);
#ifndef __SYNTHESIS__
	std::cout << "13 Intra Chroma Pred Mode :" << symbolVal << std::endl << std::endl;
#endif
	cu1.intra_chroma_pred_mode=symbolVal;
	cu1.cu_transquant_bypass_flag=0;
	setIntraPredMode(0, 4, cu1, data_in, data_out, dint);
	setIntraPredMode(1, 4, cu1, data_in, data_out, dint);
	setIntraPredMode(2, 4, cu1, data_in, data_out, dint);
	setIntraPredMode(3, 4, cu1, data_in, data_out, dint);
/*
	parseCbfC(0, baeState, tempBst, ctxTables, symbolVal);
	cu1.cbf_cb[1]= symbolVal;
	parseCbfC(0, baeState, tempBst, ctxTables, symbolVal);
	cu1.cbf_cr[1]=symbolVal;
	parseCbfLuma(1, baeState, tempBst, ctxTables, symbolVal);
	cu1.cbf_luma[0]=symbolVal;
	TU_t tu1;
		tu1.x = 0;
		tu1.y = 0;
		tu1.xBase = 0;
		tu1.yBase = 0;
		tu1.log2TrafoSize = 2;
		tu1.blkIdx = 0;
		tu1.trafoDepth = 1;
		tu1.lastGreater1Flag = 0;
		tu1.lastGreater1Ctx=0;
		tu1.greater1Ctx=0;
		tu1.ctxSet=0;
		tu1.cLastRiceParam=0;
		tu1.cLastAbsLevel=0;
		tu1.cAbsLevel=0;
		tu1.G2ctxSet=0;
*/
	//residual_coding(0, data_in, data_out, dint, cu1, tu1, baeState, tempBst, ctxTables, bitOut);
	//transform_unit(data_in, data_out,dint, cu1, tu1, baeState, tempBst, ctxTables, bitOut);
	transform_tree(data_in, data_out, dint, cu1, baeState, tempBst, ctxTables);

#ifndef __SYNTHESIS__
	std::cout << std::dec << std::endl;
	//printArray<int8_t, int>("Transform Coefficient ", 64, 64, (int8_t*)(dint.TransCoeffLevel_0));
#endif
/*
	for(int i=0; i<10; i++){
		tranCoeff.write(dint.TransCoeffLevel_0[0][i]);
	}
*/
	memcpy((int8_t*)tranCoeff, dint.TransCoeffLevel_0, 64*64*sizeof(int8_t));
	data_out_s.write(data_out);
	//data_out_s = data_out;
	//memcpy(&data_out_s, &data_out, sizeof(data_out_t));

	store_global_ram(globalCtx, ctxTables, ctxWritten);
}




