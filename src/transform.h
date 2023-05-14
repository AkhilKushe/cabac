#ifndef __TRANSFORM_H__
#define __TRANSFORM_H__
#include "arith_dec.h"
#include "typedef.h"

#define CBF_CHROMA_CTX_ADDR 8
#define CBF_LUMA_CTX_ADDR 13
#define SPLIT_TRANSFORM_FLAG_CTX_ADDR 15
#define TRANSFORM_SKIP_FLAG_CTX_ADDR_0 18
#define TRANSFORM_SKIP_FLAG_CTX_ADDR_1 19

#define SIG_COEFF_X_PREFIX_CTX_ADDR 20
#define SIG_COEFF_Y_PREFIX_CTX_ADDR 38
#define CODED_SUB_BLOCK_FLAG_CTX_ADDR 56
#define SIG_COEFF_FLAG_CTX_ADDR 60
#define COEFF_ABS_G1_CTX_ADDR 104
#define COEFF_ABS_G2_CTX_ADDR 128

void parseCbfC(UChar trafoDepth, arith_t& state, UChar* bStream, UChar ctxTables[MAX_NUM_CTX_MOD], UInt& symbolVal);
void parseCbfLuma(UChar trafoDepth, arith_t& state, UChar* bStream, UChar ctxTables[MAX_NUM_CTX_MOD], UInt& symbolVal);
void parseSplitTransformFlag(UChar log2TrafoSize, arith_t& state, UChar* bStream, UChar ctxTables[MAX_NUM_CTX_MOD], UInt& symbolVal);
void parseSkipTransformFlag(UChar cIdx, arith_t& state, UChar* bStream, UChar ctxTables[MAX_NUM_CTX_MOD], UInt& symbolVal);
void parseSigCoeffXPrefix(UChar log2TrafoSize, UChar cIdx, arith_t& state, UChar* bStream, UChar ctxTables[MAX_NUM_CTX_MOD], UInt& symbolVal);
void parseSigCoeffYPrefix(UChar log2TrafoSize, UChar cIdx, arith_t& state, UChar* bStream, UChar ctxTables[MAX_NUM_CTX_MOD], UInt& symbolVal);
void parseSigCoeffSuffix(UInt prefix, arith_t& state, UChar* bStream, UChar ctxTables[MAX_NUM_CTX_MOD], UInt& symbolVal);

void parseSigCoeffFlag(UChar xC, UChar yC, UChar scanIdx, UChar coded_sub_block_xS_plus_1, UChar coded_sub_block_yS_plus_1, UChar log2TrafoSize, UChar cIdx, arith_t& state, UChar* bStream, UChar ctxTables[MAX_NUM_CTX_MOD], UInt& symbolVal);
void parseCoeffAbsLevelG1(bool lastCoeffOfSubBlock, UChar cIdx, TU_t& tu, arith_t& state, UChar* bStream, UChar ctxTables[MAX_NUM_CTX_MOD], UInt& symbolVal);
void parseCoeffAbsLevelG2(UChar cIdx, TU_t& tu, arith_t& state, UChar* bStream, UChar ctxTables[MAX_NUM_CTX_MOD], UInt& symbolVal);
void parseCoeffAbsRem(UChar baseLevel, TU_t& tu, arith_t& state, UChar* bStream, UChar ctxTables[MAX_NUM_CTX_MOD], UInt& symbolVal);
void parseCoeffSign(arith_t& state, UChar* bStream, UChar ctxTables[MAX_NUM_CTX_MOD], UInt& symbolVal);


#endif