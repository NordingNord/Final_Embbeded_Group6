-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity infer_layer_4_weights_V_20_rom is 
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


architecture rtl of infer_layer_4_weights_V_20_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "01000110000110", 1 => "00101100110010", 2 => "10111000111010", 
    3 => "01010101011101", 4 => "01011101110011", 5 => "01010010110000", 
    6 => "00101111110010", 7 => "01100011000001", 8 => "11011101100001", 
    9 => "11001101000001", 10 => "00011010001100", 11 => "00100110110100", 
    12 => "11100011001010", 13 => "00101010011001", 14 => "10100010000111", 
    15 => "11111000000010", 16 => "00001111110110", 17 => "00000100001010", 
    18 => "00001010101100", 19 => "11000001001100", 20 => "10100100000101", 
    21 => "00010111111100", 22 => "00101011011100", 23 => "10110000000101", 
    24 => "01011111011010", 25 => "01010011111000", 26 => "11101110111101", 
    27 => "10010111111101", 28 => "01010110001100", 29 => "11001100100010", 
    30 => "00101001110111", 31 => "10110111011000", 32 => "00000010111011", 
    33 => "10011100001000", 34 => "01011100111110", 35 => "10110100111111", 
    36 => "10110100010101", 37 => "00001010100111", 38 => "10011101100101", 
    39 => "11110101010011", 40 => "00001000001000", 41 => "11010101110011", 
    42 => "11100110101010", 43 => "01100000101101", 44 => "00100100010111", 
    45 => "00110101010010", 46 => "01010011010000", 47 => "10001001011001", 
    48 => "11101101010111", 49 => "10010100111110", 50 => "11000011000101", 
    51 => "10011101110111", 52 => "11010001100110", 53 => "11101100101011", 
    54 => "11100001100001", 55 => "00100101000011", 56 => "00011100011111", 
    57 => "01000011000010", 58 => "01001110001010", 59 => "00001000101011", 
    60 => "00111100110111", 61 => "11010110010111", 62 => "01100001111000", 
    63 => "11101101110111", 64 => "11010011010011", 65 => "00010001110010", 
    66 => "11011011010111", 67 => "01011110010011", 68 => "01010001011001", 
    69 => "11011101000000", 70 => "00110000110110", 71 => "10111001100110", 
    72 => "11010101001101", 73 => "11000101101001", 74 => "11010000011100", 
    75 => "11100100101101", 76 => "11101100110111", 77 => "00110010110011", 
    78 => "10110110111010", 79 => "01001011001100", 80 => "00110111100110", 
    81 => "00111000000011", 82 => "11110111111100", 83 => "00100100110111", 
    84 => "11111100100000", 85 => "01010110101001", 86 => "11000101000101", 
    87 => "00001100011101", 88 => "10111101111000", 89 => "01001101011110", 
    90 => "11011010101011", 91 => "01011000000010", 92 => "11011000010011", 
    93 => "00110000111011", 94 => "01000011100100", 95 => "00101101100101", 
    96 => "10101101111111", 97 => "10101110100101", 98 => "10111111110000", 
    99 => "00011001101111", 100 => "10110100111011", 101 => "01000100111001", 
    102 => "01010001010000", 103 => "11011101100110", 104 => "10100010101001", 
    105 => "00001110101101", 106 => "11110010100001", 107 => "11010001101110", 
    108 => "11101010011100", 109 => "01011111111101", 110 => "01010000101000", 
    111 => "00111101100010", 112 => "00000000011100", 113 => "11000111001110", 
    114 => "11011111001000", 115 => "11011001101010", 116 => "10110000010101", 
    117 => "10010110010101", 118 => "11101001010011", 119 => "01000101101010", 
    120 => "10111011000000", 121 => "00011001000011", 122 => "00011000000100", 
    123 => "00000011100111", 124 => "01010011000101", 125 => "01011011101011", 
    126 => "11001010101000", 127 => "11110110110011", 128 => "10101001000010", 
    129 => "10110000101010", 130 => "11010001001101", 131 => "11010000111100", 
    132 => "01100011001111", 133 => "01001011110111", 134 => "11101100101000", 
    135 => "00001101001110", 136 => "01000101010111", 137 => "00110110100111", 
    138 => "10111100011010", 139 => "00001100001111", 140 => "01000101000101", 
    141 => "00101000111010", 142 => "01000011010110", 143 => "00010001110000", 
    144 => "00111100101011", 145 => "11101101111101", 146 => "11001101011011", 
    147 => "00001111011000", 148 => "00101011111111", 149 => "01010011001011", 
    150 => "11001111001000", 151 => "11010110111000", 152 => "11101101111100", 
    153 => "11100110110110", 154 => "11001110101010", 155 => "00101011110110", 
    156 => "01001010110101", 157 => "01001001001100", 158 => "11001011001000", 
    159 => "11111000001111", 160 => "10010100010110", 161 => "00100000110111", 
    162 => "11111111011111", 163 => "11011001000101", 164 => "00101110101110", 
    165 => "01011100111001", 166 => "11010000011100", 167 => "00110010100111", 
    168 => "01000101110000", 169 => "11110111000110", 170 => "11110110010011", 
    171 => "10011000101011", 172 => "01100111010111", 173 => "01010011100110", 
    174 => "00101100111001", 175 => "00000100110001", 176 => "10110111101111", 
    177 => "00011100000111", 178 => "10011001110100", 179 => "11100011010111", 
    180 => "01000100111011", 181 => "00111110001111", 182 => "00010010010100", 
    183 => "01001100010110", 184 => "00011100010011", 185 => "11000010101111", 
    186 => "10111100111111", 187 => "00001001111111", 188 => "00000000110110", 
    189 => "00111101010101", 190 => "01011111100111", 191 => "11010111111010", 
    192 => "11011101011011", 193 => "00101100100100", 194 => "01001010101110", 
    195 => "11110111111101", 196 => "11111110010000", 197 => "10111100111100", 
    198 => "00011011010111", 199 => "00000001110101", 200 => "11100110010111", 
    201 => "00010001011001", 202 => "11000011101010", 203 => "11001000011110", 
    204 => "11110011101100", 205 => "11110011010001", 206 => "11001100001101", 
    207 => "00101100010110", 208 => "00100010110110", 209 => "10011010100001", 
    210 => "00000100000011", 211 => "00000111101000", 212 => "11011111001000", 
    213 => "11011011011011", 214 => "01011110101001", 215 => "10101101010100", 
    216 => "11101101111100", 217 => "10111110101010", 218 => "11101101100100", 
    219 => "00100101110000", 220 => "00010101001111", 221 => "00011001111011", 
    222 => "00011010100100", 223 => "00011100011111", 224 => "11101001011011", 
    225 => "11101001101001", 226 => "00100010111000", 227 => "10100011111101", 
    228 => "10101000101000", 229 => "01100001111110", 230 => "10111001000011", 
    231 => "00000001001110", 232 => "10011111100010", 233 => "10100001111111", 
    234 => "01001101100001", 235 => "00011110111000", 236 => "00101101111101", 
    237 => "01011100000010", 238 => "10110100010001", 239 => "01001010110111", 
    240 => "00000100111010", 241 => "00010101111111", 242 => "11101001010100", 
    243 => "00010000001100", 244 => "10010101011100", 245 => "01000111110110", 
    246 => "11110011000110", 247 => "00011111011100", 248 => "10100100100110", 
    249 => "10100111001010", 250 => "11011100001000", 251 => "11111011000010", 
    252 => "11110100101100", 253 => "11011100110111", 254 => "10101001010010", 
    255 => "11000011111100", 256 => "01010010001010", 257 => "10011011101110", 
    258 => "01001110010101", 259 => "11100000010011", 260 => "11101101110001", 
    261 => "10110011101110", 262 => "00111100111101", 263 => "11011010101100", 
    264 => "00100010000110", 265 => "11101111110011", 266 => "00011001001011", 
    267 => "00011010011111", 268 => "10100011001010", 269 => "10101101001001", 
    270 => "01100101011111", 271 => "11001100010001", 272 => "01010100001010", 
    273 => "10100101000110", 274 => "01010100100011", 275 => "00110000110100", 
    276 => "11001010000000", 277 => "00111010011110", 278 => "11101101011010", 
    279 => "01010111111111", 280 => "11111100100101", 281 => "00110111100110", 
    282 => "00000111100010", 283 => "11111110001011", 284 => "10111001000101", 
    285 => "11111011001101", 286 => "01001100000001", 287 => "10110010010000" );


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

entity infer_layer_4_weights_V_20 is
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

architecture arch of infer_layer_4_weights_V_20 is
    component infer_layer_4_weights_V_20_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_layer_4_weights_V_20_rom_U :  component infer_layer_4_weights_V_20_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;

