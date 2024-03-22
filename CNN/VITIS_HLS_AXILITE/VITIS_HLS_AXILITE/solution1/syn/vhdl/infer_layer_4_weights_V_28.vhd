-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity infer_layer_4_weights_V_28_rom is 
    generic(
             DWIDTH     : integer := 14; 
             AWIDTH     : integer := 9; 
             MEM_SIZE    : integer := 288
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of infer_layer_4_weights_V_28_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00001000110110", 1 => "01001000101010", 2 => "10011000011001", 
    3 => "10011101101010", 4 => "00101010010111", 5 => "10100111110111", 
    6 => "01100100010010", 7 => "00101100111001", 8 => "01010110100111", 
    9 => "10100110100110", 10 => "00010000110011", 11 => "01000011001111", 
    12 => "01011010111010", 13 => "00011001111010", 14 => "00100011011001", 
    15 => "01000010101000", 16 => "00101001100010", 17 => "01011110101100", 
    18 => "10111000010100", 19 => "00100010111001", 20 => "10100111101100", 
    21 => "00001111001100", 22 => "00110000010101", 23 => "01100000111110", 
    24 => "10011010110111", 25 => "11111000111011", 26 => "11110010000111", 
    27 => "00001000110101", 28 => "11010000100111", 29 => "00110001010010", 
    30 => "10110110001101", 31 => "11010111011011", 32 => "01000111111001", 
    33 => "11011010011111", 34 => "00101010101001", 35 => "11011100001111", 
    36 => "01000000010111", 37 => "00000001001100", 38 => "00010001100111", 
    39 => "11100010110101", 40 => "01100000001101", 41 => "00000100000111", 
    42 => "00000100010000", 43 => "00001010011001", 44 => "01000000010110", 
    45 => "10100000100001", 46 => "11110001110111", 47 => "11010000111010", 
    48 => "00001010000101", 49 => "01101000001000", 50 => "01001110001101", 
    51 => "00011010010000", 52 => "11001011111001", 53 => "10011011111000", 
    54 => "01010110011101", 55 => "10110111101001", 56 => "00101011011001", 
    57 => "10111101000101", 58 => "11111010110001", 59 => "11111001000111", 
    60 => "01100100001011", 61 => "10011000101001", 62 => "11000111100111", 
    63 => "00000101010010", 64 => "01010010110110", 65 => "00011101111101", 
    66 => "00010110100101", 67 => "11011010101011", 68 => "01000001001101", 
    69 => "00110111000000", 70 => "00101101101101", 71 => "11101101110000", 
    72 => "01100110001001", 73 => "11000101001100", 74 => "11011000110001", 
    75 => "11000101111000", 76 => "10110011101001", 77 => "10101010011110", 
    78 => "01001100101111", 79 => "11000000101011", 80 => "10110010000000", 
    81 => "10101111010010", 82 => "00111101011010", 83 => "00111100111101", 
    84 => "01000000010100", 85 => "00101111101111", 86 => "00100011101000", 
    87 => "11110111011110", 88 => "11111101011011", 89 => "01000010100100", 
    90 => "00101010100111", 91 => "11000000001001", 92 => "11111111100000", 
    93 => "10100001101000", 94 => "00101000110011", 95 => "00110111111111", 
    96 => "01011000001011", 97 => "11101001000111", 98 => "10100110000011", 
    99 => "01100110100101", 100 => "11101101010010", 101 => "01001011001010", 
    102 => "00011110111110", 103 => "11101011000111", 104 => "00000011000110", 
    105 => "10110011101010", 106 => "11111110101110", 107 => "00100010110000", 
    108 => "11110011011110", 109 => "01001111001011", 110 => "11011000100100", 
    111 => "11000101010110", 112 => "00001111000011", 113 => "10011010010000", 
    114 => "00010111101011", 115 => "00011011010010", 116 => "10100101001101", 
    117 => "10101111010000", 118 => "11000101110000", 119 => "11011110000001", 
    120 => "00010110111101", 121 => "10110000010010", 122 => "00010010001110", 
    123 => "00111101011111", 124 => "11010000110011", 125 => "00011000000000", 
    126 => "01000110111111", 127 => "00001010100011", 128 => "01100001110000", 
    129 => "00110000001011", 130 => "01000101101000", 131 => "10100101100110", 
    132 => "00101110001011", 133 => "00011100101111", 134 => "11101001010001", 
    135 => "01100001111001", 136 => "11111000111010", 137 => "11111001000100", 
    138 => "01000110101111", 139 => "11010011010000", 140 => "11110011110101", 
    141 => "00101100100010", 142 => "00011100101000", 143 => "00010001000101", 
    144 => "00100101000100", 145 => "10011101110000", 146 => "00010011101001", 
    147 => "00111110010100", 148 => "01010101100000", 149 => "00001111111001", 
    150 => "01000000000111", 151 => "00100110101011", 152 => "11100011100111", 
    153 => "11111000010011", 154 => "10101011010101", 155 => "00001111111110", 
    156 => "11011100111111", 157 => "00100110000110", 158 => "01000010101110", 
    159 => "11100000110111", 160 => "11111011111010", 161 => "00101000000011", 
    162 => "11011000110011", 163 => "10110111001000", 164 => "00010000101000", 
    165 => "00001010111101", 166 => "00000000010011", 167 => "11101100111100", 
    168 => "11100110010000", 169 => "10101011110001", 170 => "11010010100010", 
    171 => "11001101010001", 172 => "11011010111001", 173 => "11010100001011", 
    174 => "11000111000011", 175 => "11110110110010", 176 => "01010100001010", 
    177 => "10101001111000", 178 => "10100110101111", 179 => "00001101000100", 
    180 => "01000011111001", 181 => "01011011110001", 182 => "01101000010010", 
    183 => "00001001001110", 184 => "01011110000101", 185 => "00011100011100", 
    186 => "10100111111010", 187 => "00010010010000", 188 => "01100110111001", 
    189 => "11011111001100", 190 => "00101101100100", 191 => "10110101011011", 
    192 => "11000101001100", 193 => "00000011011010", 194 => "01010110011000", 
    195 => "11001101001001", 196 => "00110000001101", 197 => "00111001110100", 
    198 => "11111101010100", 199 => "00010111111111", 200 => "10101010000011", 
    201 => "01000101111110", 202 => "10011110000110", 203 => "10100011111001", 
    204 => "11101010011011", 205 => "01011101010101", 206 => "00001011001110", 
    207 => "11100100001010", 208 => "11010101001011", 209 => "00011111111011", 
    210 => "11100000010111", 211 => "01001000100111", 212 => "00001101111010", 
    213 => "10100101011101", 214 => "10101000011101", 215 => "11011101110010", 
    216 => "00101110010101", 217 => "10011101101100", 218 => "10011001010100", 
    219 => "01011001111011", 220 => "11000111011100", 221 => "10011010010100", 
    222 => "11010001110011", 223 => "10011010010001", 224 => "10110001100100", 
    225 => "11100011100011", 226 => "01010010000011", 227 => "10011110000101", 
    228 => "00010110111100", 229 => "10111101111111", 230 => "11100001001110", 
    231 => "10111110100100", 232 => "11000110010000", 233 => "11000001001000", 
    234 => "01010000110101", 235 => "11011100011001", 236 => "10011110011100", 
    237 => "11110010101101", 238 => "11001101011110", 239 => "11111000111101", 
    240 => "10111001000011", 241 => "00101111101001", 242 => "10100000000100", 
    243 => "01011111001100", 244 => "00010000001111", 245 => "01001100010111", 
    246 => "00010001001010", 247 => "10110000110001", 248 => "01000011010111", 
    249 => "01001111010000", 250 => "11010101011000", 251 => "11101000011000", 
    252 => "00011010001110", 253 => "10011110110100", 254 => "00011100001000", 
    255 => "11000101111110", 256 => "11000011100010", 257 => "10100111001010", 
    258 => "10111010100110", 259 => "00010101100110", 260 => "11111111110100", 
    261 => "00000000101111", 262 => "00110100010001", 263 => "11101001100110", 
    264 => "10011000110111", 265 => "11100011111100", 266 => "10110111111100", 
    267 => "00000110000001", 268 => "01001011100010", 269 => "10110101101010", 
    270 => "00111100110101", 271 => "11111000100010", 272 => "11011111110010", 
    273 => "00010100010110", 274 => "00011111011011", 275 => "01100010110100", 
    276 => "00001100110001", 277 => "00111001001100", 278 => "11100011100011", 
    279 => "01001010010111", 280 => "00011100000011", 281 => "10100011100111", 
    282 => "11101110110110", 283 => "00111110110011", 284 => "00011011111001", 
    285 => "01011000010111", 286 => "10011111100111", 287 => "10010111110110" );


begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;

Library IEEE;
use IEEE.std_logic_1164.all;

entity infer_layer_4_weights_V_28 is
    generic (
        DataWidth : INTEGER := 14;
        AddressRange : INTEGER := 288;
        AddressWidth : INTEGER := 9);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of infer_layer_4_weights_V_28 is
    component infer_layer_4_weights_V_28_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_layer_4_weights_V_28_rom_U :  component infer_layer_4_weights_V_28_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;

