#ifndef __QUAD_TREE_H__
#define __QUAD_TREE_H__
#include "typedef.h"

// INTRA coding SE
#define SPLIT_FLAG_CTX_ADDR 2
void parseSplitCuFlag(data_in_t& din, data_out_t& dout, internal_data_t& dinternal, arith_t& state, UChar* bStream, UChar ctxTables[MAX_NUM_CTX_MOD], UInt& symbolVal);
void setCqtDepth(data_in_t& din, data_out_t& dout, internal_data_t& dinternal, UInt& symbolVal, UChar cqtDepth);

void coding_quadtree(data_in_t& din, data_out_t& dout, internal_data_t& dinternal, arith_t& state, UChar* bStream, UChar ctxTables[MAX_NUM_CTX_MOD]);
void coding_unit_rec(uint16_t ctu_idx, data_in_t& din, data_out_t& dout, internal_data_t& dinternal, arith_t& state, UChar* bStream, UChar ctxTables[MAX_NUM_CTX_MOD]);
void coding_uint(CU_t& cu, data_in_t& din, data_out_t& dout, internal_data_t& dinternal, arith_t& state, UChar* bStream, UChar ctxTables[MAX_NUM_CTX_MOD]);


#endif

