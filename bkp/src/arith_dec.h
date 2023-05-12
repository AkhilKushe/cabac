#ifndef __ARITH_DEC_H__
#define __ARITH_DEC_H__
#include "typedef.h"


class ArithDec {
public:
	void init(UChar* bStream, arith_t& state);

	UChar ctxLoad(UChar ctxTables[MAX_NUM_CTX_MOD], UInt ctxAddr);
	void ctxUpdate(UChar ctxTables[MAX_NUM_CTX_MOD], UInt ctxAddr, bool isMPS);

	void decode_regular(arith_t& state, bool& binVal, UChar* bStream, UInt ctxAddr, UChar ctxTables[MAX_NUM_CTX_MOD]);
	void decode_bypass(arith_t& state, bool& binVal, UChar* bStream);
	void decode_terminate(arith_t& state, bool& binVal, UChar* bStream);

};

void decode_decision(bool init, BAEMode mode, arith_t& state, bool& binVal, UChar* bStream, UInt ctxAddr, UChar ctxTables[MAX_NUM_CTX_MOD]);

#endif
