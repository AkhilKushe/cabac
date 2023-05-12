// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __cabac_top_cabac_top_Pipeline_VITIS_LOOP_40_1_B_FRAME_INIT_VALS_ROM_AUTO_1R_H__
#define __cabac_top_cabac_top_Pipeline_VITIS_LOOP_40_1_B_FRAME_INIT_VALS_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct cabac_top_cabac_top_Pipeline_VITIS_LOOP_40_1_B_FRAME_INIT_VALS_ROM_AUTO_1R_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 8;
  static const unsigned AddressRange = 5;
  static const unsigned AddressWidth = 3;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(cabac_top_cabac_top_Pipeline_VITIS_LOOP_40_1_B_FRAME_INIT_VALS_ROM_AUTO_1R_ram) {
        ram[0] = "0b10011001";
        ram[1] = "0b10100000";
        ram[2] = "0b01101011";
        ram[3] = "0b10001011";
        ram[4] = "0b01111110";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(cabac_top_cabac_top_Pipeline_VITIS_LOOP_40_1_B_FRAME_INIT_VALS_ROM_AUTO_1R) {


static const unsigned DataWidth = 8;
static const unsigned AddressRange = 5;
static const unsigned AddressWidth = 3;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


cabac_top_cabac_top_Pipeline_VITIS_LOOP_40_1_B_FRAME_INIT_VALS_ROM_AUTO_1R_ram* meminst;


SC_CTOR(cabac_top_cabac_top_Pipeline_VITIS_LOOP_40_1_B_FRAME_INIT_VALS_ROM_AUTO_1R) {
meminst = new cabac_top_cabac_top_Pipeline_VITIS_LOOP_40_1_B_FRAME_INIT_VALS_ROM_AUTO_1R_ram("cabac_top_cabac_top_Pipeline_VITIS_LOOP_40_1_B_FRAME_INIT_VALS_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~cabac_top_cabac_top_Pipeline_VITIS_LOOP_40_1_B_FRAME_INIT_VALS_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
