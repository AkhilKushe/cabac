#ifndef __DEBIN_H__
#define __DEBIN_H__
#include "typedef.h"

#define SAO_TYPE_IDX_CTX_ADDR	1
#define SAO_MERGE_FLAG_CTX_ADDR	1

void parseSAOTypeIdx(bool init, arith_t& state, UChar* bStream, UChar ctxTables[MAX_NUM_CTX_MOD], UInt& symbolVal);
void parseSAOMergeFlag(bool init, arith_t& state, UChar* bStream, UChar ctxTables[MAX_NUM_CTX_MOD], UInt& symbolVal);
void parseSAOOffsetAbs(bool init, arith_t& state, UChar* bStream, UInt& symbolVal);
void parseSAOOffsetSign(bool init, arith_t& state, UChar* bStream, UInt& symbolVal);
void parseSAOEO(bool init, arith_t& state, UChar* bStream, UInt& symbolVal);
void parseSAOBO(bool init, arith_t& state, UChar* bStream, UInt& symbolVal);

bool componentID(int clIdx);

void sao_top(saoIn_t& sao_in, saoOut_t& sao_out, bool init, arith_t& state, UChar* bStream, UChar ctxTables[MAX_NUM_CTX_MOD]);

#endif
