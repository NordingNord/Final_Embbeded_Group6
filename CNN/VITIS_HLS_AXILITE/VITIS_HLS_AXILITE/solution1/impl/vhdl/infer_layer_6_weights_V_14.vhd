-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity infer_layer_6_weights_V_14_rom is 
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


architecture rtl of infer_layer_6_weights_V_14_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00100101100011", 1 => "00110111011111", 2 => "00111011110000", 
    3 => "00011011110110", 4 => "01001000111110", 5 => "11010011000010", 
    6 => "10010010011100", 7 => "00111100010011", 8 => "00111000010101", 
    9 => "11011011111101", 10 => "01001111111101", 11 => "01010010001000", 
    12 => "00100100110010", 13 => "00000000111001", 14 => "11011110110100", 
    15 => "00011100111100", 16 => "01010100010011", 17 => "01001011100110", 
    18 => "10111101001000", 19 => "10110101000010", 20 => "00011010110100", 
    21 => "01001111101011", 22 => "01011101110101", 23 => "11111001101110", 
    24 => "10011011010000", 25 => "11000001000001", 26 => "00101000111010", 
    27 => "01100111110001", 28 => "11011100010101", 29 => "10111011111110", 
    30 => "11110011010001", 31 => "00101000010010", 32 => "10010110001000", 
    33 => "11011000001011", 34 => "11011011011111", 35 => "00111001001101", 
    36 => "11010011101000", 37 => "11000110011000", 38 => "10011000111100", 
    39 => "11111101111111", 40 => "11100100111001", 41 => "10100000011100", 
    42 => "11010110110111", 43 => "10110001100110", 44 => "00010001100000", 
    45 => "00110101110111", 46 => "01000111111111", 47 => "10100010111100", 
    48 => "00000011001111", 49 => "11100100111100", 50 => "10100110000110", 
    51 => "00100011010110", 52 => "00100100111000", 53 => "00101010101000", 
    54 => "01001011001111", 55 => "10011011001110", 56 => "01001011010111", 
    57 => "11011101010100", 58 => "10110011001011", 59 => "10110110011101", 
    60 => "00101010110010", 61 => "00101110000101", 62 => "11000011111111", 
    63 => "10100010011000", 64 => "11101111001010", 65 => "11100100100100", 
    66 => "10101101001101", 67 => "00001010011011", 68 => "00000111100111", 
    69 => "11111011101111", 70 => "10001110000101", 71 => "01010100010011", 
    72 => "10110100110101", 73 => "00010000100010", 74 => "11111101110101", 
    75 => "01010000001100", 76 => "00011001110001", 77 => "01100110011101", 
    78 => "00001100101001", 79 => "00110110000100", 80 => "11011011100000", 
    81 => "01001010110111", 82 => "11101011000011", 83 => "00010110111011", 
    84 => "01100011111010", 85 => "11001101100100", 86 => "00011010000110", 
    87 => "11111100011110", 88 => "11101000000101", 89 => "00110010100101", 
    90 => "00000101001100", 91 => "11010001111000", 92 => "00001001010001", 
    93 => "11110100100110", 94 => "01010100000100", 95 => "11110010100111", 
    96 => "11011000101110", 97 => "00111111100101", 98 => "10110100101101", 
    99 => "00011011101111", 100 => "01001111011111", 101 => "01001001110101", 
    102 => "10101110101101", 103 => "00101010001001", 104 => "00100011001000", 
    105 => "01010101001001", 106 => "01010010101100", 107 => "01010110000011", 
    108 => "00000111011000", 109 => "11110010111000", 110 => "11111100001111", 
    111 => "10100110111101", 112 => "11011000001001", 113 => "11110001110010", 
    114 => "01010001100110", 115 => "01000101110101", 116 => "11100010110101", 
    117 => "11000011110110", 118 => "10110100111101", 119 => "10111011011010", 
    120 => "11101111111010", 121 => "01001100100101", 122 => "11000111011111", 
    123 => "01001111000001", 124 => "01100000100000", 125 => "01000101010111", 
    126 => "00011100100001", 127 => "01011001101010", 128 => "00011100110001", 
    129 => "11000010001011", 130 => "10010001101100", 131 => "10100000000101", 
    132 => "00100000011101", 133 => "01001100011110", 134 => "11101010000000", 
    135 => "00010000100101", 136 => "10101101000001", 137 => "10010111101010", 
    138 => "11110101011101", 139 => "00100111111000", 140 => "11100111001111", 
    141 => "11011000010111", 142 => "01001101001000", 143 => "11101100111111", 
    144 => "01011000001011", 145 => "11011010000011", 146 => "11010000101010", 
    147 => "00010100000001", 148 => "11110000000010", 149 => "00010001101100", 
    150 => "11110110100110", 151 => "01010101000100", 152 => "00001110101000", 
    153 => "11000101101100", 154 => "00100010000111", 155 => "01010100110001", 
    156 => "00001000000111", 157 => "11100010011000", 158 => "10100000110010", 
    159 => "01010001111011", 160 => "00000000000111", 161 => "00111001010000", 
    162 => "11011011100011", 163 => "11001111000101", 164 => "01010001011011", 
    165 => "00110101111111", 166 => "01001110001111", 167 => "01011000111001", 
    168 => "11101101100000", 169 => "00111110101101", 170 => "10111001010001", 
    171 => "00110001010111", 172 => "01110101110111", 173 => "11101100111101", 
    174 => "10011110001000", 175 => "10101011010111", 176 => "10001111000100", 
    177 => "11010010111010", 178 => "01011111010101", 179 => "11010100010000", 
    180 => "01011011011111", 181 => "01011101101101", 182 => "00111111111001", 
    183 => "11110000101001", 184 => "00000110000001", 185 => "00100101000101", 
    186 => "10110001100110", 187 => "00111110001100", 188 => "10111001110100", 
    189 => "00010011001010", 190 => "11010000010101", 191 => "10111001011111", 
    192 => "01001100100111", 193 => "00111010010011", 194 => "00101001111101", 
    195 => "01000000001111", 196 => "10101100100000", 197 => "11100110000101", 
    198 => "11100110001100", 199 => "00000000000001", 200 => "00011011111000", 
    201 => "00010011001100", 202 => "11110011100101", 203 => "00000111010110", 
    204 => "11100110101011", 205 => "01001010011011", 206 => "10111010001101", 
    207 => "00101011000010", 208 => "10011111010110", 209 => "00010000101100", 
    210 => "11010101010010", 211 => "00000001111000", 212 => "11110011111001", 
    213 => "10111010101110", 214 => "11000101010110", 215 => "11100011101101", 
    216 => "00010010111100", 217 => "00101101000110", 218 => "00101110111110", 
    219 => "00111010101111", 220 => "11110000010000", 221 => "11000101001111", 
    222 => "00110100011100", 223 => "11110010111110", 224 => "01011101111010", 
    225 => "11011110110100", 226 => "11000110011001", 227 => "10111111010100", 
    228 => "00101000100001", 229 => "11111100010101", 230 => "01000011110110", 
    231 => "00110111001110", 232 => "11111000111000", 233 => "01001000101110", 
    234 => "11110001000110", 235 => "00010000000111", 236 => "00010100001111", 
    237 => "10011000101000", 238 => "11011001011010", 239 => "00001011000001", 
    240 => "11011001000001", 241 => "11010101001001", 242 => "11001110011001", 
    243 => "11110101110101", 244 => "01000101101010", 245 => "10101010001001", 
    246 => "11100110001001", 247 => "11001001111100", 248 => "10100000101110", 
    249 => "10110000110001", 250 => "11011111111001", 251 => "10101011001111", 
    252 => "00000001111111", 253 => "00001111000000", 254 => "01100111101111", 
    255 => "10111001110011", 256 => "00011011011000", 257 => "11011011100011", 
    258 => "01010001001111", 259 => "10110110011011", 260 => "11000011110100", 
    261 => "01000100010110", 262 => "10011010100010", 263 => "11101110001010", 
    264 => "10110100010010", 265 => "01000001111100", 266 => "11110010111111", 
    267 => "00100101100001", 268 => "11110000111100", 269 => "10011110001011", 
    270 => "11011001110110", 271 => "00010010011110", 272 => "10010001110001", 
    273 => "10110000100111", 274 => "10100100000000", 275 => "01000110101101", 
    276 => "11001010100111", 277 => "11101101010110", 278 => "00111100010101", 
    279 => "11001100101010", 280 => "00101111100001", 281 => "10111100010101", 
    282 => "11001001000100", 283 => "01001011101100", 284 => "01100010001001", 
    285 => "01000010001110", 286 => "11100001100011", 287 => "11110100000110" );


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

entity infer_layer_6_weights_V_14 is
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

architecture arch of infer_layer_6_weights_V_14 is
    component infer_layer_6_weights_V_14_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_layer_6_weights_V_14_rom_U :  component infer_layer_6_weights_V_14_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;

