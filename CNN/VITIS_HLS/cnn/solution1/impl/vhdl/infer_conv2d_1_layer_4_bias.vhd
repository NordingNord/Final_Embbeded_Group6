-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity infer_conv2d_1_layer_4_bias_rom is 
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


architecture rtl of infer_conv2d_1_layer_4_bias_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111011011111001110011000110000", 
    1 => "10111101001100100000011011001101", 
    2 => "10111100101100011001011101101001", 
    3 => "00111101011101011010010010101110", 
    4 => "10111100011011000001000110100101", 
    5 => "10111100100001000011101101110101", 
    6 => "10111100011011000110011100110000", 
    7 => "10111100000011000111110101100110", 
    8 => "10111100001100100111110100110010", 
    9 => "00000000000000000000000000000000", 
    10 => "10111011110011001101011101010010", 
    11 => "00000000000000000000000000000000", 
    12 => "10111100011010011101011001101110", 
    13 => "10111100111011001100111110100011", 
    14 => "00000000000000000000000000000000", 
    15 => "10111011100001001001100110111100", 
    16 => "10111100101000000100101100010111", 
    17 => "10111100101001011001001001101010", 
    18 to 20=> "00000000000000000000000000000000", 
    21 => "00111010001101111000001101000110", 
    22 => "10111100010001110000100000100011", 
    23 => "00000000000000000000000000000000", 
    24 => "10111100000011000001001010000101", 
    25 => "10111101011100001010100001001010", 
    26 => "00000000000000000000000000000000", 
    27 => "10111011111011110111100111010000", 
    28 => "10111100101011000010000101011010", 
    29 => "10111100001000010100101111001000", 
    30 => "10111011101001011001001110011010", 
    31 => "10111100001100101111001111010011" );


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

entity infer_conv2d_1_layer_4_bias is
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

architecture arch of infer_conv2d_1_layer_4_bias is
    component infer_conv2d_1_layer_4_bias_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_conv2d_1_layer_4_bias_rom_U :  component infer_conv2d_1_layer_4_bias_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


