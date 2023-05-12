#include "quad_tree.h"
#include "arith_dec.h"
#include "init_tables.h"
#include "utils.h"
#include <assert.h>

void parseSplitCuFlag(CU_t& cu, data_in_t& din, data_out_t& dout, internal_data_t& dinternal, arith_t& state, UChar* bStream, UChar ctxTables[MAX_NUM_CTX_MOD], UInt& symbolVal){
	int ctxInc = 0;

	// Left availability check
	if(cu.x==0) {
		if (din.left_ctu.is_available) {
			ctxInc += (din.left_ctu.cqtDepth[cu.y] > cu.depth);
		}
	} else {
		ctxInc += (dinternal.cqtDepth[cu.x-1][cu.y] > cu.depth);
	}

	// Right availability check
	if (cu.y==0){
		if (din.up_ctu.is_available) {
			ctxInc += (din.up_ctu.cqtDepth[cu.x] > cu.depth);
		}
	} else {
		ctxInc += (dinternal.cqtDepth[cu.x][cu.y-1] > cu.depth);
	}

	//Decoding bin
	bool bitVal;
	decode_decision(REGULAR, state, bitVal, bStream, SPLIT_FLAG_CTX_ADDR+ctxInc, ctxTables);
	symbolVal = bitVal;

#ifndef __SYNTHESIS__
	std::cout << "Decoding split_cu_flag" << std::endl;
	std::cout << "Ctx Inc : " << ctxInc << std::endl;
	std::cout << "Symbol Val : " << symbolVal << std::endl << std::endl;
#endif

}

void setCqtDepth(CU_t& cu, data_out_t& dout, internal_data_t& dinternal, UChar cqtDepth) {
		for (int i=0;i < (1<<cu.log2CbSize); i++){
			for(int j=0; j < (1<<cu.log2CbSize); j++){
				dinternal.cqtDepth[i][j] = cqtDepth;
			}
		}
}

void coding_unit_rec(uint16_t cu_idx, data_in_t& din, data_out_t& dout, internal_data_t& dinternal, arith_t& state, UChar* bStream, UChar ctxTables[MAX_NUM_CTX_MOD]){
	CU_t cu;
	cu.x = 0;
	cu.y = 0;

	if (cu_idx==0) {
		cu.depth = 0;
	} else if (1<=cu_idx <=4) {
		cu.depth = 1;
	} else if (5<=cu_idx<=20){
		cu.depth =2;
	} else {
		cu.depth = 3;
	}

	assert(cu.depth < 4);
	switch (cu.depth) {
	case 0: cu.x = 0;
			cu.y = 0;
			cu.log2CbSize = 6;
			break;
	case 1: cu.x = ((cu_idx-1) & 1)*32;
			cu.y = ((cu_idx-1) >> 1)*32;
			cu.log2CbSize= 5;
			break;
	case 2: cu.x = (TS2RS[(cu_idx-5)] & 3)*16;
			cu.y = (TS2RS[(cu_idx-5)] >> 2)*16;
			cu.log2CbSize = 4;
			break;
	case 3: cu.x = (TS2RS[(cu_idx-21)&15] & 3)*8;
			cu.y = (TS2RS[(cu_idx-12)&15] >> 2)*8;
			cu.log2CbSize = 3;
			if (((cu_idx-21)>>4)>>1) {
				cu.y += 32;
			}
			if (((cu_idx-21)>>4)&1) {
				cu.x += 32;
			}
			break;
	}


}





