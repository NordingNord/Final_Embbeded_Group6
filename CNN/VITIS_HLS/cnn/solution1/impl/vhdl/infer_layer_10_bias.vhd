-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity infer_layer_10_bias_rom is 
    generic(
             DWIDTH     : integer := 32; 
             AWIDTH     : integer := 5; 
             MEM_SIZE    : integer := 32
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of infer_layer_10_bias_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111100111100110011011111000011", 
    1 => "10111011110111110001101000110010", 
    2 => "10111100100110000010010010101111", 
    3 => "00111101001110111011000101111111", 
    4 => "00111011110101110011000100010011", 
    5 => "00111101011110101001100101010000", 
    6 => "10111100000010110001011010011010", 
    7 => "00111100100100101101100001000111", 
    8 => "10111100000001100000110111101110", 
    9 => "00000000000000000000000000000000", 
    10 => "10111100100010110011011000101100", 
    11 => "10111100011111011011000111001000", 
    12 => "00111100101111100011101000000001", 
    13 => "00111011110101100101111010001001", 
    14 => "10111100010101101000110111001100", 
    15 => "10111011010000111010111101010100", 
    16 => "10111100000101010001001000110111", 
    17 => "00111100100001010001101111110110", 
    18 => "00111101011011111110100110110101", 
    19 => "00111101110000111101000110011000", 
    20 => "10111101000101001011100001101101", 
    21 => "10111100100001011100000101000001", 
    22 => "00000000000000000000000000000000", 
    23 => "00111010100100110011110100010000", 
    24 => "00111101011000100101000111010000", 
    25 => "10111011011011000100110100100101", 
    26 => "10111011100110001001101101100110", 
    27 => "10111011100100000110010110000111", 
    28 => "00111100101010101110010001101100", 
    29 => "00111011101111000000001010011111", 
    30 => "10111100100111000010110010011101", 
    31 => "10111011001011011111101111101001" );


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

entity infer_layer_10_bias is
    generic (
        DataWidth : INTEGER := 32;
        AddressRange : INTEGER := 32;
        AddressWidth : INTEGER := 5);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of infer_layer_10_bias is
    component infer_layer_10_bias_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_layer_10_bias_rom_U :  component infer_layer_10_bias_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


