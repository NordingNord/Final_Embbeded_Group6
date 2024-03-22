-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity infer_layer_4_weights_V_4_rom is 
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


architecture rtl of infer_layer_4_weights_V_4_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "01010111000010", 1 => "00010001111011", 2 => "11110110010110", 
    3 => "00111010011110", 4 => "00010111010101", 5 => "10111100110000", 
    6 => "11111000000001", 7 => "11011000110110", 8 => "11000001100000", 
    9 => "10111110001010", 10 => "01011011100111", 11 => "11010110011010", 
    12 => "11111011111111", 13 => "00101110101100", 14 => "11111110101111", 
    15 => "01000110011110", 16 => "10101110111010", 17 => "10011000111111", 
    18 => "11101010010011", 19 => "11111011101010", 20 => "10110010000111", 
    21 => "10011000101101", 22 => "11110000110100", 23 => "01100100011000", 
    24 => "11101011010001", 25 => "01010110100110", 26 => "01011101100111", 
    27 => "01101000011001", 28 => "11011011000100", 29 => "10111111010010", 
    30 => "00100000000010", 31 => "01011101000101", 32 => "00011000010001", 
    33 => "00011101110101", 34 => "01000101101011", 35 => "10101111011011", 
    36 => "11010001101100", 37 => "01010111111000", 38 => "11011100101100", 
    39 => "11111010001011", 40 => "00011000011000", 41 => "10101010100010", 
    42 => "11001101011011", 43 => "11100010010111", 44 => "00010100010111", 
    45 => "10110101010000", 46 => "11111001111011", 47 => "01010000101011", 
    48 => "11010011110001", 49 => "10011110010011", 50 => "11101100110100", 
    51 => "01001110100100", 52 => "00001110010001", 53 => "01000100010000", 
    54 => "00101111001100", 55 => "10110001110101", 56 => "10011001101101", 
    57 => "01010010010101", 58 => "11011010001110", 59 => "00010100000110", 
    60 => "11001001111100", 61 => "00110011111101", 62 => "11110110011100", 
    63 => "11110001100100", 64 => "11010111111010", 65 => "11101010110111", 
    66 => "10101110101111", 67 => "10110001101111", 68 => "01001011010011", 
    69 => "10110111101101", 70 => "00010101101101", 71 => "00011011001010", 
    72 => "10110001001001", 73 => "10010111100011", 74 => "00111010011111", 
    75 => "01011110111110", 76 => "01100000110001", 77 => "10011110000010", 
    78 => "01011000000111", 79 => "00000001011101", 80 => "11100011110100", 
    81 => "11111111010011", 82 => "00001111110110", 83 => "10111010111100", 
    84 => "10011111100011", 85 => "10011101101000", 86 => "00100101011111", 
    87 => "01001101110011", 88 => "00011111001010", 89 => "11001010000010", 
    90 => "01001111000110", 91 => "01011010110000", 92 => "10110101100010", 
    93 => "00111010111110", 94 => "00100010100110", 95 => "00011110110111", 
    96 => "11010100011000", 97 => "01000010110001", 98 => "11000011110001", 
    99 => "00001110101100", 100 => "00010000100010", 101 => "11100011110000", 
    102 => "11110101111001", 103 => "00101101010110", 104 => "10111100110000", 
    105 => "00001010010010", 106 => "00110101101100", 107 => "01001101010110", 
    108 => "11011101000010", 109 => "01010010100101", 110 => "01001011100001", 
    111 => "11110010000110", 112 => "00100001110010", 113 => "00000011111110", 
    114 => "00011111011011", 115 => "00111110100110", 116 => "00101110110100", 
    117 => "11011010110010", 118 => "11000111110101", 119 => "00111100100011", 
    120 => "10011100000110", 121 => "00111000010100", 122 => "00010110111011", 
    123 => "00100000010101", 124 => "11000111000101", 125 => "10011110001001", 
    126 => "00110000011101", 127 => "10011001001110", 128 => "01100000001000", 
    129 => "00000000110011", 130 => "11101011101010", 131 => "00001100100111", 
    132 => "00011100000110", 133 => "11010101000110", 134 => "01011111011001", 
    135 => "11101001101001", 136 => "00001101100110", 137 => "11101100011011", 
    138 => "01000110110111", 139 => "10101100000111", 140 => "10011001100101", 
    141 => "00001011011110", 142 => "01000101001011", 143 => "00111011000000", 
    144 => "01010100100010", 145 => "11100010001111", 146 => "10111101010001", 
    147 => "01001110110100", 148 => "11001000110110", 149 => "10100011011110", 
    150 => "11101011010000", 151 => "10110001110110", 152 => "11100110111110", 
    153 => "00110110000011", 154 => "11010000010011", 155 => "11100110000111", 
    156 => "00110001011010", 157 => "10100110110000", 158 => "01100110011011", 
    159 => "11100001110011", 160 => "11011100011111", 161 => "11100010010111", 
    162 => "11101010011001", 163 => "11011010111001", 164 => "00000101010110", 
    165 => "11011000010110", 166 => "10011100001111", 167 => "11010000001101", 
    168 => "00111111110011", 169 => "11000101010011", 170 => "11110100010100", 
    171 => "11111010111010", 172 => "01100011101101", 173 => "10110111011101", 
    174 => "10011011001110", 175 => "00011111100100", 176 => "11000000010000", 
    177 => "11111011001010", 178 => "01000000101100", 179 => "10111000110000", 
    180 => "10101100001010", 181 => "11011011101110", 182 => "11111011001010", 
    183 => "00010000101000", 184 => "00111101011011", 185 => "11100100111000", 
    186 => "01100100011000", 187 => "00010101001010", 188 => "00001010001110", 
    189 => "00011010111001", 190 => "01011011000100", 191 => "11110011011001", 
    192 => "01010000011001", 193 => "11100100001010", 194 => "00001100010001", 
    195 => "00000010110011", 196 => "11100011001110", 197 => "11100000110110", 
    198 => "01010011110101", 199 => "10100001111011", 200 => "11010011110000", 
    201 => "00101110101111", 202 => "10111000101111", 203 => "01000000110011", 
    204 => "10110101111110", 205 => "10110010101110", 206 => "01010110001001", 
    207 => "11100010001100", 208 => "01100111101001", 209 => "11110001001000", 
    210 => "00110011001110", 211 => "10101000100001", 212 => "10100111101010", 
    213 => "11000011011110", 214 => "00111010110000", 215 => "11110101111100", 
    216 => "00001111010110", 217 => "10101101000111", 218 => "00101000101101", 
    219 => "11110111101010", 220 => "10100001100110", 221 => "01000001001000", 
    222 => "10101101001001", 223 => "00111001001011", 224 => "11110010000110", 
    225 => "11101101001100", 226 => "11100000000010", 227 => "11001110001110", 
    228 => "01011110011010", 229 => "10011101100011", 230 => "00010101001001", 
    231 => "11111110010001", 232 => "00100100101010", 233 => "00000110111110", 
    234 => "01100110111000", 235 => "00000110011110", 236 => "10100111110101", 
    237 => "01000010101101", 238 => "11011011000001", 239 => "00100100101011", 
    240 => "10111001111000", 241 => "00100100011011", 242 => "10110111100100", 
    243 => "11111101001100", 244 => "00010111011111", 245 => "10100001000100", 
    246 => "00010111000100", 247 => "00001001101100", 248 => "11011001010010", 
    249 => "01100001110101", 250 => "11101110000111", 251 => "00000111010001", 
    252 => "00001111111100", 253 => "11010011101101", 254 => "01100110001010", 
    255 => "10011001011111", 256 => "00101100100100", 257 => "01100010101011", 
    258 => "01010110110000", 259 => "11100000111001", 260 => "11101101101001", 
    261 => "11001100011101", 262 => "00011011111001", 263 => "00011101010111", 
    264 => "11101010000101", 265 => "00011001000001", 266 => "11001011011010", 
    267 => "11100010010101", 268 => "00111000011010", 269 => "11001100101101", 
    270 => "01010101011110", 271 => "10011010110011", 272 => "10011110000100", 
    273 => "00011010001000", 274 => "10110011100101", 275 => "00101001100011", 
    276 => "01100101001111", 277 => "11011010100111", 278 => "11100001111011", 
    279 => "01001010000100", 280 => "01010000011111", 281 => "01010010110111", 
    282 => "00010111110011", 283 => "00001001101010", 284 => "00100100100110", 
    285 => "00101101001110", 286 => "00010110000011", 287 => "01010101000100" );


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

entity infer_layer_4_weights_V_4 is
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

architecture arch of infer_layer_4_weights_V_4 is
    component infer_layer_4_weights_V_4_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_layer_4_weights_V_4_rom_U :  component infer_layer_4_weights_V_4_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;

