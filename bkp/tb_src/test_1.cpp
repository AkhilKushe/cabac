#include <iostream>
#include <stdint.h>
#include <hls_stream.h>
#include "typedef.h"

typedef uint8_t UChar;
typedef uint32_t UInt;

void cabac_top(volatile UChar globalCtx[MAX_NUM_CTX_MOD], hls::stream<UChar>& bitStream, hls::stream<UInt>& bitOut,  initData_t initd, hls::stream<saoIn_t>& saoIn, hls::stream<saoOut_t>& saoOut);

int main() {
	UChar globalCtx[512];
	hls::stream<UChar> testBitStream;
	testBitStream.write(187);
	testBitStream.write(73);
	testBitStream.write(61);
	testBitStream.write(251);
	testBitStream.write(170);
	testBitStream.write(71);
	testBitStream.write(30);
	hls::stream<UInt, 32> bOut;

	initData_t initd;
	initd.firstSlice = 1;
	initd.qp = 32;
	initd.sType = I_SLICE;
	initd.cabac_init_flag = 0;

	saoIn_t sao_in;
	sao_in.ChromaArrayType = 2;
	sao_in.SaoTypeIdx[0] = 2;
	sao_in.SaoTypeIdx[1] = 1;
	sao_in.SaoTypeIdx[2] = 1;

	sao_in.sao_merge_left_flag_available = 0;
	sao_in.sao_merge_up_flag_available = 0;
	sao_in.slice_sao_chroma_flag = 1;
	sao_in.slice_sao_luma_flag = 1;

	hls::stream<saoIn_t> saoIn_stream;
	hls::stream<saoOut_t> saoOut_stream;
	saoIn_stream.write(sao_in);
	saoOut_t sao_out;

	cabac_top(globalCtx, testBitStream, bOut, initd, saoIn_stream, saoOut_stream);
	sao_out = saoOut_stream.read();
	UChar expected[5] = {14, 29, 2, 29, 49};


	std::cout << "TEST BENCH RESULTS" << std::endl;
	for(int i=0; i < 5; i++) {
		std::cout << (int)globalCtx[i] << std::endl;

		//if(expected[i] != globalCtx[i]){
		//	return 1;
		//}
	}

	std::cout << "SAO PARAM" << std::endl;
	std::cout << "SAO MERGE FLAG LEFT : " << sao_out.sao_merge_left_flag << std::endl;
	std::cout << "SAO MERGE up LEFT : " << sao_out.sao_merge_up_flag << std::endl;
	std::cout << "SAO Type IDX Luma : " << sao_out.sao_type_idx_luma << std::endl;
	std::cout << "SAO Type Idx Chroma : " << sao_out.sao_type_idx_chroma << std::endl;
	std::cout << "SAO EO Luma : " << sao_out.sao_eo_class_luma << std::endl;
	std::cout << "SAO EO chroma : " << sao_out.sao_eo_class_chroma << std::endl;

	for(int i=0; i < 3; i++) {
		for(int j=0; j<4; j++) {
			std::cout << "SAO offset abs(" << i << "," << j << ") : " << sao_out.sao_offset_abs[i][j] << std::endl;
		}
	}
	for(int i=0; i < 3; i++) {
			for(int j=0; j<4; j++) {
				std::cout << "SAO offset sign(" << i << "," << j << ") : " << sao_out.sao_offset_sign[i][j] << std::endl;
			}
		}

	for(int i=0; i < 3; i++) {
			std::cout << "SAO BO(" << i << ") : " << sao_out.sao_band_position[i] << std::endl;
	}



	return 0;
}
