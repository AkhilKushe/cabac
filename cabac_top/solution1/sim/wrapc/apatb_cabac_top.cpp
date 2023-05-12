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
// wrapc file define:
#define AUTOTB_TVIN_data_in_s "../tv/cdatafile/c.cabac_top.autotvin_data_in_s.dat"
#define AUTOTB_TVOUT_data_in_s "../tv/cdatafile/c.cabac_top.autotvout_data_in_s.dat"
#define WRAPC_STREAM_SIZE_IN_data_in_s "../tv/stream_size/stream_size_in_data_in_s.dat"
#define WRAPC_STREAM_INGRESS_STATUS_data_in_s "../tv/stream_size/stream_ingress_status_data_in_s.dat"
// wrapc file define:
#define AUTOTB_TVIN_data_out_s "../tv/cdatafile/c.cabac_top.autotvin_data_out_s.dat"
#define AUTOTB_TVOUT_data_out_s "../tv/cdatafile/c.cabac_top.autotvout_data_out_s.dat"
#define WRAPC_STREAM_SIZE_OUT_data_out_s "../tv/stream_size/stream_size_out_data_out_s.dat"
#define WRAPC_STREAM_EGRESS_STATUS_data_out_s "../tv/stream_size/stream_egress_status_data_out_s.dat"

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
#define AUTOTB_TVOUT_PC_data_in_s "../tv/rtldatafile/rtl.cabac_top.autotvout_data_in_s.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_data_out_s "../tv/rtldatafile/rtl.cabac_top.autotvout_data_out_s.dat"


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
  data_in_s_depth = 0;
  data_out_s_depth = 0;
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
  total_list << "{data_in_s " << data_in_s_depth << "}\n";
  total_list << "{data_out_s " << data_out_s_depth << "}\n";
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
    int data_in_s_depth;
    int data_out_s_depth;
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
struct __cosim_s1__ { char data[1]; };
struct __cosim_s200__ { char data[512]; };
struct __cosim_s2A__ { char data[42]; };
extern "C" void cabac_top_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);

extern "C" void apatb_cabac_top_hw(volatile void * __xlx_apatb_param_globalCtx, volatile void * __xlx_apatb_param_bitStream, volatile void * __xlx_apatb_param_bitOut, volatile void * __xlx_apatb_param_data_in_s, volatile void * __xlx_apatb_param_data_out_s) {
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
  for (long i = 0; i < __xlx_apatb_param_bitStream_stream_buf_final_size; ++i)((hls::stream<__cosim_s1__>*)__xlx_apatb_param_bitStream)->read();
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
          std::vector<sc_bv<8> > bitOut_pc_buffer;
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
  
          if (i > 0) {{
		    int i = 0;
            for (int j = 0, e = 0; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_bitOut)[j*0+0] = bitOut_pc_buffer[i].range(7, 0).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  long __xlx_apatb_param_data_in_s_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_data_in_s);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_data_in_s_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_data_in_s_stream_buf_final_size; ++i)((hls::stream<__cosim_s200__>*)__xlx_apatb_param_data_in_s)->read();
long __xlx_apatb_param_data_out_s_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_data_out_s);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_data_out_s_stream_buf_final_size = atoi(AESL_token.c_str());

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
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_data_out_s);
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
          std::vector<sc_bv<336> > data_out_s_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "data_out_s");
  
            // push token into output port buffer
            if (AESL_token != "") {
              data_out_s_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "data_out_s" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_s2A__ xlx_stream_elt;
((long long*)&xlx_stream_elt)[0*5+0] = data_out_s_pc_buffer[j].range(63,0).to_int64();
((long long*)&xlx_stream_elt)[0*5+1] = data_out_s_pc_buffer[j].range(127,64).to_int64();
((long long*)&xlx_stream_elt)[0*5+2] = data_out_s_pc_buffer[j].range(191,128).to_int64();
((long long*)&xlx_stream_elt)[0*5+3] = data_out_s_pc_buffer[j].range(255,192).to_int64();
((long long*)&xlx_stream_elt)[0*5+4] = data_out_s_pc_buffer[j].range(319,256).to_int64();
((long long*)&xlx_stream_elt)[0*5+5] = data_out_s_pc_buffer[j].range(335,320).to_int64();
((hls::stream<__cosim_s2A__>*)__xlx_apatb_param_data_out_s)->write(xlx_stream_elt);
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
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_data_in_s);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_data_in_s);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_data_out_s);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_data_out_s);
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

std::vector<__cosim_s1__> __xlx_apatb_param_bitStream_stream_buf;
{
  while (!((hls::stream<__cosim_s1__>*)__xlx_apatb_param_bitStream)->empty())
    __xlx_apatb_param_bitStream_stream_buf.push_back(((hls::stream<__cosim_s1__>*)__xlx_apatb_param_bitStream)->read());
  for (int i = 0; i < __xlx_apatb_param_bitStream_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_bitStream)->write(__xlx_apatb_param_bitStream_stream_buf[i]);
  }
long __xlx_apatb_param_bitStream_stream_buf_size = ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_bitStream)->size();
// print bitOut Transactions
{
aesl_fh.write(AUTOTB_TVIN_bitOut, begin_str(AESL_transaction));
  if (__xlx_apatb_param_bitOut) {
    for (int j = 0  - 0, e = 0 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_bitOut)[j];
aesl_fh.write(AUTOTB_TVIN_bitOut, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }

  tcl_file.set_num(0, &tcl_file.bitOut_depth);
aesl_fh.write(AUTOTB_TVIN_bitOut, end_str());
}

std::vector<__cosim_s200__> __xlx_apatb_param_data_in_s_stream_buf;
{
  while (!((hls::stream<__cosim_s200__>*)__xlx_apatb_param_data_in_s)->empty())
    __xlx_apatb_param_data_in_s_stream_buf.push_back(((hls::stream<__cosim_s200__>*)__xlx_apatb_param_data_in_s)->read());
  for (int i = 0; i < __xlx_apatb_param_data_in_s_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s200__>*)__xlx_apatb_param_data_in_s)->write(__xlx_apatb_param_data_in_s_stream_buf[i]);
  }
long __xlx_apatb_param_data_in_s_stream_buf_size = ((hls::stream<__cosim_s200__>*)__xlx_apatb_param_data_in_s)->size();
std::vector<__cosim_s2A__> __xlx_apatb_param_data_out_s_stream_buf;
long __xlx_apatb_param_data_out_s_stream_buf_size = ((hls::stream<__cosim_s2A__>*)__xlx_apatb_param_data_out_s)->size();
CodeState = CALL_C_DUT;
cabac_top_hw_stub_wrapper(__xlx_apatb_param_globalCtx, __xlx_apatb_param_bitStream, __xlx_apatb_param_bitOut, __xlx_apatb_param_data_in_s, __xlx_apatb_param_data_out_s);
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
long __xlx_apatb_param_bitStream_stream_buf_final_size = __xlx_apatb_param_bitStream_stream_buf_size - ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_bitStream)->size();
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
// print bitOut Transactions
{
aesl_fh.write(AUTOTB_TVOUT_bitOut, begin_str(AESL_transaction));
  if (__xlx_apatb_param_bitOut) {
    for (int j = 0  - 0, e = 0 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_bitOut)[j];
aesl_fh.write(AUTOTB_TVOUT_bitOut, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }

  tcl_file.set_num(0, &tcl_file.bitOut_depth);
aesl_fh.write(AUTOTB_TVOUT_bitOut, end_str());
}

long __xlx_apatb_param_data_in_s_stream_buf_final_size = __xlx_apatb_param_data_in_s_stream_buf_size - ((hls::stream<__cosim_s200__>*)__xlx_apatb_param_data_in_s)->size();
// print data_in_s Transactions
{
aesl_fh.write(AUTOTB_TVIN_data_in_s, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_data_in_s_stream_buf_final_size; j != e; ++j) {
sc_bv<4096> __xlx_tmp_lv_hw;
sc_bv<4096> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+3];
__xlx_tmp_lv.range(319,256) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+4];
__xlx_tmp_lv.range(383,320) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+5];
__xlx_tmp_lv.range(447,384) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+6];
__xlx_tmp_lv.range(511,448) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+7];
__xlx_tmp_lv.range(575,512) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+8];
__xlx_tmp_lv.range(639,576) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+9];
__xlx_tmp_lv.range(703,640) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+10];
__xlx_tmp_lv.range(767,704) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+11];
__xlx_tmp_lv.range(831,768) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+12];
__xlx_tmp_lv.range(895,832) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+13];
__xlx_tmp_lv.range(959,896) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+14];
__xlx_tmp_lv.range(1023,960) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+15];
__xlx_tmp_lv.range(1087,1024) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+16];
__xlx_tmp_lv.range(1151,1088) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+17];
__xlx_tmp_lv.range(1215,1152) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+18];
__xlx_tmp_lv.range(1279,1216) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+19];
__xlx_tmp_lv.range(1343,1280) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+20];
__xlx_tmp_lv.range(1407,1344) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+21];
__xlx_tmp_lv.range(1471,1408) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+22];
__xlx_tmp_lv.range(1535,1472) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+23];
__xlx_tmp_lv.range(1599,1536) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+24];
__xlx_tmp_lv.range(1663,1600) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+25];
__xlx_tmp_lv.range(1727,1664) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+26];
__xlx_tmp_lv.range(1791,1728) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+27];
__xlx_tmp_lv.range(1855,1792) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+28];
__xlx_tmp_lv.range(1919,1856) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+29];
__xlx_tmp_lv.range(1983,1920) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+30];
__xlx_tmp_lv.range(2047,1984) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+31];
__xlx_tmp_lv.range(2111,2048) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+32];
__xlx_tmp_lv.range(2175,2112) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+33];
__xlx_tmp_lv.range(2239,2176) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+34];
__xlx_tmp_lv.range(2303,2240) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+35];
__xlx_tmp_lv.range(2367,2304) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+36];
__xlx_tmp_lv.range(2431,2368) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+37];
__xlx_tmp_lv.range(2495,2432) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+38];
__xlx_tmp_lv.range(2559,2496) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+39];
__xlx_tmp_lv.range(2623,2560) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+40];
__xlx_tmp_lv.range(2687,2624) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+41];
__xlx_tmp_lv.range(2751,2688) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+42];
__xlx_tmp_lv.range(2815,2752) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+43];
__xlx_tmp_lv.range(2879,2816) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+44];
__xlx_tmp_lv.range(2943,2880) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+45];
__xlx_tmp_lv.range(3007,2944) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+46];
__xlx_tmp_lv.range(3071,3008) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+47];
__xlx_tmp_lv.range(3135,3072) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+48];
__xlx_tmp_lv.range(3199,3136) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+49];
__xlx_tmp_lv.range(3263,3200) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+50];
__xlx_tmp_lv.range(3327,3264) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+51];
__xlx_tmp_lv.range(3391,3328) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+52];
__xlx_tmp_lv.range(3455,3392) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+53];
__xlx_tmp_lv.range(3519,3456) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+54];
__xlx_tmp_lv.range(3583,3520) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+55];
__xlx_tmp_lv.range(3647,3584) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+56];
__xlx_tmp_lv.range(3711,3648) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+57];
__xlx_tmp_lv.range(3775,3712) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+58];
__xlx_tmp_lv.range(3839,3776) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+59];
__xlx_tmp_lv.range(3903,3840) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+60];
__xlx_tmp_lv.range(3967,3904) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+61];
__xlx_tmp_lv.range(4031,3968) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+62];
__xlx_tmp_lv.range(4095,4032) = ((long long*)&__xlx_apatb_param_data_in_s_stream_buf[j])[0*64+63];
__xlx_tmp_lv_hw = __xlx_tmp_lv;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv_hw.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_data_in_s, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_data_in_s_stream_buf_final_size, &tcl_file.data_in_s_depth);
aesl_fh.write(AUTOTB_TVIN_data_in_s, end_str());
}


// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_data_in_s, begin_str(AESL_transaction));
if (__xlx_apatb_param_data_in_s_stream_buf_final_size > 0) {
  long data_in_s_stream_ingress_size = __xlx_apatb_param_data_in_s_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", data_in_s_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_data_in_s, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_data_in_s_stream_buf_final_size; j != e; j++) {
    data_in_s_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", data_in_s_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_data_in_s, __xlx_sprintf_buffer.data());
  }
} else {
  long data_in_s_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", data_in_s_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_data_in_s, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_data_in_s, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_data_in_s, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_data_in_s_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_data_in_s, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_data_in_s, end_str());
}
long __xlx_apatb_param_data_out_s_stream_buf_final_size = ((hls::stream<__cosim_s2A__>*)__xlx_apatb_param_data_out_s)->size() - __xlx_apatb_param_data_out_s_stream_buf_size;
{
  while (!((hls::stream<__cosim_s2A__>*)__xlx_apatb_param_data_out_s)->empty())
    __xlx_apatb_param_data_out_s_stream_buf.push_back(((hls::stream<__cosim_s2A__>*)__xlx_apatb_param_data_out_s)->read());
  for (int i = 0; i < __xlx_apatb_param_data_out_s_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s2A__>*)__xlx_apatb_param_data_out_s)->write(__xlx_apatb_param_data_out_s_stream_buf[i]);
  }
// print data_out_s Transactions
{
aesl_fh.write(AUTOTB_TVOUT_data_out_s, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_data_out_s_stream_buf_final_size; j != e; ++j) {
sc_bv<336> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_data_out_s_stream_buf[__xlx_apatb_param_data_out_s_stream_buf_size+j])[0*5+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_data_out_s_stream_buf[__xlx_apatb_param_data_out_s_stream_buf_size+j])[0*5+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_data_out_s_stream_buf[__xlx_apatb_param_data_out_s_stream_buf_size+j])[0*5+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_data_out_s_stream_buf[__xlx_apatb_param_data_out_s_stream_buf_size+j])[0*5+3];
__xlx_tmp_lv.range(319,256) = ((long long*)&__xlx_apatb_param_data_out_s_stream_buf[__xlx_apatb_param_data_out_s_stream_buf_size+j])[0*5+4];
__xlx_tmp_lv.range(335,320) = ((long long*)&__xlx_apatb_param_data_out_s_stream_buf[__xlx_apatb_param_data_out_s_stream_buf_size+j])[0*5+5];
aesl_fh.write(AUTOTB_TVOUT_data_out_s, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}

  tcl_file.set_num(__xlx_apatb_param_data_out_s_stream_buf_final_size, &tcl_file.data_out_s_depth);
aesl_fh.write(AUTOTB_TVOUT_data_out_s, end_str());
}

{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_data_out_s, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_data_out_s_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_data_out_s, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_data_out_s, end_str());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
