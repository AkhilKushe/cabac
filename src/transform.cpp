#include "transform.h"
#include "init_tables.h"
#include "utils.h"

void parseCbfC(UChar trafoDepth, arith_t& state, UChar* bStream, UChar ctxTables[MAX_NUM_CTX_MOD], UInt& symbolVal){
	symbolVal = 0;
	bool binVal;
	decode_decision(REGULAR, state, binVal, bStream, CBF_CHROMA_CTX_ADDR+trafoDepth, ctxTables);
	symbolVal = binVal;

#ifndef __SYNTHESIS__
	std::cout << "Decoding Cbf_C" << std::endl;
	std::cout << "ctxInc : " << trafoDepth << std::endl;
	std::cout << "Symbol Val : " << symbolVal << std::endl << std::endl;
#endif
}

void parseCbfLuma(UChar trafoDepth, arith_t& state, UChar* bStream, UChar ctxTables[MAX_NUM_CTX_MOD], UInt& symbolVal){
	UChar ctxInc;

	if(trafoDepth==0){
		ctxInc=1;
	} else {
		ctxInc = 0;
	}

	symbolVal = 0;
	bool binVal;
	decode_decision(REGULAR, state, binVal, bStream, CBF_LUMA_CTX_ADDR+ctxInc, ctxTables);
	symbolVal = binVal;

#ifndef __SYNTHESIS__
	std::cout << "Decoding Cbf_luma" << std::endl;
	std::cout << "ctxInc : " << ctxInc << std::endl;
	std::cout << "Symbol Val : " << symbolVal << std::endl << std::endl;
#endif
}

void parseSplitTransformFlag(UChar log2TrafoSize, arith_t& state, UChar* bStream, UChar ctxTables[MAX_NUM_CTX_MOD], UInt& symbolVal){
	UChar ctxInc;
	ctxInc = 5-log2TrafoSize;
	symbolVal = 0;
	bool binVal;
	decode_decision(REGULAR, state, binVal, bStream, SPLIT_TRANSFORM_FLAG_CTX_ADDR+ctxInc, ctxTables);
	symbolVal = binVal;

#ifndef __SYNTHESIS__
	std::cout << "Decoding Split Transform Flag" << std::endl;
	std::cout << "ctxInc : " << ctxInc << std::endl;
	std::cout << "Symbol Val : " << symbolVal << std::endl << std::endl;
#endif

}

void parseSkipTransformFlag(UChar cIdx, arith_t& state, UChar* bStream, UChar ctxTables[MAX_NUM_CTX_MOD], UInt& symbolVal){
	symbolVal = 0;
	bool binVal;
	if (cIdx==0) {
		decode_decision(REGULAR, state, binVal, bStream, TRANSFORM_SKIP_FLAG_CTX_ADDR_0, ctxTables);
	} else {
		decode_decision(REGULAR, state, binVal, bStream, TRANSFORM_SKIP_FLAG_CTX_ADDR_1, ctxTables);
	}
	symbolVal = binVal;

#ifndef __SYNTHESIS__
	std::cout << "Decoding Skip transform flag" << std::endl;
	std::cout << "Symbol Val : " << symbolVal << std::endl << std::endl;
#endif
}

void parseSigCoeffXPrefix(UChar log2TrafoSize, UChar cIdx, arith_t& state, UChar* bStream, UChar ctxTables[MAX_NUM_CTX_MOD], UInt& symbolVal){
	bool binVal;
	symbolVal = 0;
	UChar binIdx = 0;

	UChar ctxOffset, ctxShift, ctxInc;

	if(cIdx==0) {
		ctxOffset = 3*(log2TrafoSize-2)+((log2TrafoSize-1)>>2);
		ctxShift = (log2TrafoSize+1)>>2;
	} else {
		ctxOffset = 15;
		ctxShift = log2TrafoSize-2;
	}

	UChar cmax=(log2TrafoSize << 1 )-1;


	do {
		ctxInc = (binIdx >> ctxShift)+ctxOffset;
		decode_decision(REGULAR, state, binVal, bStream, SIG_COEFF_X_PREFIX_CTX_ADDR+ctxInc, ctxTables);
		symbolVal += binVal;
	} while (binVal & (binIdx < cmax));

//	symbolVal -= 1;
#ifndef __SYNTHESIS__
	std::cout << "Sig coeff X prefix" << std::endl;
	std::cout << "ctxOffset : " << ctxOffset << std::endl;
	std::cout << "ctxShift : " << ctxShift << std::endl;
	std::cout << "Symbol Val : " << symbolVal << std::endl<< std::endl;
#endif
}
void parseSigCoeffYPrefix(UChar log2TrafoSize, UChar cIdx, arith_t& state, UChar* bStream, UChar ctxTables[MAX_NUM_CTX_MOD], UInt& symbolVal){
	bool binVal;
	symbolVal = 0;
	UChar binIdx = 0;

	UChar ctxOffset, ctxShift, ctxInc;

	if(cIdx==0) {
		ctxOffset = 3*(log2TrafoSize-2)+((log2TrafoSize-1)>>2);
		ctxShift = (log2TrafoSize+1)>>2;
	} else {
		ctxOffset = 15;
		ctxShift = log2TrafoSize-2;
	}

	UChar cmax=(log2TrafoSize << 1 )-1;


	do {
		ctxInc = (binIdx >> ctxShift)+ctxOffset;
		decode_decision(REGULAR, state, binVal, bStream, SIG_COEFF_Y_PREFIX_CTX_ADDR+ctxInc, ctxTables);
		symbolVal += binVal;
	} while (binVal & (binIdx < cmax));

//	symbolVal -= 1;
#ifndef __SYNTHESIS__
	std::cout << "Sig coeff Y prefix" << std::endl;
	std::cout << "ctxOffset : " << ctxOffset << std::endl;
	std::cout << "ctxShift : " << ctxShift << std::endl;
	std::cout << "Symbol Val : " << symbolVal << std::endl<< std::endl;
#endif
}

void parseSigCoeffSuffix(UInt prefix, arith_t& state, UChar* bStream, UChar ctxTables[MAX_NUM_CTX_MOD], UInt& symbolVal){
	UChar binIdx;
	binIdx = 0;
	bool binVal;
	symbolVal = 0;

	UChar cmax = ( 1 << ( ( prefix >> 1 ) - 1 ) - 1 );
	UChar fl = FL_CONVERT[cmax];

	while(binIdx < fl) {
		decode_decision(BYPASS, state, binVal, bStream, 0, 0);
		symbolVal = (symbolVal << 1) + binVal;
		binIdx +=1;
	}
#ifndef __SYNTHESIS__
	std::cout << "Suffix val" << std::endl;
	std::cout << "cmax : " <<std::endl;
	std::cout << "Symbol Val : " << symbolVal << std::endl<< std::endl;
#endif
}

void parseSigCoeffFlag(UChar xC, UChar yC, UChar scanIdx, UChar coded_sub_block_xS_plus_1, UChar coded_sub_block_yS_plus_1, UChar log2TrafoSize, UChar cIdx, arith_t& state, UChar* bStream, UChar ctxTables[MAX_NUM_CTX_MOD], UInt& symbolVal){
	UChar xS, yS, xP, yP;
	UChar prevCsbf;
	UChar sigCtx;
	UChar ctxInc;
	bool binVal;
	symbolVal=0;

	xS = xC>>2;
	yS = yC>>2;
	xP = xC&3;
	yP = yC&3;

	if (log2TrafoSize==2){
		sigCtx = CTX_IDX_MAP[(yC<<2)+xC];
	} else if ((xC+yC)==0){
		sigCtx=0;
	} else{
		prevCsbf=0;
		if (xS < (1<<(log2TrafoSize-2))-1) {
			prevCsbf += coded_sub_block_xS_plus_1;
		}
		if (yS < (1<<(log2TrafoSize-2))-1) {
			prevCsbf += coded_sub_block_yS_plus_1<<1;
		}
		switch(prevCsbf){
		case 0 : sigCtx = (xP+yP == 0)?2:(xP+yP < 3) ? 1:0;
					break;
		case 1 : sigCtx = (yP==0)?2:(yP==1) ? 1:0;
					break;
		case 2 : sigCtx = (xP==0)?2:(xP==1) ? 1:0;
					break;
		case 3 : sigCtx = 2;
					break;
		}

		if(cIdx==0){
			if (xS+yS>0){
				sigCtx += 3;
			}
			if (log2TrafoSize==3) {
				sigCtx += ((scanIdx==0)?9:15);
			} else {
				sigCtx += 21;
			}
		} else {
			sigCtx += ((log2TrafoSize==3)?9:12);
		}
	}

	ctxInc = (cIdx==0)?sigCtx:(sigCtx+27);

	//Decode bin
	decode_decision(REGULAR, state, binVal, bStream, SIG_COEFF_FLAG_CTX_ADDR+ctxInc, ctxTables);
	symbolVal=binVal;
}

void parseCoeffAbsLevelG1(bool lastCoeffOfSubBlock, UChar cIdx, TU_t& tu, arith_t& state, UChar* bStream, UChar ctxTables[MAX_NUM_CTX_MOD], UInt& symbolVal){
	UChar ctxSet, greater1Ctx, ctxInc;
	bool binVal;
	ctxSet = tu.ctxSet;
	greater1Ctx = tu.greater1Ctx;
	ctxInc = (ctxSet*4) + min<UChar>(3, greater1Ctx);
	symbolVal=0;

	if(cIdx>0){
		ctxInc+= 16;
	}
	// Decode bin

	tu.G2ctxSet = ctxSet;

	if (greater1Ctx > 0){
		tu.lastGreater1Ctx = symbolVal;
		if(tu.lastGreater1Ctx==1){
			greater1Ctx = 0;
		} else {
			greater1Ctx += 1;
		}
	}

	if(lastCoeffOfSubBlock){
		tu.lastGreater1Ctx=greater1Ctx;
		if(tu.lastGreater1Ctx>0){
			tu.lastGreater1Flag = symbolVal;
			if(tu.lastGreater1Flag==1){
				tu.lastGreater1Ctx=0;
			} else {
				tu.lastGreater1Ctx += 1;
			}
		}
	}

	tu.ctxSet = ctxSet;
	tu.greater1Ctx = greater1Ctx;

	// Decode bin
	decode_decision(REGULAR, state, binVal, bStream, COEFF_ABS_G1_CTX_ADDR+ctxInc, ctxTables);
	symbolVal=binVal;
}
void parseCoeffAbsLevelG2(UChar cIdx, TU_t& tu, arith_t& state, UChar* bStream, UChar ctxTables[MAX_NUM_CTX_MOD], UInt& symbolVal){
	UChar ctxInc;
	bool binVal;
	ctxInc = tu.G2ctxSet;
	symbolVal=0;

	if(cIdx>0){
		ctxInc += 16;
	}

	// Decode bin
	decode_decision(REGULAR, state, binVal, bStream, COEFF_ABS_G2_CTX_ADDR+ctxInc, ctxTables);
	symbolVal=binVal;
}
void parseCoeffAbsRem(UChar baseLevel, TU_t& tu, arith_t& state, UChar* bStream, UChar ctxTables[MAX_NUM_CTX_MOD], UInt& symbolVal){
	UInt cLastAbsLevel;
	UChar cLastRiceParam;
	UInt cAbsLevel;
	UChar cRiceParam;



	cLastAbsLevel= tu.cLastAbsLevel;
	cLastRiceParam=tu.cLastRiceParam;
	symbolVal=0;

	if(cLastAbsLevel > (3*(1<<cLastRiceParam))){
		cRiceParam = min<UChar>(cLastRiceParam+1, 4);
	} else {
		cRiceParam = min<UChar>(cLastRiceParam, 4);
	}

	// Decode bin
	UInt prefix;
	bool codeWord;
	codeWord = 1;

	while(codeWord){
		prefix+=1;
		decode_decision(BYPASS, state, codeWord, bStream, 0, 0);
	}

	codeWord = 1-codeWord;
	prefix = prefix - codeWord;
	codeWord = 0;

	UInt tempSymbolVal;
	UChar cntr;
	tempSymbolVal=0;

	if(prefix < 3){
		cntr=0;
		while(cntr < cRiceParam){
			decode_decision(BYPASS, state, codeWord, bStream, 0, 0);
			cntr+=1;
			tempSymbolVal = (tempSymbolVal <<1)+codeWord;
		}

		symbolVal = (prefix<<cRiceParam)+tempSymbolVal;

	} else {
		cntr=0;
		while(cntr < (prefix-3+cRiceParam)){
			decode_decision(BYPASS, state, codeWord, bStream, 0, 0);
			cntr+=1;
			tempSymbolVal = (tempSymbolVal <<1)+codeWord;
		}
		symbolVal = (((1<<(prefix-3))+3-1)<<cRiceParam)+tempSymbolVal;
	}


	cAbsLevel = baseLevel + symbolVal;
	tu.cLastAbsLevel = cAbsLevel;
	tu.cLastRiceParam = cRiceParam;
}
void parseCoeffSign(arith_t& state, UChar* bStream, UChar ctxTables[MAX_NUM_CTX_MOD], UInt& symbolVal){
	// Decode bin
	bool binVal;
	symbolVal =0;
	decode_decision(BYPASS, state, binVal, bStream, 0, 0);
	symbolVal=binVal;
}














