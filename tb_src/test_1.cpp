#include <iostream>
#include <stdint.h>
#include <hls_stream.h>
#include <fstream>
#include "typedef.h"


typedef uint8_t UChar;
typedef uint32_t UInt;

template <typename T, typename S>
void printArray(const char* name, int xdim, int ydim, T* arr){

	std::cout << name << " :" << std::endl;
	T val;
	bool flip=0;
	for(int x=0; x<xdim; x++){
		for(int y=0; y<ydim; y++){
			val = arr[x*ydim+y];
			std::cout << (S)val << " ";
			flip = !flip;
		}
		std::cout <<std::endl <<"----------------"<< std::endl;
	}
	std::cout << std::endl;

}
void cabac_top(volatile UChar globalCtx[MAX_NUM_CTX_MOD], volatile int8_t tranCoeff[64][64], volatile UChar bitStream[1024], hls::stream<data_in_t>& data_in_s, hls::stream<data_out_t>& data_out_s);

//void cabac_top(volatile UChar globalCtx[MAX_NUM_CTX_MOD], hls::stream<int8_t>& tranCoeff, hls::stream<UChar, 128>& bitStream, hls::stream<UInt>& bitOut, hls::stream<data_in_t>& data_in_s, hls::stream<data_out_t>& data_out_s);
int main() {
	UChar testBitStream_maxi[1024];
	std::ifstream file("F:\\petaProj\\cabac_hls\\cabac\\tb_src\\ctu_bitstream.dat", std::ios::binary);
	if(!file){
		std::cerr << "Could not openfile" << std::endl;
		return 1;
	}
	file.seekg(0, std::ios::end);
	int fileSize = file.tellg();
	file.seekg(0, std::ios::beg);

	memset(testBitStream_maxi, 0, sizeof(testBitStream_maxi));
	file.read((char*)testBitStream_maxi, fileSize);
	std::cout  << "File Size : " << fileSize << std::endl;

	UChar globalCtx[512];

	hls::stream<UInt, 32> bOut;

	// Setting input buffers
	// TODO : set all the input buffers
	data_in_t data_inp;
	data_inp.ctuAddrsRs = 0;
	data_inp.firstCTU = 1;
	data_inp.s_header.cabac_init_flag = 0;
	data_inp.s_header.slice_type = I_SLICE;
	data_inp.s_header.qp = 32;
	data_inp.s_header.slice_sao_chroma_flag = 1;
	data_inp.s_header.slice_sao_luma_flag = 1;

	data_inp.left_ctu.is_available = false;
	data_inp.up_ctu.is_available= false;

	data_inp.PicWidthInCtbsY=20;
	data_inp.CtbLog2SizeY=6;
	data_inp.Log2MaxTransformSkipSize=2;
	data_inp.MinCbLog2SizeY=3;
	data_inp.MaxTbLog2SizeY=5;
	data_inp.MinTbLog2SizeY=2;

	data_inp.pps.log2_max_transform_skip_block_size_minus2=1;
	data_inp.pps.sign_data_hiding_enabled_flag=1;
	data_inp.pps.transform_skip_enabled_flag=1;
	data_inp.pps.transquant_bypass_enabled_flag=0;

	data_inp.sps.pic_width_in_luma_samples=1280;
	data_inp.sps.max_transform_hierarchy_depth_intra=2;


	hls::stream<data_in_t> data_inp_s;
	hls::stream<data_out_t> data_oup_s;

	data_inp_s.write(data_inp);
	data_out_t data_oup;

	//hls::stream<int8_t> tranCoeff;
	int8_t tranCoeff[64][64];
	cabac_top(globalCtx, tranCoeff, testBitStream_maxi, data_inp_s, data_oup_s);
	data_oup = data_oup_s.read();

	UChar expected[5] = {14, 33, 2, 29, 49};


	std::cout << "TEST BENCH RESULTS" << std::endl;
	for(int i=0; i < 8; i++) {
		std::cout << (int)globalCtx[i] << std::endl;

		//if(expected[i] != globalCtx[i]){
		//	return 1;
		//}
	}


	std::cout << "====================== Sao Buffer Output =========================" << std::endl;
	printArray<UChar, int>("SaoTypeIdx", 3, 1, data_oup.SaoTypeIdx);
	std::cout << "abc" << std::endl;
	printArray<UChar, int>("SaoEoClass", 3, 1, data_oup.SaoEOClass);
	std::cout << "abc" << std::endl;
	printArray<int16_t, int16_t>("SaoOffsetVal", 3, 5, (int16_t*)data_oup.SaoOffsetVal);
	std::cout << "abc" << std::endl;
	printArray<UChar, int>("sao_band_position", 3, 1, data_oup.sao_band_position);

	std::cout << "====================== Transform Output =========================" << std::endl;
	printArray<int8_t, int>("Transform Coefficients", 64, 64, (int8_t*)tranCoeff);

/*
	for(int i=0; i<10; i++){
		std::cout << (int)tranCoeff.read() << std::endl;
	}

	std::cout << "Transform debug" << std::endl;
	while(!bOut.empty()){
		std::cout << "Val : " << (int) bOut.read() << std::endl;
	}
*/
	return 0;
}
