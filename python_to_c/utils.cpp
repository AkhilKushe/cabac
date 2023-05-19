void pattern_generator(uint16_t& cuIdx, UChar& depth, bool split_flag, bool& end_of_ctu){
    int cuIdxm1 = cuIdx - 1;
    int cuIdxm5 = cuIdx - 5;
    int cuIdxm21 = cuIdx - 21;
    int end_of_rec = 0;

    if (split_flag) {
        // Go up
        depth += 1;
        cuIdx = (cuIdx * 4) + 1;
    } else {
        // Go down
        if (depth == 0) {
            end_of_rec = 1;
        } else if (depth == 1) {
            if ((cuIdxm1 & 3) == 3) {
                end_of_rec = 1;
                depth -= 1;
            } else {
                cuIdx += 1;
            }
        } else if (depth == 2) {
            if ((cuIdxm5 & 15) == 15) {
                end_of_rec = 1;
                depth -= 2;
            } else if ((cuIdxm5 & 3) == 3) {
                cuIdx = cuIdx / 4;
                depth -= 1;
            } else {
                cuIdx += 1;
            }
        } else if (depth == 3) {
            if ((cuIdxm21 & 63) == 63) {
                end_of_rec = 1;
                depth -= 3;
            } else if ((cuIdxm21 & 15) == 15) {
                cuIdx = (cuIdxm21 / 16) + 2;
                depth -= 2;
            } else if ((cuIdxm21 & 3) == 3) {
                cuIdx = (cuIdxm21 / 4) + 6;
                depth -= 1;
            } else {
                cuIdx += 1;
            }
        }
    }
}

typedef struct _macros {
	UChar PicWidthInCtbsY;
	UChar CtbLog2SizeY;
	UChar Log2MaxTransformSkipSize;
	UChar MinCbLog2SizeY;
	UChar MaxTbLog2SizeY;
} macros_t;

typedef struct _internal_data {
	//Intra PU
	UChar IntraPredModeY[64][64];
	UChar IntraPredModeC[64][64];

	//Transform Unit
	int8_t TransCoeffLevel_0[64][64];
	int8_t TransCoeffLevel_1[64][64];
	int8_t TransCoeffLevel_2[64][64];

	bool split_transform_flag[64][64];

	char cqtDepth[64][64];

	macros_t macro;

} internal_data_t;


// Take macros as input
void init_buffer_int(data_in_t& din, internal_data_t& dint){
	for(int i=0; i<64; i++){
		for(int j=0; j<64; j++){
			dint.IntraPredModeC[i][j] = 0;
			dint.IntraPredModeY[i][j] = 0;
			dint.TransCoeffLevel_0[i][j] = 0;
			dint.TransCoeffLevel_1[i][j] = 0;
			dint.TransCoeffLevel_2[i][j] = 0;
			dint.split_transform_flag[i][j] = 0;
			dint.cqtDepth[i][j] = 0;
		}
	}
}


// Check optimization of cbf flags -> can be reduced to [2] => [0:current_depth|1:prev depth]
// Test and backup python code

