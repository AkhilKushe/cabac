#ifndef __TOP_H__
#define __TOP_H__
#include "typedef.h"
#include <hls_stream.h>


void cabac_top(volatile UChar globalCtx[MAX_NUM_CTX_MOD], hls::stream<int8_t>& tranCoeff, hls::stream<UChar, 128>& bitStream, hls::stream<UInt>& bitOut, hls::stream<data_in_t>& data_in_s, hls::stream<data_out_t>& data_out_s);
#endif
