// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __cabac_top_decode_regular_lpsTable_ROM_AUTO_1R_H__
#define __cabac_top_decode_regular_lpsTable_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct cabac_top_decode_regular_lpsTable_ROM_AUTO_1R_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 8;
  static const unsigned AddressRange = 256;
  static const unsigned AddressWidth = 8;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(cabac_top_decode_regular_lpsTable_ROM_AUTO_1R_ram) {
        ram[0] = "0b10000000";
        ram[1] = "0b10110000";
        ram[2] = "0b11010000";
        ram[3] = "0b11110000";
        ram[4] = "0b10000000";
        ram[5] = "0b10100111";
        ram[6] = "0b11000101";
        ram[7] = "0b11100011";
        ram[8] = "0b10000000";
        ram[9] = "0b10011110";
        ram[10] = "0b10111011";
        ram[11] = "0b11011000";
        ram[12] = "0b01111011";
        ram[13] = "0b10010110";
        ram[14] = "0b10110010";
        ram[15] = "0b11001101";
        ram[16] = "0b01110100";
        ram[17] = "0b10001110";
        ram[18] = "0b10101001";
        ram[19] = "0b11000011";
        ram[20] = "0b01101111";
        ram[21] = "0b10000111";
        ram[22] = "0b10100000";
        ram[23] = "0b10111001";
        ram[24] = "0b01101001";
        ram[25] = "0b10000000";
        ram[26] = "0b10011000";
        ram[27] = "0b10101111";
        ram[28] = "0b01100100";
        ram[29] = "0b01111010";
        ram[30] = "0b10010000";
        ram[31] = "0b10100110";
        ram[32] = "0b01011111";
        ram[33] = "0b01110100";
        ram[34] = "0b10001001";
        ram[35] = "0b10011110";
        ram[36] = "0b01011010";
        ram[37] = "0b01101110";
        ram[38] = "0b10000010";
        ram[39] = "0b10010110";
        ram[40] = "0b01010101";
        ram[41] = "0b01101000";
        ram[42] = "0b01111011";
        ram[43] = "0b10001110";
        ram[44] = "0b01010001";
        ram[45] = "0b01100011";
        ram[46] = "0b01110101";
        ram[47] = "0b10000111";
        ram[48] = "0b01001101";
        ram[49] = "0b01011110";
        ram[50] = "0b01101111";
        ram[51] = "0b10000000";
        ram[52] = "0b01001001";
        ram[53] = "0b01011001";
        ram[54] = "0b01101001";
        ram[55] = "0b01111010";
        ram[56] = "0b01000101";
        ram[57] = "0b01010101";
        ram[58] = "0b01100100";
        ram[59] = "0b01110100";
        ram[60] = "0b01000010";
        ram[61] = "0b01010000";
        ram[62] = "0b01011111";
        ram[63] = "0b01101110";
        ram[64] = "0b00111110";
        ram[65] = "0b01001100";
        ram[66] = "0b01011010";
        ram[67] = "0b01101000";
        ram[68] = "0b00111011";
        ram[69] = "0b01001000";
        ram[70] = "0b01010110";
        ram[71] = "0b01100011";
        ram[72] = "0b00111000";
        ram[73] = "0b01000101";
        ram[74] = "0b01010001";
        ram[75] = "0b01011110";
        ram[76] = "0b00110101";
        ram[77] = "0b01000001";
        ram[78] = "0b01001101";
        ram[79] = "0b01011001";
        ram[80] = "0b00110011";
        ram[81] = "0b00111110";
        ram[82] = "0b01001001";
        ram[83] = "0b01010101";
        ram[84] = "0b00110000";
        ram[85] = "0b00111011";
        ram[86] = "0b01000101";
        ram[87] = "0b01010000";
        ram[88] = "0b00101110";
        ram[89] = "0b00111000";
        ram[90] = "0b01000010";
        ram[91] = "0b01001100";
        ram[92] = "0b00101011";
        ram[93] = "0b00110101";
        ram[94] = "0b00111111";
        ram[95] = "0b01001000";
        ram[96] = "0b00101001";
        ram[97] = "0b00110010";
        ram[98] = "0b00111011";
        ram[99] = "0b01000101";
        ram[100] = "0b00100111";
        ram[101] = "0b00110000";
        ram[102] = "0b00111000";
        ram[103] = "0b01000001";
        ram[104] = "0b00100101";
        ram[105] = "0b00101101";
        ram[106] = "0b00110110";
        ram[107] = "0b00111110";
        ram[108] = "0b00100011";
        ram[109] = "0b00101011";
        ram[110] = "0b00110011";
        ram[111] = "0b00111011";
        ram[112] = "0b00100001";
        ram[113] = "0b00101001";
        ram[114] = "0b00110000";
        ram[115] = "0b00111000";
        ram[116] = "0b00100000";
        ram[117] = "0b00100111";
        ram[118] = "0b00101110";
        ram[119] = "0b00110101";
        ram[120] = "0b00011110";
        ram[121] = "0b00100101";
        ram[122] = "0b00101011";
        ram[123] = "0b00110010";
        ram[124] = "0b00011101";
        ram[125] = "0b00100011";
        ram[126] = "0b00101001";
        ram[127] = "0b00110000";
        ram[128] = "0b00011011";
        ram[129] = "0b00100001";
        ram[130] = "0b00100111";
        ram[131] = "0b00101101";
        ram[132] = "0b00011010";
        ram[133] = "0b00011111";
        ram[134] = "0b00100101";
        ram[135] = "0b00101011";
        ram[136] = "0b00011000";
        ram[137] = "0b00011110";
        ram[138] = "0b00100011";
        ram[139] = "0b00101001";
        ram[140] = "0b00010111";
        ram[141] = "0b00011100";
        ram[142] = "0b00100001";
        ram[143] = "0b00100111";
        ram[144] = "0b00010110";
        ram[145] = "0b00011011";
        ram[146] = "0b00100000";
        ram[147] = "0b00100101";
        ram[148] = "0b00010101";
        ram[149] = "0b00011010";
        ram[150] = "0b00011110";
        ram[151] = "0b00100011";
        ram[152] = "0b00010100";
        ram[153] = "0b00011000";
        ram[154] = "0b00011101";
        ram[155] = "0b00100001";
        ram[156] = "0b00010011";
        ram[157] = "0b00010111";
        ram[158] = "0b00011011";
        ram[159] = "0b00011111";
        ram[160] = "0b00010010";
        ram[161] = "0b00010110";
        ram[162] = "0b00011010";
        ram[163] = "0b00011110";
        ram[164] = "0b00010001";
        ram[165] = "0b00010101";
        ram[166] = "0b00011001";
        ram[167] = "0b00011100";
        ram[168] = "0b00010000";
        ram[169] = "0b00010100";
        ram[170] = "0b00010111";
        ram[171] = "0b00011011";
        ram[172] = "0b00001111";
        ram[173] = "0b00010011";
        ram[174] = "0b00010110";
        ram[175] = "0b00011001";
        ram[176] = "0b00001110";
        ram[177] = "0b00010010";
        ram[178] = "0b00010101";
        ram[179] = "0b00011000";
        ram[180] = "0b00001110";
        ram[181] = "0b00010001";
        ram[182] = "0b00010100";
        ram[183] = "0b00010111";
        ram[184] = "0b00001101";
        ram[185] = "0b00010000";
        ram[186] = "0b00010011";
        ram[187] = "0b00010110";
        ram[188] = "0b00001100";
        ram[189] = "0b00001111";
        ram[190] = "0b00010010";
        ram[191] = "0b00010101";
        ram[192] = "0b00001100";
        ram[193] = "0b00001110";
        ram[194] = "0b00010001";
        ram[195] = "0b00010100";
        ram[196] = "0b00001011";
        ram[197] = "0b00001110";
        ram[198] = "0b00010000";
        ram[199] = "0b00010011";
        ram[200] = "0b00001011";
        ram[201] = "0b00001101";
        ram[202] = "0b00001111";
        ram[203] = "0b00010010";
        ram[204] = "0b00001010";
        ram[205] = "0b00001100";
        ram[206] = "0b00001111";
        ram[207] = "0b00010001";
        ram[208] = "0b00001010";
        ram[209] = "0b00001100";
        ram[210] = "0b00001110";
        ram[211] = "0b00010000";
        ram[212] = "0b00001001";
        ram[213] = "0b00001011";
        ram[214] = "0b00001101";
        ram[215] = "0b00001111";
        ram[216] = "0b00001001";
        ram[217] = "0b00001011";
        ram[218] = "0b00001100";
        ram[219] = "0b00001110";
        ram[220] = "0b00001000";
        ram[221] = "0b00001010";
        ram[222] = "0b00001100";
        ram[223] = "0b00001110";
        ram[224] = "0b00001000";
        ram[225] = "0b00001001";
        ram[226] = "0b00001011";
        ram[227] = "0b00001101";
        ram[228] = "0b00000111";
        ram[229] = "0b00001001";
        ram[230] = "0b00001011";
        ram[231] = "0b00001100";
        ram[232] = "0b00000111";
        ram[233] = "0b00001001";
        ram[234] = "0b00001010";
        ram[235] = "0b00001100";
        ram[236] = "0b00000111";
        ram[237] = "0b00001000";
        ram[238] = "0b00001010";
        ram[239] = "0b00001011";
        ram[240] = "0b00000110";
        ram[241] = "0b00001000";
        ram[242] = "0b00001001";
        ram[243] = "0b00001011";
        ram[244] = "0b00000110";
        ram[245] = "0b00000111";
        ram[246] = "0b00001001";
        ram[247] = "0b00001010";
        ram[248] = "0b00000110";
        ram[249] = "0b00000111";
        ram[250] = "0b00001000";
        ram[251] = "0b00001001";
        ram[252] = "0b00000010";
        ram[253] = "0b00000010";
        ram[254] = "0b00000010";
        ram[255] = "0b00000010";


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


SC_MODULE(cabac_top_decode_regular_lpsTable_ROM_AUTO_1R) {


static const unsigned DataWidth = 8;
static const unsigned AddressRange = 256;
static const unsigned AddressWidth = 8;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


cabac_top_decode_regular_lpsTable_ROM_AUTO_1R_ram* meminst;


SC_CTOR(cabac_top_decode_regular_lpsTable_ROM_AUTO_1R) {
meminst = new cabac_top_decode_regular_lpsTable_ROM_AUTO_1R_ram("cabac_top_decode_regular_lpsTable_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~cabac_top_decode_regular_lpsTable_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
