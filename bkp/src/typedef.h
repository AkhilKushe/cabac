#ifndef __TYPEDEF_H__
#define __TYPEDEF_H__
#include <stdint.h>
#include <ap_int.h>

// Defines
#define MAX_NUM_CTX_MOD             512       ///< maximum number of supported contexts


// Enumerations
enum SliceType
{
  B_SLICE               = 0,
  P_SLICE               = 1,
  I_SLICE               = 2,
  NUMBER_OF_SLICE_TYPES = 3
};

enum ChannelType
{
  CHANNEL_TYPE_LUMA    = 0,
  CHANNEL_TYPE_CHROMA  = 1,
  MAX_NUM_CHANNEL_TYPE = 2
};

enum ComponentID
{
  COMPONENT_Y       = 0,
  COMPONENT_Cb      = 1,
  COMPONENT_Cr      = 2,
  MAX_NUM_COMPONENT = 3
};

enum BAEMode
{
	REGULAR = 0,
	BYPASS = 1,
	TERMINATE = 3
};

// Data Types
typedef uint8_t UChar;
typedef uint32_t UInt;

typedef struct _bstream_t {
	UInt currIdx;
	UChar n_bits_held;
	UChar held_aligned_word;
} bstream_t;

typedef struct _arith_t {
	ap_uint<32> ivlCurrRange;
	ap_uint<32> ivlOffset;
	bstream_t bstate;
} arith_t;

typedef struct _initData_t {
	bool firstSlice;
	SliceType sType;
	int qp;
	bool cabac_init_flag;
}initData_t;

typedef struct _saoOut_t {
	int sao_merge_left_flag;
	int sao_merge_up_flag;
	int sao_type_idx_luma;
	int sao_type_idx_chroma;

	int sao_offset_abs[3][4];
	int sao_offset_sign[3][4];

	int sao_band_position[3];
	int sao_eo_class_luma;
	int sao_eo_class_chroma;
}saoOut_t;

typedef struct _saoIn_t {
	bool sao_merge_left_flag_available;
	bool sao_merge_up_flag_available;
	int ChromaArrayType;
	bool slice_sao_luma_flag;
	bool slice_sao_chroma_flag;
	int SaoTypeIdx[3];
}saoIn_t;

#endif
