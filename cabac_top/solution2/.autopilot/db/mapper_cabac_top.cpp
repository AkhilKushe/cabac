#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
unsigned int ap_apatb_bitStream_cap_bc;
static AESL_RUNTIME_BC __xlx_bitStream_V_size_Reader("../tv/stream_size/stream_size_in_bitStream.dat");
unsigned int ap_apatb_bitOut_cap_bc;
static AESL_RUNTIME_BC __xlx_bitOut_V_size_Reader("../tv/stream_size/stream_size_out_bitOut.dat");
struct __cosim_s10__ { char data[16]; };
extern "C" void cabac_top(char*, int, char*, int*, __cosim_s10__*);
extern "C" void apatb_cabac_top_hw(volatile void * __xlx_apatb_param_globalCtx, volatile void * __xlx_apatb_param_bitStream, volatile void * __xlx_apatb_param_bitOut, __cosim_s10__* __xlx_apatb_param_initd) {
  // Collect __xlx_globalCtx__tmp_vec
  vector<sc_bv<8> >__xlx_globalCtx__tmp_vec;
  for (int j = 0, e = 512; j != e; ++j) {
    __xlx_globalCtx__tmp_vec.push_back(((char*)__xlx_apatb_param_globalCtx)[j]);
  }
  int __xlx_size_param_globalCtx = 512;
  int __xlx_offset_param_globalCtx = 0;
  int __xlx_offset_byte_param_globalCtx = 0*1;
  char* __xlx_globalCtx__input_buffer= new char[__xlx_globalCtx__tmp_vec.size()];
  for (int i = 0; i < __xlx_globalCtx__tmp_vec.size(); ++i) {
    __xlx_globalCtx__input_buffer[i] = __xlx_globalCtx__tmp_vec[i].range(7, 0).to_uint64();
  }
  // collect __xlx_bitStream_tmp_vec
  unsigned __xlx_bitStream_V_tmp_Count = 0;
  unsigned __xlx_bitStream_V_read_Size = __xlx_bitStream_V_size_Reader.read_size();
  vector<char> __xlx_bitStream_tmp_vec;
  while (!((hls::stream<char>*)__xlx_apatb_param_bitStream)->empty() && __xlx_bitStream_V_tmp_Count < __xlx_bitStream_V_read_Size) {
    __xlx_bitStream_tmp_vec.push_back(((hls::stream<char>*)__xlx_apatb_param_bitStream)->read());
    __xlx_bitStream_V_tmp_Count++;
  }
  ap_apatb_bitStream_cap_bc = __xlx_bitStream_tmp_vec.size();
  // store input buffer
  char* __xlx_bitStream_input_buffer= new char[__xlx_bitStream_tmp_vec.size()];
  for (int i = 0; i < __xlx_bitStream_tmp_vec.size(); ++i) {
    __xlx_bitStream_input_buffer[i] = __xlx_bitStream_tmp_vec[i];
  }
  //Create input buffer for bitOut
  ap_apatb_bitOut_cap_bc = __xlx_bitOut_V_size_Reader.read_size();
  int* __xlx_bitOut_input_buffer= new int[ap_apatb_bitOut_cap_bc];
  // DUT call
  cabac_top(__xlx_globalCtx__input_buffer, __xlx_offset_byte_param_globalCtx, __xlx_bitStream_input_buffer, __xlx_bitOut_input_buffer, __xlx_apatb_param_initd);
// print __xlx_apatb_param_globalCtx
  sc_bv<8>*__xlx_globalCtx_output_buffer = new sc_bv<8>[__xlx_size_param_globalCtx];
  for (int i = 0; i < __xlx_size_param_globalCtx; ++i) {
    __xlx_globalCtx_output_buffer[i] = __xlx_globalCtx__input_buffer[i+__xlx_offset_param_globalCtx];
  }
  for (int i = 0; i < __xlx_size_param_globalCtx; ++i) {
    ((char*)__xlx_apatb_param_globalCtx)[i] = __xlx_globalCtx_output_buffer[i].to_uint();
  }
  for (unsigned i = 0; i <ap_apatb_bitOut_cap_bc; ++i)
    ((hls::stream<int>*)__xlx_apatb_param_bitOut)->write(__xlx_bitOut_input_buffer[i]);
}
