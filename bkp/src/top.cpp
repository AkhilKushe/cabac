#include "top.h"
#include "initializer.h"
#include "utils.h"
#include "arith_dec.h"
#include "deBin.h"

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





void cabac_top(volatile UChar globalCtx[MAX_NUM_CTX_MOD], hls::stream<UChar>& bitStream, hls::stream<UInt>& bitOut, initData_t initd, hls::stream<saoIn_t>& saoIn, hls::stream<saoOut_t>& saoOut){
#pragma HLS INTERFACE mode=m_axi bundle=ctx name=gCtx port=globalCtx
#pragma HLS INTERFACE mode=s_axilite port=globalCtx

	hls::stream<UChar> streamCtxRAM;
#pragma HLS STREAM depth=512 type=fifo variable=streamCtxRAM

	UChar ctxTables[MAX_NUM_CTX_MOD];
	UInt ctxWritten;
	ctxWritten = 0;

	initialization_top(initd.firstSlice, initd.sType, initd.qp, initd.cabac_init_flag, globalCtx, streamCtxRAM, ctxWritten);

	load_ram(ctxTables, streamCtxRAM, ctxWritten);



	UChar tempBst[7];
	for(int i=0; i<7; i++){
		tempBst[i] = bitStream.read();
	}
	arith_t baeState;
/*
	bool binVal;
	UInt outVal;
	outVal = 0;

	decode_decision(1, REGULAR, baeState, binVal, tempBst, 1, ctxTables);
#ifndef __SYNTHESIS__
	std::cout << std::endl;
	std::cout << "Curr Val " << (int)baeState.ivlCurrRange << std::endl;
	std::cout << "Offset " << (int)baeState.ivlOffset << std::endl;
	std::cout << "bin val " << binVal << std::endl;
	std::cout << "Updated Ctx : " << (int)ctxTables[1] << std::endl;

#endif
	outVal = (outVal << 1) + binVal;

	decode_decision(0, BYPASS, baeState, binVal, tempBst, 1, ctxTables);
#ifndef __SYNTHESIS__
		std::cout << "Curr Val " << (int)baeState.ivlCurrRange << std::endl;
		std::cout << "Offset " << (int)baeState.ivlOffset << std::endl;
		std::cout << "bin val " << binVal << std::endl;
		std::cout << "Updated Ctx : " << (int)ctxTables[1] << std::endl;

#endif
		outVal = (outVal << 1) + binVal;


	// Sao offset
	decode_decision(0, BYPASS, baeState, binVal, tempBst, 0, ctxTables);
	#ifndef __SYNTHESIS__
			std::cout << "Curr Val " << (int)baeState.ivlCurrRange << std::endl;
			std::cout << "Offset " << (int)baeState.ivlOffset << std::endl;
			std::cout << "bin val " << binVal << std::endl;
			std::cout << "Updated Ctx : " << (int)ctxTables[1] << std::endl;

	#endif
			outVal = (outVal << 1) | binVal;
	decode_decision(0, BYPASS, baeState, binVal, tempBst, 0, ctxTables);
	#ifndef __SYNTHESIS__
		std::cout << "Curr Val " << (int)baeState.ivlCurrRange << std::endl;
		std::cout << "Offset " << (int)baeState.ivlOffset << std::endl;
		std::cout << "bin val " << binVal << std::endl;
		std::cout << "Updated Ctx : " << (int)ctxTables[1] << std::endl;

	#endif
		outVal = (outVal << 1) | binVal;
	decode_decision(0, BYPASS, baeState, binVal, tempBst, 0, ctxTables);
	#ifndef __SYNTHESIS__
		std::cout << "Curr Val " << (int)baeState.ivlCurrRange << std::endl;
		std::cout << "Offset " << (int)baeState.ivlOffset << std::endl;
		std::cout << "bin val " << binVal << std::endl;
		std::cout << "Updated Ctx : " << (int)ctxTables[1] << std::endl;

	#endif
		outVal = (outVal << 1) + binVal;
	decode_decision(0, BYPASS, baeState, binVal, tempBst, 0, ctxTables);
	#ifndef __SYNTHESIS__
		std::cout << "Curr Val " << (int)baeState.ivlCurrRange << std::endl;
		std::cout << "Offset " << (int)baeState.ivlOffset << std::endl;
		std::cout << "bin val " << binVal << std::endl;
		std::cout << "Updated Ctx : " << (int)ctxTables[1] << std::endl;

	#endif
		outVal = (outVal << 1) + binVal;
	decode_decision(0, BYPASS, baeState, binVal, tempBst, 0, ctxTables);
	#ifndef __SYNTHESIS__
		std::cout << "Curr Val " << (int)baeState.ivlCurrRange << std::endl;
		std::cout << "Offset " << (int)baeState.ivlOffset << std::endl;
		std::cout << "bin val " << binVal << std::endl;
		std::cout << "Updated Ctx : " << (int)ctxTables[1] << std::endl;

	#endif
		outVal = (outVal << 1) + binVal;

	bitOut.write(outVal);

*/
	saoIn_t sao_inp;
	saoOut_t sao_op;
	sao_inp = saoIn.read();
	sao_top(sao_inp, sao_op, 1, baeState, tempBst, ctxTables);
	saoOut.write(sao_op);
	store_global_ram(globalCtx, ctxTables, ctxWritten);
}




