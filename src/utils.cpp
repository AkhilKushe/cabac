#include "utils.h"

UChar _read_byte(volatile UChar* bStream, bstream_t& state){
	UChar retVal;
	retVal = bStream[state.currIdx];
	state.currIdx += 1;
	return retVal;
}

UInt bitStream_read_bits(volatile UChar* bStream, UChar numBits, bstream_t& state) {
	UInt retVal = 0;

	if(numBits <= state.n_bits_held) {
		retVal = state.held_aligned_word >> (state.n_bits_held - numBits);
		retVal &= ~(0xff << numBits);                           // Mask after reading
		state.n_bits_held -= numBits;
		return retVal;
	}



	numBits -= state.n_bits_held;
	retVal = state.held_aligned_word & ~(0xff << state.n_bits_held);
	retVal <<= numBits;

	UInt aligned_word = 0;
	UInt numBytes = (numBits -1) >> 3;

	switch (numBytes) {
		case 3:
			aligned_word = _read_byte(bStream, state) << 24;
		case 2:
			aligned_word |= _read_byte(bStream, state) << 16;
		case 1:
			aligned_word |= _read_byte(bStream, state) << 8;
		case 0:
			aligned_word |= _read_byte(bStream, state) ;
	}

	UInt next_n_held_bits = (32- numBits) % 8;

	retVal |= (aligned_word >> next_n_held_bits);
	state.n_bits_held = next_n_held_bits;
	state.held_aligned_word = aligned_word;

	return retVal;
}

void get_scanIdx(TU_t& tu, internal_data_t& dint, UChar cIdx, UChar& scanIdx){
	scanIdx = 0;
	UChar predModeIntra;
	if(tu.log2TrafoSize==2 || (tu.log2TrafoSize==3 && cIdx==0)){
		if(cIdx==0){
			predModeIntra = dint.IntraPredModeY[tu.x][tu.y];
		} else {
			predModeIntra = dint.IntraPredModeC[tu.x][tu.y];
		}

		if((6<=predModeIntra) && (predModeIntra <= 14)){
			scanIdx = 2;											// Vertical Scan
		} else if ((22<=predModeIntra) && (predModeIntra <= 30)){
			scanIdx=1;												// Horizontal Scan
		} else {
			scanIdx = 0;											// Up right scan
		}
	} else {
		scanIdx = 0;
	}
}

void up_right_diagonal_scan(UChar blkSize, UChar diagScan[64][2]) {
    int i = 0;
    int x = 0;
    int y = 0;

    bool stopLoop = false;
    while (!stopLoop) {
        while (y >= 0) {
            if (x < blkSize && y < blkSize) {
                diagScan[i][0] = x;
                diagScan[i][1] = y;
                i++;
            }
            y--;
            x++;
        }
        y = x;
        x = 0;
        if (i >= blkSize * blkSize) {
            stopLoop = true;
        }
    }
	for(int i=blkSize*blkSize; i<64; i++){
		diagScan[i][0] = 0;
		diagScan[i][1] = 0;
	}
}

void horizontal_scan(UChar blkSize, UChar horScan[64][2]) {
    int i = 0;
    for (int y = 0; y < blkSize; y++) {
        for (int x = 0; x < blkSize; x++) {
            horScan[i][0] = x;
            horScan[i][1] = y;
            i++;
        }
    }
	for(int i=blkSize*blkSize; i<64; i++){
		horScan[i][0] = 0;
		horScan[i][1] = 0;
	}
}

void vertical_scan(UChar blkSize, UChar verScan[64][2]) {
    int i = 0;
    for (int x = 0; x < blkSize; x++) {
        for (int y = 0; y < blkSize; y++) {
            verScan[i][0] = x;
            verScan[i][1] = y;
            i++;
        }
    }
	for(int i=blkSize*blkSize; i<64; i++){
		verScan[i][0] = 0;
		verScan[i][1] = 0;
	}
}


