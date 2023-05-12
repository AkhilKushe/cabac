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



// TODO : fix top inteface with input/output declaration
void cabac_top(volatile UChar globalCtx[MAX_NUM_CTX_MOD], hls::stream<UChar>& bitStream, hls::stream<UInt>& bitOut, hls::stream<data_in_t>& data_in_s, hls::stream<data_out_t>& data_out_s){
#pragma HLS INTERFACE mode=m_axi bundle=ctx name=gCtx port=globalCtx
#pragma HLS INTERFACE mode=s_axilite port=globalCtx

	hls::stream<UChar> streamCtxRAM;
#pragma HLS STREAM depth=512 type=fifo variable=streamCtxRAM

	UChar ctxTables[MAX_NUM_CTX_MOD];
	UInt ctxWritten;
	ctxWritten = 0;

	data_in_t data_in;
	data_out_t data_out;
	data_in = data_in_s.read();


	initialization_top(data_in.firstCTU, data_in.s_header.slice_type, data_in.s_header.qp, data_in.s_header.cabac_init_flag, globalCtx, streamCtxRAM, ctxWritten);

	load_ram(ctxTables, streamCtxRAM, ctxWritten);



	UChar tempBst[7];
	for(int i=0; i<7; i++){
		tempBst[i] = bitStream.read();
	}
	// Initialize Arith decoder
	// TODO : Export BAE state, Arith initialization only for first CTU, currently only 1 CTU
	arith_t baeState;
	arith_init(tempBst, baeState);



	sao_top(data_in, data_out, baeState, tempBst, ctxTables);
	data_out_s.write(data_out);

	store_global_ram(globalCtx, ctxTables, ctxWritten);
}




