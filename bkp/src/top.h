#ifndef __TOP_H__
#define __TOP_H__
#include "typedef.h"
#include <hls_stream.h>


void cabac_top(volatile UChar globalCtx[MAX_NUM_CTX_MOD], hls::stream<UChar>& bitStream, hls::stream<UInt>& bitOut,  initData_t initd, hls::stream<saoIn_t>& saoIn, hls::stream<saoOut_t>& saoOut);

#endif
