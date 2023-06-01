#ifndef __TOP_H__
#define __TOP_H__
#include "typedef.h"
#include <hls_stream.h>


void cabac_top(volatile UChar globalCtx[MAX_NUM_CTX_MOD], volatile int8_t tranCoeff[64][64], volatile UChar bitStream[1024], hls::stream<data_in_t>& data_in_s, hls::stream<data_out_t>& data_out_s);
#endif
