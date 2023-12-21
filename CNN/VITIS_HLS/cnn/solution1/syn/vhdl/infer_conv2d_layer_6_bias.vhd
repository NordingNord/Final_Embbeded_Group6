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
    0 => "10111100110000000100100010110111", 
    1 => "00111100101010011100111111100111", 
    2 => "10111100110101000110100101001001", 
    3 => "10111100110011111010111110111011", 
    4 => "10111100100101101111100100001011", 
    5 => "00000000000000000000000000000000", 
    6 => "00111101010001101011010000101110", 
    7 => "10111011110111111110011110000111", 
    8 => "00111100111001010011001011010011", 
    9 => "00111100110101011111010111110010", 
    10 => "10111100111001000001111001110011", 
    11 => "00000000000000000000000000000000", 
    12 => "10111100010001101000100001100010", 
    13 => "10111011111100010111100010100001", 
    14 => "00111100110001011111101100101101", 
    15 => "00111101000000001110001101011010", 
    16 => "10111011000101101001001000001100", 
    17 => "10111011110011001010101011001000", 
    18 => "10111011110001100100000100011011", 
    19 => "10111100010010101101010110100101", 
    20 => "10111100101000100111100000010110", 
    21 => "10111100011111100010101011110100", 
    22 => "00000000000000000000000000000000", 
    23 => "10111011100010000111001000110001", 
    24 => "10111100001101111010010001010000", 
    25 => "10111100011101111110110000110011", 
    26 => "10111011111010010001110000011000", 
    27 => "00000000000000000000000000000000", 
    28 => "10111100110111000101010010011111", 
    29 => "10111011000110101001100110111000", 
    30 => "10111100001000101011001111001100", 
    31 => "00111100000111101000001111000110" );


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


