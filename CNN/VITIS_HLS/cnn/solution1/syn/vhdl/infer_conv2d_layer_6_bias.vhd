-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity infer_conv2d_layer_6_bias_rom is 
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


architecture rtl of infer_conv2d_layer_6_bias_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00000000000000000000000000000000", 
    1 => "10111100110011010110000000101100", 
    2 => "10111100101001111110000001110010", 
    3 => "10111100000011010010000100010010", 
    4 => "10111011110000111100010101001111", 
    5 => "10111100011110110100010100111001", 
    6 => "10111011011000100001011101100111", 
    7 => "00111101001100100001100110110100", 
    8 => "10111011111110000111010000110000", 
    9 => "00111101101011101011011001010011", 
    10 => "10111011111101110110100011100011", 
    11 => "10111100100000110010101001110101", 
    12 => "10111100100010000100100000110000", 
    13 => "10111100101000011011011000111010", 
    14 => "10111100000100110111100011010100", 
    15 => "10111101010010010101101001000010", 
    16 => "10111011110100010000110101000110", 
    17 => "10111100101111001000010001011010", 
    18 => "00000000000000000000000000000000", 
    19 => "10111100100010100001111001110011", 
    20 => "10111100111001001101100001110111", 
    21 => "10111100011100100100100110100001", 
    22 => "10111101010100000000101110111010", 
    23 => "00111101000000011010111101111110", 
    24 => "10111011101000111000011010101001", 
    25 => "10111101000001011011111010010101", 
    26 => "10111100000011100100000001101100", 
    27 => "00111100000001110111001010011000", 
    28 => "10111011110001001100001011111011", 
    29 => "10111100100010000010000011100001", 
    30 => "10111100101010100101110101100010", 
    31 => "10111100100010101011001011000100" );


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

entity infer_conv2d_layer_6_bias is
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

architecture arch of infer_conv2d_layer_6_bias is
    component infer_conv2d_layer_6_bias_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_conv2d_layer_6_bias_rom_U :  component infer_conv2d_layer_6_bias_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


