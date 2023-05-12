#include "deBin.h"
#include "arith_dec.h"

void parseSAOTypeIdx(bool init, arith_t& state, UChar* bStream, UChar ctxTables[MAX_NUM_CTX_MOD], UInt& symbolVal){
	symbolVal = 0;
	bool binVal;
	decode_decision(init, REGULAR, state, binVal, bStream, SAO_TYPE_IDX_CTX_ADDR, ctxTables);
	if(!binVal) {
		symbolVal = binVal;
		return;
	} else {
		decode_decision(0, BYPASS, state, binVal, bStream, SAO_TYPE_IDX_CTX_ADDR, ctxTables);
		if(binVal) {
			symbolVal = 2;
		} else {
			symbolVal = 1;
		}
	}
#ifndef __SYNTHESIS__
	std::cout << "Decoding SAO type IDX" << std::endl;
	std::cout << "Symbol Val : " << symbolVal << std::endl;
#endif
}

void parseSAOMergeFlag(bool init, arith_t& state, UChar* bStream, UChar ctxTables[MAX_NUM_CTX_MOD], UInt& symbolVal){
	bool binVal;
	decode_decision(init, BYPASS, state, binVal, bStream, 0, 0);
	symbolVal = binVal;
#ifndef __SYNTHESIS__
	std::cout << "Decoding Merge Flag" << std::endl;
	std::cout << "Symbol Val : " << symbolVal << std::endl;
#endif
};

void parseSAOOffsetAbs(bool init, arith_t& state, UChar* bStream, UInt& symbolVal){
	bool binVal;
	symbolVal = 0;
	do {
		decode_decision(init, BYPASS, state, binVal, bStream, 0, 0);
		symbolVal += 1;
		init = 0;
	} while (binVal & (symbolVal < 5));

	symbolVal -= 1;
#ifndef __SYNTHESIS__
	std::cout << "Decoding SAO abs offset" << std::endl;
	std::cout << "Symbol Val : " << symbolVal << std::endl;
#endif
}
void parseSAOOffsetSign(bool init, arith_t& state, UChar* bStream, UInt& symbolVal){
	bool binVal;
	decode_decision(init, BYPASS, state, binVal, bStream, 0, 0);
	symbolVal = binVal;
#ifndef __SYNTHESIS__
	std::cout << "Decoding SAO abs Sign" << std::endl;
	std::cout << "Symbol Val : " << symbolVal << std::endl;
#endif
}
void parseSAOEO(bool init, arith_t& state, UChar* bStream, UInt& symbolVal){
	UChar binIdx;
	binIdx = 0;
	bool binVal;
	symbolVal = 0;

	while(binIdx < 2) {
		decode_decision(init, BYPASS, state, binVal, bStream, 0, 0);
		symbolVal = (symbolVal << 1) + binVal;
		init = 0;
		binIdx +=1;
	}
#ifndef __SYNTHESIS__
	std::cout << "Decoding  SAO EO" << std::endl;
	std::cout << "Symbol Val : " << symbolVal << std::endl;
#endif
}
void parseSAOBO(bool init, arith_t& state, UChar* bStream, UInt& symbolVal){
	UChar binIdx;
	binIdx = 0;
	bool binVal;
	symbolVal = 0;

	while(binIdx < 5) {
		decode_decision(init, BYPASS, state, binVal, bStream, 0, 0);
		symbolVal = (symbolVal << 1) + binVal;
		init = 0;
		binIdx +=1;
	}
#ifndef __SYNTHESIS__
	std::cout << "Decoding SAO BO" << std::endl;
	std::cout << "Symbol Val : " << symbolVal << std::endl;
#endif
}

bool componentID(int clIdx) {
	if(clIdx==1) return 0;
	return 1;
}

void sao_top(saoIn_t& sao_in, saoOut_t& sao_out, bool init, arith_t& state, UChar* bStream, UChar ctxTables[MAX_NUM_CTX_MOD]){
	UInt symbolVal;
#ifndef __SYNTHESIS__
	std::cout << "SAO DECODING " << std::endl << std::endl;
#endif
	if(sao_in.sao_merge_left_flag_available){
		parseSAOMergeFlag(init, state, bStream, ctxTables, symbolVal);
		sao_out.sao_merge_left_flag = symbolVal;
		init = 0;
	} else {
		sao_out.sao_merge_left_flag = 0;
	}
	if(sao_in.sao_merge_up_flag_available){
		parseSAOMergeFlag(init, state, bStream, ctxTables, symbolVal);
		sao_out.sao_merge_up_flag = symbolVal;
		init = 0;
	} else {
		sao_out.sao_merge_up_flag = 0;
	}

	if( (!sao_out.sao_merge_up_flag) && (!sao_out.sao_merge_left_flag)) {
		for(int clIdx=0; clIdx < 3; clIdx++) {
			if ( (sao_in.slice_sao_luma_flag & clIdx ==0) || (sao_in.slice_sao_chroma_flag & clIdx  > 0) ) {
				if(clIdx ==0) {
					parseSAOTypeIdx(init, state, bStream, ctxTables, symbolVal);
					sao_out.sao_type_idx_luma = symbolVal;
					init = 0;
				}

				if(clIdx==1) {
					parseSAOTypeIdx(init, state, bStream, ctxTables, symbolVal);
					sao_out.sao_type_idx_chroma = symbolVal;
					init = 0;
				}

				if(sao_in.SaoTypeIdx[clIdx] > 0) {
					for(int i=0; i < 4; i++) {
						parseSAOOffsetAbs(init, state, bStream, symbolVal);
						sao_out.sao_offset_abs[clIdx][i] = symbolVal;
					}
					if(sao_in.SaoTypeIdx[clIdx]==1) {
						for(int i=0; i < 4; i++) {
							if(sao_out.sao_offset_abs[clIdx][i]>0) {
								parseSAOOffsetSign(init, state, bStream, symbolVal);
								sao_out.sao_offset_sign[clIdx][i] = symbolVal;
							}

						}
						parseSAOBO(init, state, bStream, symbolVal);
						sao_out.sao_band_position[clIdx] = symbolVal;
					} else {
						if(clIdx==0) {
							parseSAOEO(init, state, bStream, symbolVal);
							sao_out.sao_eo_class_luma = symbolVal;
						}

						if (clIdx==1) {
							parseSAOEO(init, state, bStream, symbolVal);
							sao_out.sao_eo_class_chroma = symbolVal;
						}
					}
				}

			}
		}
	}

}
