-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity cabac_top_decode_decision_transMPS_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 7; 
             AddressWidth     : integer := 7; 
             AddressRange    : integer := 128
    ); 
    port (
          address0      : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DataWidth-1 downto 0);
          reset     : in std_logic;
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of cabac_top_decode_decision_transMPS_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "0000010", 1 => "0000011", 2 => "0000100", 3 => "0000101", 
    4 => "0000110", 5 => "0000111", 6 => "0001000", 7 => "0001001", 
    8 => "0001010", 9 => "0001011", 10 => "0001100", 11 => "0001101", 
    12 => "0001110", 13 => "0001111", 14 => "0010000", 15 => "0010001", 
    16 => "0010010", 17 => "0010011", 18 => "0010100", 19 => "0010101", 
    20 => "0010110", 21 => "0010111", 22 => "0011000", 23 => "0011001", 
    24 => "0011010", 25 => "0011011", 26 => "0011100", 27 => "0011101", 
    28 => "0011110", 29 => "0011111", 30 => "0100000", 31 => "0100001", 
    32 => "0100010", 33 => "0100011", 34 => "0100100", 35 => "0100101", 
    36 => "0100110", 37 => "0100111", 38 => "0101000", 39 => "0101001", 
    40 => "0101010", 41 => "0101011", 42 => "0101100", 43 => "0101101", 
    44 => "0101110", 45 => "0101111", 46 => "0110000", 47 => "0110001", 
    48 => "0110010", 49 => "0110011", 50 => "0110100", 51 => "0110101", 
    52 => "0110110", 53 => "0110111", 54 => "0111000", 55 => "0111001", 
    56 => "0111010", 57 => "0111011", 58 => "0111100", 59 => "0111101", 
    60 => "0111110", 61 => "0111111", 62 => "1000000", 63 => "1000001", 
    64 => "1000010", 65 => "1000011", 66 => "1000100", 67 => "1000101", 
    68 => "1000110", 69 => "1000111", 70 => "1001000", 71 => "1001001", 
    72 => "1001010", 73 => "1001011", 74 => "1001100", 75 => "1001101", 
    76 => "1001110", 77 => "1001111", 78 => "1010000", 79 => "1010001", 
    80 => "1010010", 81 => "1010011", 82 => "1010100", 83 => "1010101", 
    84 => "1010110", 85 => "1010111", 86 => "1011000", 87 => "1011001", 
    88 => "1011010", 89 => "1011011", 90 => "1011100", 91 => "1011101", 
    92 => "1011110", 93 => "1011111", 94 => "1100000", 95 => "1100001", 
    96 => "1100010", 97 => "1100011", 98 => "1100100", 99 => "1100101", 
    100 => "1100110", 101 => "1100111", 102 => "1101000", 103 => "1101001", 
    104 => "1101010", 105 => "1101011", 106 => "1101100", 107 => "1101101", 
    108 => "1101110", 109 => "1101111", 110 => "1110000", 111 => "1110001", 
    112 => "1110010", 113 => "1110011", 114 => "1110100", 115 => "1110101", 
    116 => "1110110", 117 => "1110111", 118 => "1111000", 119 => "1111001", 
    120 => "1111010", 121 => "1111011", 122 => "1111100", 123 => "1111101", 
    124 => "1111100", 125 => "1111101", 126 => "1111110", 127 => "1111111" );


begin 


memory_access_guard_0: process (address0) 
begin
      address0_tmp <= address0;
--synthesis translate_off
      if (CONV_INTEGER(address0) > AddressRange-1) then
           address0_tmp <= (others => '0');
      else 
           address0_tmp <= address0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(address0_tmp)); 
        end if;
    end if;
end process;

end rtl;

