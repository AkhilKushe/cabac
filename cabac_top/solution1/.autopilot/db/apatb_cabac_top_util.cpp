#include <iostream>
#include "hls_stream.h"

using namespace std;

struct __cosim_T_1__ {char data[1];};
extern "C" void fpga_fifo_push_1(__cosim_T_1__* val, hls::stream<__cosim_T_1__>* fifo) {
  fifo->write(*val);
}
extern "C" void fpga_fifo_pop_1(__cosim_T_1__* val, hls::stream<__cosim_T_1__>* fifo) {
  *val = fifo->read();
}
extern "C" bool fpga_fifo_not_empty_1(hls::stream<__cosim_T_1__>* fifo) {
  return !fifo->empty();
}
extern "C" bool fpga_fifo_exist_1(hls::stream<__cosim_T_1__>* fifo) {
  return fifo->exist();
}
struct __cosim_T_42__ {char data[42];};
extern "C" void fpga_fifo_push_42(__cosim_T_42__* val, hls::stream<__cosim_T_42__>* fifo) {
  fifo->write(*val);
}
extern "C" void fpga_fifo_pop_42(__cosim_T_42__* val, hls::stream<__cosim_T_42__>* fifo) {
  *val = fifo->read();
}
extern "C" bool fpga_fifo_not_empty_42(hls::stream<__cosim_T_42__>* fifo) {
  return !fifo->empty();
}
extern "C" bool fpga_fifo_exist_42(hls::stream<__cosim_T_42__>* fifo) {
  return fifo->exist();
}
struct __cosim_T_512__ {char data[512];};
extern "C" void fpga_fifo_push_512(__cosim_T_512__* val, hls::stream<__cosim_T_512__>* fifo) {
  fifo->write(*val);
}
extern "C" void fpga_fifo_pop_512(__cosim_T_512__* val, hls::stream<__cosim_T_512__>* fifo) {
  *val = fifo->read();
}
extern "C" bool fpga_fifo_not_empty_512(hls::stream<__cosim_T_512__>* fifo) {
  return !fifo->empty();
}
extern "C" bool fpga_fifo_exist_512(hls::stream<__cosim_T_512__>* fifo) {
  return fifo->exist();
}
