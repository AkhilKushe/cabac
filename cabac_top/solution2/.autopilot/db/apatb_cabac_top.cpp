#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_ctx "../tv/cdatafile/c.cabac_top.autotvin_ctx.dat"
#define AUTOTB_TVOUT_ctx "../tv/cdatafile/c.cabac_top.autotvout_ctx.dat"
// wrapc file define:
#define AUTOTB_TVIN_globalCtx "../tv/cdatafile/c.cabac_top.autotvin_globalCtx.dat"
#define AUTOTB_TVOUT_globalCtx "../tv/cdatafile/c.cabac_top.autotvout_globalCtx.dat"
// wrapc file define:
#define AUTOTB_TVIN_bitStream "../tv/cdatafile/c.cabac_top.autotvin_bitStream.dat"
#define AUTOTB_TVOUT_bitStream "../tv/cdatafile/c.cabac_top.autotvout_bitStream.dat"
#define WRAPC_STREAM_SIZE_IN_bitStream "../tv/stream_size/stream_size_in_bitStream.dat"
#define WRAPC_STREAM_INGRESS_STATUS_bitStream "../tv/stream_size/stream_ingress_status_bitStream.dat"
// wrapc file define:
#define AUTOTB_TVIN_bitOut "../tv/cdatafile/c.cabac_top.autotvin_bitOut.dat"
#define AUTOTB_TVOUT_bitOut "../tv/cdatafile/c.cabac_top.autotvout_bitOut.dat"
#define WRAPC_STREAM_SIZE_OUT_bitOut "../tv/stream_size/stream_size_out_bitOut.dat"
#define WRAPC_STREAM_EGRESS_STATUS_bitOut "../tv/stream_size/stream_egress_status_bitOut.dat"
// wrapc file define:
#define AUTOTB_TVIN_initd "../tv/cdatafile/c.cabac_top.autotvin_initd.dat"
#define AUTOTB_TVOUT_initd "../tv/cdatafile/c.cabac_top.autotvout_initd.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_ctx "../tv/rtldatafile/rtl.cabac_top.autotvout_ctx.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_globalCtx "../tv/rtldatafile/rtl.cabac_top.autotvout_globalCtx.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_bitStream "../tv/rtldatafile/rtl.cabac_top.autotvout_bitStream.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_bitOut "../tv/rtldatafile/rtl.cabac_top.autotvout_bitOut.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_initd "../tv/rtldatafile/rtl.cabac_top.autotvout_initd.dat"


inline void rev_endian(char* p, size_t nbytes)
{
  std::reverse(p, p+nbytes);
}

template<size_t bit_width>
struct transaction {
  typedef uint64_t depth_t;
  static const size_t wbytes = (bit_width+7)>>3;
  static const size_t dbytes = sizeof(depth_t);
  const depth_t depth;
  const size_t vbytes;
  const size_t tbytes;
  char * const p;
  typedef char (*p_dat)[wbytes];
  p_dat vp;

  void reorder() {
    rev_endian(p, dbytes);
    p_dat vp = (p_dat) (p+dbytes);
    for (depth_t i = 0; i < depth; ++i) {
      rev_endian(vp[i], wbytes);
    }
  }

  transaction(depth_t depth)
    : depth(depth), vbytes(wbytes*depth), tbytes(dbytes+vbytes),
      p(new char[tbytes]) {
    *(depth_t*)p = depth;
    vp = (p_dat) (p+dbytes);
  }

  template<size_t psize>
  void import(char* param, depth_t num, int64_t offset) {
    param -= offset*psize;
    for (depth_t i = 0; i < num; ++i) {
      memcpy(vp[i], param, wbytes);
      param += psize;
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[i], wbytes);
      param += psize;
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num, int64_t skip) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[skip+i], wbytes);
      param += psize;
    }
  }

  ~transaction() { if (p) { delete[] p; } }
};
      

inline const std::string begin_str(int num)
{
  return std::string("[[transaction]] ")
         .append(std::to_string(num))
         .append("\n");
}

inline const std::string end_str()
{
  return std::string("[[/transaction]] \n");
}
      
class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  ctx_depth = 0;
  globalCtx_depth = 0;
  bitStream_depth = 0;
  bitOut_depth = 0;
  initd_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{ctx " << ctx_depth << "}\n";
  total_list << "{globalCtx " << globalCtx_depth << "}\n";
  total_list << "{bitStream " << bitStream_depth << "}\n";
  total_list << "{bitOut " << bitOut_depth << "}\n";
  total_list << "{initd " << initd_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int ctx_depth;
    int globalCtx_depth;
    int bitStream_depth;
    int bitOut_depth;
    int initd_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static bool RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool err = false;
  size_t x_found;

  // search and replace 'X' with '0' from the 3rd char of token
  while ((x_found = AESL_token.find('X', 0)) != string::npos)
    err = true, AESL_token.replace(x_found, 1, "0");
  
  // search and replace 'x' with '0' from the 3rd char of token
  while ((x_found = AESL_token.find('x', 2)) != string::npos)
    err = true, AESL_token.replace(x_found, 1, "0");
  
  return err;}
struct __cosim_s10__ { char data[16]; };
extern "C" void cabac_top_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, __cosim_s10__*);

extern "C" void apatb_cabac_top_hw(volatile void * __xlx_apatb_param_globalCtx, volatile void * __xlx_apatb_param_bitStream, volatile void * __xlx_apatb_param_bitOut, __cosim_s10__* __xlx_apatb_param_initd) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
static AESL_FILE_HANDLER aesl_fh;
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;
#ifdef USE_BINARY_TV_FILE
{
transaction<8> tr(512);
aesl_fh.read(AUTOTB_TVOUT_PC_ctx, tr.p, tr.tbytes);
tr.reorder();
tr.send<1>((char*)__xlx_apatb_param_globalCtx, 512);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_ctx);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<8> > ctx_pc_buffer(512);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "ctx");
  
            // push token into output port buffer
            if (AESL_token != "") {
              ctx_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "ctx" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 512; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_globalCtx)[j*1+0] = ctx_pc_buffer[i].range(7, 0).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
long __xlx_apatb_param_bitStream_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_bitStream);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_bitStream_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_bitStream_stream_buf_final_size; ++i)((hls::stream<char>*)__xlx_apatb_param_bitStream)->read();
long __xlx_apatb_param_bitOut_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_bitOut);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_bitOut_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_bitOut);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > bitOut_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "bitOut");
  
            // push token into output port buffer
            if (AESL_token != "") {
              bitOut_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "bitOut" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
int xlx_stream_elt;
((char*)&xlx_stream_elt)[0*4+0] = bitOut_pc_buffer[j].range(7, 0).to_int64();
((char*)&xlx_stream_elt)[0*4+1] = bitOut_pc_buffer[j].range(15, 8).to_int64();
((char*)&xlx_stream_elt)[0*4+2] = bitOut_pc_buffer[j].range(23, 16).to_int64();
((char*)&xlx_stream_elt)[0*4+3] = bitOut_pc_buffer[j].range(31, 24).to_int64();
((hls::stream<int>*)__xlx_apatb_param_bitOut)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_bitStream);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_bitStream);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_bitOut);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_bitOut);
CodeState = DUMP_INPUTS;
unsigned __xlx_offset_byte_param_globalCtx = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_ctx, 'b');
transaction<8> tr(512);
  __xlx_offset_byte_param_globalCtx = 0*1;
  if (__xlx_apatb_param_globalCtx) {
tr.import<1>((char*)__xlx_apatb_param_globalCtx, 512, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_ctx, tr.p, tr.tbytes);
}

  tcl_file.set_num(512, &tcl_file.ctx_depth);
#else
// print ctx Transactions
{
aesl_fh.write(AUTOTB_TVIN_ctx, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_globalCtx = 0*1;
  if (__xlx_apatb_param_globalCtx) {
    for (int j = 0  - 0, e = 512 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_globalCtx)[j];
aesl_fh.write(AUTOTB_TVIN_ctx, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(512, &tcl_file.ctx_depth);
aesl_fh.write(AUTOTB_TVIN_ctx, end_str());
}

#endif
// print globalCtx Transactions
{
aesl_fh.write(AUTOTB_TVIN_globalCtx, begin_str(AESL_transaction));
{
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_globalCtx;
aesl_fh.write(AUTOTB_TVIN_globalCtx, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.globalCtx_depth);
aesl_fh.write(AUTOTB_TVIN_globalCtx, end_str());
}

std::vector<char> __xlx_apatb_param_bitStream_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_bitStream)->empty())
    __xlx_apatb_param_bitStream_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_bitStream)->read());
  for (int i = 0; i < __xlx_apatb_param_bitStream_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_bitStream)->write(__xlx_apatb_param_bitStream_stream_buf[i]);
  }
long __xlx_apatb_param_bitStream_stream_buf_size = ((hls::stream<char>*)__xlx_apatb_param_bitStream)->size();
std::vector<int> __xlx_apatb_param_bitOut_stream_buf;
long __xlx_apatb_param_bitOut_stream_buf_size = ((hls::stream<int>*)__xlx_apatb_param_bitOut)->size();
// print initd Transactions
{
aesl_fh.write(AUTOTB_TVIN_initd, begin_str(AESL_transaction));
{
    sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_initd)[0*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_initd)[0*2+1];
aesl_fh.write(AUTOTB_TVIN_initd, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.initd_depth);
aesl_fh.write(AUTOTB_TVIN_initd, end_str());
}

CodeState = CALL_C_DUT;
cabac_top_hw_stub_wrapper(__xlx_apatb_param_globalCtx, __xlx_apatb_param_bitStream, __xlx_apatb_param_bitOut, __xlx_apatb_param_initd);
CodeState = DUMP_OUTPUTS;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_ctx, 'b');
transaction<8> tr(512);
  __xlx_offset_byte_param_globalCtx = 0*1;
  if (__xlx_apatb_param_globalCtx) {
tr.import<1>((char*)__xlx_apatb_param_globalCtx, 512, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_ctx, tr.p, tr.tbytes);
}

  tcl_file.set_num(512, &tcl_file.ctx_depth);
#else
// print ctx Transactions
{
aesl_fh.write(AUTOTB_TVOUT_ctx, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_globalCtx = 0*1;
  if (__xlx_apatb_param_globalCtx) {
    for (int j = 0  - 0, e = 512 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_globalCtx)[j];
aesl_fh.write(AUTOTB_TVOUT_ctx, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(512, &tcl_file.ctx_depth);
aesl_fh.write(AUTOTB_TVOUT_ctx, end_str());
}

#endif
long __xlx_apatb_param_bitStream_stream_buf_final_size = __xlx_apatb_param_bitStream_stream_buf_size - ((hls::stream<char>*)__xlx_apatb_param_bitStream)->size();
// print bitStream Transactions
{
aesl_fh.write(AUTOTB_TVIN_bitStream, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_bitStream_stream_buf_final_size; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv_hw;
sc_bv<8> __xlx_tmp_lv;
__xlx_tmp_lv = ((char*)&__xlx_apatb_param_bitStream_stream_buf[j])[0];
__xlx_tmp_lv_hw = __xlx_tmp_lv;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv_hw.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_bitStream, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_bitStream_stream_buf_final_size, &tcl_file.bitStream_depth);
aesl_fh.write(AUTOTB_TVIN_bitStream, end_str());
}


// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_bitStream, begin_str(AESL_transaction));
if (__xlx_apatb_param_bitStream_stream_buf_final_size > 0) {
  long bitStream_stream_ingress_size = __xlx_apatb_param_bitStream_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", bitStream_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_bitStream, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_bitStream_stream_buf_final_size; j != e; j++) {
    bitStream_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", bitStream_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_bitStream, __xlx_sprintf_buffer.data());
  }
} else {
  long bitStream_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", bitStream_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_bitStream, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_bitStream, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_bitStream, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_bitStream_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_bitStream, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_bitStream, end_str());
}
long __xlx_apatb_param_bitOut_stream_buf_final_size = ((hls::stream<int>*)__xlx_apatb_param_bitOut)->size() - __xlx_apatb_param_bitOut_stream_buf_size;
{
  while (!((hls::stream<int>*)__xlx_apatb_param_bitOut)->empty())
    __xlx_apatb_param_bitOut_stream_buf.push_back(((hls::stream<int>*)__xlx_apatb_param_bitOut)->read());
  for (int i = 0; i < __xlx_apatb_param_bitOut_stream_buf.size(); ++i)
    ((hls::stream<int>*)__xlx_apatb_param_bitOut)->write(__xlx_apatb_param_bitOut_stream_buf[i]);
  }
// print bitOut Transactions
{
aesl_fh.write(AUTOTB_TVOUT_bitOut, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_bitOut_stream_buf_final_size; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)&__xlx_apatb_param_bitOut_stream_buf[__xlx_apatb_param_bitOut_stream_buf_size+j])[0];
aesl_fh.write(AUTOTB_TVOUT_bitOut, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}

  tcl_file.set_num(__xlx_apatb_param_bitOut_stream_buf_final_size, &tcl_file.bitOut_depth);
aesl_fh.write(AUTOTB_TVOUT_bitOut, end_str());
}

{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_bitOut, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_bitOut_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_bitOut, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_bitOut, end_str());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
