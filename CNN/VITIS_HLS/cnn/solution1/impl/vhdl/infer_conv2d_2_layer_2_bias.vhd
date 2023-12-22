-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity infer_conv2d_2_layer_2_bias_rom is 
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


architecture rtl of infer_conv2d_2_layer_2_bias_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101001101110011100001100100", 
    1 => "10111011010001000100100000000101", 
    2 => "10111100000100101010111010000110", 
    3 => "10111100111001001001001010000100", 
    4 => "10111100000101110010010110011010", 
    5 => "10111100010111110000010011101011", 
    6 => "10111011010101110001010111101111", 
    7 => "00000000000000000000000000000000", 
    8 => "10111100111001001101010100010101", 
    9 to 10=> "00000000000000000000000000000000", 
    11 => "10111100001001011111001110000001", 
    12 => "10111011111111111010110010101111", 
    13 => "10111101011101001000001110000101", 
    14 => "10111100000011100000101101001010", 
    15 => "10111101101011011110100100101001", 
    16 => "00000000000000000000000000000000", 
    17 => "10111101010001110000011000110000", 
    18 => "00111101110001000110011101110000", 
    19 => "10111011111110000000101000000010", 
    20 => "10111101000000110101011001010110", 
    21 => "10111101000110111000000110100011", 
    22 to 24=> "00000000000000000000000000000000", 
    25 => "00111011010111001101111110110111", 
    26 to 27=> "00000000000000000000000000000000", 
    28 => "00111101010100101000001010001010", 
    29 => "10111101000001110111100101100101", 
    30 => "00111101000100111111011110100111", 
    31 => "00111100011011001101001101110011" );


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

entity infer_conv2d_2_layer_2_bias is
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

architecture arch of infer_conv2d_2_layer_2_bias is
    component infer_conv2d_2_layer_2_bias_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_conv2d_2_layer_2_bias_rom_U :  component infer_conv2d_2_layer_2_bias_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


