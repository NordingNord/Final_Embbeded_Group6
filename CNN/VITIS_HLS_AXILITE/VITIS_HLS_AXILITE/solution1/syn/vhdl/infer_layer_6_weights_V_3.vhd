-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity infer_layer_6_weights_V_3_rom is 
    generic(
             DWIDTH     : integer := 16; 
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


architecture rtl of infer_layer_6_weights_V_3_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0001000010010111", 1 => "1110100010001001", 2 => "0001100011010001", 
    3 => "0001001100001101", 4 => "1110011010110110", 5 => "0000110010100001", 
    6 => "0010110001011110", 7 => "0001000101011011", 8 => "1111001011011110", 
    9 => "0000101001011011", 10 => "1111111011000101", 11 => "0000101000111011", 
    12 => "0001010000000100", 13 => "1111001011011111", 14 => "1111101001110011", 
    15 => "0000101100000111", 16 => "1110011000111111", 17 => "0000100100100011", 
    18 => "0001010110011011", 19 => "1111001110010011", 20 => "0001011111001101", 
    21 => "0001010000110110", 22 => "0000010101011011", 23 => "1111011100110111", 
    24 => "0001000010001100", 25 => "0001100101100000", 26 => "1111111110010000", 
    27 => "1110101110000111", 28 => "1110100011100101", 29 => "0000000011100010", 
    30 => "0000101000110101", 31 => "1111011110110110", 32 => "1110011110111011", 
    33 => "0001010101101011", 34 => "0010000101101001", 35 => "0000001110001001", 
    36 => "1110100111110101", 37 => "1111001101110000", 38 => "0000100111010010", 
    39 => "0000011000000100", 40 => "1110011111100110", 41 => "1111001010011100", 
    42 => "1111100101101100", 43 => "1110011011011001", 44 => "0001110100000011", 
    45 => "0001010111000011", 46 => "1110100010100111", 47 => "1110010101101110", 
    48 => "1111100000110010", 49 => "1111011011011111", 50 => "1111100000111110", 
    51 => "0000111010000001", 52 => "0000000011010001", 53 => "0001000011001100", 
    54 => "0010111010100001", 55 => "0001110000011000", 56 => "0000110111101101", 
    57 => "0000111111110110", 58 => "0000001100111011", 59 => "0000001101001100", 
    60 => "0000010111001001", 61 => "0000101011001000", 62 => "0001000011000010", 
    63 => "1110110011101111", 64 => "1110100010010100", 65 => "1110100000101100", 
    66 => "0000111110101000", 67 => "1110100011011100", 68 => "0001001011011001", 
    69 => "1111001101110111", 70 => "0000010000010110", 71 => "1110101011111010", 
    72 => "0000000110110000", 73 => "1111110101011111", 74 => "0000100101111011", 
    75 => "1110011011110000", 76 => "0000011101000111", 77 => "0001000000100111", 
    78 => "0000010100111101", 79 => "1110011000011101", 80 => "0000011000001000", 
    81 => "1110100110010110", 82 => "0001010011000001", 83 => "1111011101011000", 
    84 => "1111000100011100", 85 => "1111111000101100", 86 => "1110110111001011", 
    87 => "0001111100110101", 88 => "0010100001101111", 89 => "1110010111110001", 
    90 => "0010010001010100", 91 => "0000101011010111", 92 => "1110011110110101", 
    93 => "0000100111110001", 94 => "1111010110011111", 95 => "0001011100101010", 
    96 => "1111100101000000", 97 => "0000101001011001", 98 => "1101111010001011", 
    99 => "1111111001010100", 100 => "1111000100010001", 101 => "0001000110111010", 
    102 => "0000000101101111", 103 => "0001010001100111", 104 => "1111011001000101", 
    105 => "1110100010111100", 106 => "0000101010111110", 107 => "1111100011100000", 
    108 => "1110000110001001", 109 => "0000000000110100", 110 => "0000110000011110", 
    111 => "1111111110110110", 112 => "1110110101010000", 113 => "0000001111100010", 
    114 => "0000001100011000", 115 => "0001011101101010", 116 => "0000010110110100", 
    117 => "1110101110100000", 118 => "0001000010100001", 119 => "0000101111011011", 
    120 => "1110101001011111", 121 => "0001010110100111", 122 => "1110111011000111", 
    123 => "0000110000101001", 124 => "0000111010110010", 125 => "0000010111010110", 
    126 => "1111100011101111", 127 => "0001001100001011", 128 => "0000110101110111", 
    129 => "1110101000110101", 130 => "0001010010111110", 131 => "0000100110000011", 
    132 => "0000100111100110", 133 => "0001001110100010", 134 => "0001110000111001", 
    135 => "0000000101101000", 136 => "1111010111011110", 137 => "1111001000010000", 
    138 => "0000000101110111", 139 => "1110010011110000", 140 => "0011000010110001", 
    141 => "0010111000111110", 142 => "0001011010101110", 143 => "1110101110111110", 
    144 => "0000100111001111", 145 => "0000100110110000", 146 => "0000000001101010", 
    147 => "0001010010100011", 148 => "1110100011010011", 149 => "0000111101000111", 
    150 => "0001010001010111", 151 => "0000111001111111", 152 => "1110010001000111", 
    153 => "1111010001111111", 154 => "0000111110100100", 155 => "1110101001110001", 
    156 => "0000100110111100", 157 => "0000111010011001", 158 => "1111000011100011", 
    159 => "1111101010111101", 160 => "1110111110100110", 161 => "1111000111110011", 
    162 => "0011010110111001", 163 => "0000011000011010", 164 => "0000001101101011", 
    165 => "1110101011110010", 166 => "0000011101010110", 167 => "1110111110000101", 
    168 => "0000100011011000", 169 => "1110110101101101", 170 => "0000001110001011", 
    171 => "0000110010110000", 172 => "0010000110000101", 173 => "0000010010111011", 
    174 => "0000000001101011", 175 => "0001010111110100", 176 => "0000100101110010", 
    177 => "1101111110101101", 178 => "1111110010110111", 179 => "1110100001100100", 
    180 => "0000111000011111", 181 => "0000001000111010", 182 => "0010000100100100", 
    183 => "0100000000010011", 184 => "1111011100001110", 185 => "0000011111110100", 
    186 => "0000111101111011", 187 => "0000001111000011", 188 => "1110011100100010", 
    189 => "1111000101100000", 190 => "1111001100011011", 191 => "0001001001111111", 
    192 => "1110111011100110", 193 => "0000000110011100", 194 => "1101101100000011", 
    195 => "1111000100110011", 196 => "0000001110001001", 197 => "1110110001000111", 
    198 => "0000100000100110", 199 => "1110011010010000", 200 => "0001011010010100", 
    201 => "0000110001110010", 202 => "1110111111101001", 203 => "1111010111010010", 
    204 => "1101001001100110", 205 => "1110011100000100", 206 => "1111000101010011", 
    207 => "0000110111010000", 208 => "0001010110011010", 209 => "0000100001101001", 
    210 => "1111000101110111", 211 => "1111001000101011", 212 => "0000010011010101", 
    213 => "1110101100010000", 214 => "1111000000010100", 215 => "1111000001110101", 
    216 => "0001010111100001", 217 => "1110101100010010", 218 => "1111101000101000", 
    219 => "1111100001101010", 220 => "0000100001010011", 221 => "1110111110000010", 
    222 => "0000100000001011", 223 => "1111100101000011", 224 => "0000001000101001", 
    225 => "1111111010010101", 226 => "1111011110011100", 227 => "0000110110011011", 
    228 => "0000000000010110", 229 => "1110011101000110", 230 => "0001111010111111", 
    231 => "0000110000111100", 232 => "1111000010011010", 233 => "0001000110111011", 
    234 => "1111010101001101", 235 => "0001000101111100", 236 => "0001011001101010", 
    237 => "0001111101011011", 238 => "1111011110110000", 239 => "0001010001001001", 
    240 => "0000110011001010", 241 => "0000000001000011", 242 => "0000010010001111", 
    243 => "0000010000111101", 244 => "1111110011110111", 245 => "1111101111100000", 
    246 => "0001010111011100", 247 => "1110100001001001", 248 => "0000110100101101", 
    249 => "1110001001000110", 250 => "0000001110001101", 251 => "0001000011011101", 
    252 => "0001011110110110", 253 => "1111111000101000", 254 => "1111101011110011", 
    255 => "0001011001110110", 256 => "0000011000001100", 257 => "0001000010111001", 
    258 => "1111100110100101", 259 => "1110100010001111", 260 => "0001100010010101", 
    261 => "0001001000111000", 262 => "0001000100000111", 263 => "0001000100100110", 
    264 => "1111001101001111", 265 => "0000101110101111", 266 => "1111111110111101", 
    267 => "1110101001100001", 268 => "1111011111000101", 269 => "1111001001010110", 
    270 => "0001100100100011", 271 => "1110111100010000", 272 => "1110011101110001", 
    273 => "1110111000101011", 274 => "0001001101100110", 275 => "1111100110100001", 
    276 => "1111110010011100", 277 => "0000001100110011", 278 => "0010011010011111", 
    279 => "0000111001101000", 280 => "0100100110001010", 281 => "0000001011001000", 
    282 => "0001000010000001", 283 => "0001001001110101", 284 => "0000111111110000", 
    285 => "1111001110010111", 286 => "0000011010110011", 287 => "0000100110000010" );


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

entity infer_layer_6_weights_V_3 is
    generic (
        DataWidth : INTEGER := 16;
        AddressRange : INTEGER := 288;
        AddressWidth : INTEGER := 9);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of infer_layer_6_weights_V_3 is
    component infer_layer_6_weights_V_3_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_layer_6_weights_V_3_rom_U :  component infer_layer_6_weights_V_3_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;

