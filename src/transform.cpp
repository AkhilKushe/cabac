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

void parseCoeffAbsLevelG1(UChar cIdx, TU_t& tu, arith_t& state, UChar* bStream, UChar ctxTables[MAX_NUM_CTX_MOD], UInt& symbolVal){
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

	tu.lastGreater1Ctx=greater1Ctx;
	if(tu.lastGreater1Ctx>0){
		tu.lastGreater1Flag = symbolVal;
		if(tu.lastGreater1Flag==1){
			tu.lastGreater1Ctx=0;
		} else {
			tu.lastGreater1Ctx += 1;
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

void residual_coding(UChar cIdx, data_in_t& din, data_out_t& dout, internal_data_t& dint,CU_t& cu, TU_t& tu, arith_t& state, UChar* bStream, UChar ctxTables[MAX_NUM_CTX_MOD]){
	UChar last_sig_coeff_x_prefix, last_sig_coeff_y_prefix, last_sig_coeff_x_suffix, last_sig_coeff_y_suffix;
	UChar lastScanPos;
	UChar lastSubBlock;

	bool coded_sub_block[8][8]; 		//Considering max tb size as 32
	bool sig_coeff_flag[32][32];

	// Per subblock vals
	bool coeff_abs_level_greater1_flag[16];
	bool coeff_abs_level_greater2_flag[16];
	bool coeff_sign_flag[16];
	UChar coeff_abs_level_remaining[16];

	UInt symbolVal;
	UChar xC, yC, xS, yS;
	UChar LastSignificantCoeffX, LastSignificantCoeffY;

	UChar subBlockScan[64][2];
	UChar coeffBlockScan[64][2];

	bool inferSbDcSigCoeffFlag =0;
	bool escapeDataPresent = 0;
	UChar firstSigScanPos;
	int8_t lastSigScanPos;
	UChar numGreater1Flag;
	int8_t lastGreater1ScanPos;
	UChar numSigCoeff;
	UChar sumAbsLevel;
	UChar baseLevel;
	UChar cmp;
	int8_t transCoeffVal;

	lastScanPos = 16;
	lastSubBlock = (1<<(tu.log2TrafoSize-2))*(1<<(tu.log2TrafoSize-2));

	for(int i=0; i<8; i++){
		for(int j=0; j<8; j++){
			coded_sub_block[i][j] = 0;
		}
	}
	for(int i=0; i<32; i++){
		for(int j=0; j<32; j++){
			sig_coeff_flag[i][j] = 0;
		}
	}

	if (din.pps.transform_skip_enabled_flag && (! cu.cu_transquant_bypass_flag) && (tu.log2TrafoSize <= dint.macros.Log2MaxTransformSkipSize)){
		parseSkipTransformFlag(cIdx, state, bStream, ctxTables, symbolVal);
		tu.transform_skip_flag = symbolVal;
	} else {
		tu.transform_skip_flag = 0;
	}

	parseSigCoeffXPrefix(tu.log2TrafoSize, cIdx, state, bStream, ctxTables, symbolVal);
	last_sig_coeff_x_prefix = symbolVal;

	parseSigCoeffYPrefix(tu.log2TrafoSize, cIdx, state, bStream, ctxTables, symbolVal);
	last_sig_coeff_y_prefix = symbolVal;

	LastSignificantCoeffX = last_sig_coeff_x_prefix;
	LastSignificantCoeffY = last_sig_coeff_y_prefix;

	if (last_sig_coeff_x_prefix > 3){
		parseSigCoeffSuffix(last_sig_coeff_x_prefix, state, bStream, ctxTables, symbolVal);
		last_sig_coeff_x_suffix = symbolVal;
	}

	if(last_sig_coeff_y_prefix > 3) {
		parseSigCoeffSuffix(last_sig_coeff_y_prefix, state, bStream, ctxTables, symbolVal);
		last_sig_coeff_y_suffix = symbolVal;
	}


	UChar scanIdx;
	get_scanIdx(tu, dint, cIdx, scanIdx);
	UChar temp;
	if(scanIdx==2){
		temp = LastSignificantCoeffX;
		LastSignificantCoeffX = LastSignificantCoeffY;
		LastSignificantCoeffY = temp;
	}

	switch (scanIdx)
	{
	case 0:
		up_right_diagonal_scan((1<<(tu.log2TrafoSize-2)), subBlockScan);
		up_right_diagonal_scan(4, coeffBlockScan);
		break;
	case 1:
		horizontal_scan((1<<(tu.log2TrafoSize-2)), subBlockScan);
		horizontal_scan(4, coeffBlockScan);
		break;
	case 2:
		vertical_scan((1<<(tu.log2TrafoSize-2)), subBlockScan);
		vertical_scan(4, coeffBlockScan);
		break;
	}
	
	do {
		if(lastScanPos==0){
			lastScanPos=16;
			lastSubBlock--;
		}
		lastScanPos--;
		xS = subBlockScan[lastSubBlock][0];
		yS = subBlockScan[lastSubBlock][1];
		xS = (xS<<2)+ coeffBlockScan[lastScanPos][0];
		yS = (yS<<2)+ coeffBlockScan[lastScanPos][1];
	} while ((xC != LastSignificantCoeffX) || (yC != LastSignificantCoeffY));

	// Sub Block processing
	tu.lastGreater1Ctx =1;
	for(int i=lastSubBlock; i>=0; i--){
		// Sub block var initialization
		tu.cLastRiceParam = 0;
		tu.cLastAbsLevel = 0;
		if(i==0 || cIdx>0){
			tu.ctxSet = 0;
		} else {
			tu.ctxSet = 2;
		}
		tu.greater1Ctx = 1;
		if(tu.lastGreater1Ctx==0){
			tu.ctxSet +=1;
		}

		for(int j=0; i<16; i++){
			coeff_abs_level_greater1_flag[i] = 0;
			coeff_abs_level_greater2_flag[i] = 0;
			coeff_sign_flag[i] = 0;
			coeff_abs_level_remaining[i] = 0;
		}

		xS = subBlockScan[i][0];
		yS = subBlockScan[i][1];

		// Directly assuming coded sub block flag is not present
		escapeDataPresent = 0;
		inferSbDcSigCoeffFlag = 0;
		if(i<lastSubBlock && i>0){
			// Skipping coded subblock for now
			assert(1);
		} else {
			if ((xS == 0 && yS == 0) || (xS == (LastSignificantCoeffX >> 2) && yS == (LastSignificantCoeffY >> 2))) {
				coded_sub_block[xS][yS] = 1;
			} else {
				coded_sub_block[xS][yS] = 0;
			}
		}

		if (i == lastSubBlock) {
			temp = lastScanPos - 1;
		} else {
			temp = 15;
		}
		for (int n = temp; n >= 0; n--) {
			xC = (xS << 2) + coeffBlockScan[n][0];
			yC = (yS << 2) + coeffBlockScan[n][1];
			if (coded_sub_block[xS][yS] && (n > 0 || !inferSbDcSigCoeffFlag)) {
				parseSigCoeffFlag(xC, yC, scanIdx, coded_sub_block[xS+1][yS], coded_sub_block[xS][yS+1], tu.log2TrafoSize, cIdx, state, bStream, ctxTables, symbolVal);
				sig_coeff_flag[xC][yC] = symbolVal;
			} else {
				if ((xC == LastSignificantCoeffX) && (yC == LastSignificantCoeffY) || ((xC & 3) == 0 && (yC & 3) == 0 && inferSbDcSigCoeffFlag && coded_sub_block[xS][yS])) {
					sig_coeff_flag[xC][yC] = 1;
				} else {
					sig_coeff_flag[xC][yC] = 0;
				}
			}

			if (sig_coeff_flag[xC][yC]) {
				inferSbDcSigCoeffFlag = 0;
			}
		}

		// SigCoeffFlag not present for these indices
		for (int n = 15; n > temp; n--) {
			int xC = (xS << 2) + coeffBlockScan[n][0];
			int yC = (yS << 2) + coeffBlockScan[n][1];
			if ((xC == LastSignificantCoeffX && yC == LastSignificantCoeffY) || (((xC & 3) == 0 && (yC & 3) == 0) && inferSbDcSigCoeffFlag && coded_sub_block[xS][yS])) {
				sig_coeff_flag[xC][yC] = 1;
			} else {
				sig_coeff_flag[xC][yC] = 0;
			}
		}

        firstSigScanPos = 16;
        lastSigScanPos = -1;
        numGreater1Flag = 0;
        lastGreater1ScanPos = -1;

		for (int n = 15; n >= 0; n--) {
			xC = (xS << 2) + coeffBlockScan[n][0];
			yC = (yS << 2) + coeffBlockScan[n][1];

			if (sig_coeff_flag[xC][yC]) {
				if (numGreater1Flag < 8) {
					parseCoeffAbsLevelG1(cIdx, tu, state, bStream, ctxTables, symbolVal);
					coeff_abs_level_greater1_flag[n] = symbolVal;
					++numGreater1Flag;
					if (coeff_abs_level_greater1_flag[n] && (lastGreater1ScanPos == -1)) {
						lastGreater1ScanPos = n;
					} else if (coeff_abs_level_greater1_flag[n]) {
						escapeDataPresent = 1;
					}
				} else {
					escapeDataPresent = 1;
				}

				if (lastSigScanPos == -1) {
					lastSigScanPos = n;
				}
				firstSigScanPos = n;
			}
		}

		bool signHidden = (lastSigScanPos - firstSigScanPos) > 3;

		if (lastGreater1ScanPos != -1) {
			parseCoeffAbsLevelG2(cIdx, tu, state, bStream, ctxTables, symbolVal);
			coeff_abs_level_greater2_flag[lastGreater1ScanPos] = symbolVal;
		}

		for (int n = 15; n >= 0; --n) {
			int xC = (xS << 2) + coeffBlockScan[n][0];
			int yC = (yS << 2) + coeffBlockScan[n][1];

			if (sig_coeff_flag[xC][yC] && ((!din.pps.sign_data_hiding_enabled_flag) || (!signHidden) || (n != firstSigScanPos))) {
				parseCoeffSign(state, bStream, ctxTables, symbolVal);
				coeff_sign_flag[n] = symbolVal;
			}
		}

		numSigCoeff = 0;
		sumAbsLevel = 0;
		for (int n = 15; n >= 0; n--) {
			xC = (xS << 2) + coeffBlockScan[n][0];
			yC = (yS << 2) + coeffBlockScan[n][1];
			if (sig_coeff_flag[xC][yC]) {
				baseLevel = 1 + coeff_abs_level_greater1_flag[n] + coeff_abs_level_greater2_flag[n];

				cmp;
				if (numSigCoeff < 8) {
					cmp = (lastGreater1ScanPos == n) ? 3 : 2;
				} else {
					cmp = 1;
				}

				if (baseLevel == cmp) {
					parseCoeffAbsRem(baseLevel, tu, state, bStream, ctxTables, symbolVal);
					coeff_abs_level_remaining[n] = symbolVal;
				}

				transCoeffVal = (coeff_abs_level_remaining[n] + baseLevel) * (1 - 2 * coeff_sign_flag[n]);

				if (din.pps.sign_data_hiding_enabled_flag && signHidden) {
					sumAbsLevel += (coeff_abs_level_remaining[n] + baseLevel);
					if ((n == firstSigScanPos) && (sumAbsLevel % 2)) {
						transCoeffVal = -transCoeffVal;
					}
				}

				switch (cIdx)
				{
				case 0:
					dint.TransCoeffLevel_0[xC][yC] = transCoeffVal;
					break;
				case 1:
					dint.TransCoeffLevel_1[xC][yC] = transCoeffVal;
					break;
				case 2:
					dint.TransCoeffLevel_2[xC][yC] = transCoeffVal;
					break;
				}
				numSigCoeff++;
			}
		}
	}
}













