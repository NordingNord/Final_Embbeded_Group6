-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity infer_conv2d_1_layer_2_bias_rom is 
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


architecture rtl of infer_conv2d_1_layer_2_bias_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101000111101111000110111100", 
    1 => "00111101100000101001100010101110", 
    2 => "10111100111001111010111110000001", 
    3 => "00111100000011110011111000001111", 
    4 to 7=> "00000000000000000000000000000000", 
    8 => "10111110001001001101011110100011", 
    9 => "10111110000001001011100011111110", 
    10 => "10111101010101111001000101011110", 
    11 => "10111101001011001101010000010001", 
    12 => "10111011110000001001111111101010", 
    13 to 14=> "00000000000000000000000000000000", 
    15 => "00111100010110001010000010011011", 
    16 => "10111110000001001001001100000000", 
    17 => "10111101100111100010011010101000", 
    18 => "10111101010111100010011111001111", 
    19 => "10111101011001111100011001101111", 
    20 => "00000000000000000000000000000000", 
    21 => "10111100010000010111110010111100", 
    22 => "10111011101111001111001100100001", 
    23 => "10111101101010010101110111001001", 
    24 => "10111101011111110100001000111101", 
    25 => "00111101001110100011101011111100", 
    26 => "10111100110000100000001001101010", 
    27 => "10111100101100001001000001010011", 
    28 => "00000000000000000000000000000000", 
    29 => "10111100011110110001101000111101", 
    30 => "00111101100001111001010101010111", 
    31 => "00111011110100110000111010001001" );


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

entity infer_conv2d_1_layer_2_bias is
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

architecture arch of infer_conv2d_1_layer_2_bias is
    component infer_conv2d_1_layer_2_bias_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_conv2d_1_layer_2_bias_rom_U :  component infer_conv2d_1_layer_2_bias_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


