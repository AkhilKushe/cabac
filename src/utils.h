#ifndef __UTILS_H__
#define __UTILS_H__

#include "typedef.h"

template <typename T=int>
inline T max (const T a, const T b) {
	if(a > b) return a;
	return b;
}

template <typename T=int>
inline T min (const T a, const T b) {
	if(a < b) return a;
	return b;
}


template <typename T=int>
inline T Clip3 (const T minVal, const T maxVal, const T a) {
	return min<T>(max<T>(minVal, a) , maxVal);
}  ///< general min/max clip

UChar _read_byte(volatile UChar* bStream, bstream_t& state);

UInt bitStream_read_bits(volatile UChar* bStream, UChar numBits, bstream_t& state);

void pattern_generator(uint16_t& cuIdx, UChar& depth, bool split_flag, bool& end_of_ctu);

#endif
