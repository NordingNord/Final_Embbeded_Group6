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
    0 => "10111100010011110111010011110000", 
    1 => "00111100010101110000101111111000", 
    2 => "00111101100101100010011101111101", 
    3 => "10111101000001111100010101011010", 
    4 => "00111101011001110101010100100010", 
    5 => "10111011001101011101110100000100", 
    6 => "00111101101000010001100100011010", 
    7 => "10111100000100110111000010011111", 
    8 => "00000000000000000000000000000000", 
    9 => "00111101011010010011101010110101", 
    10 => "10111100011001000010011001111010", 
    11 => "00111101011011100110010010100110", 
    12 => "10111100101101001000111111111010", 
    13 => "10111100111111010100111111100101", 
    14 => "00111101110101000101010101011001", 
    15 => "10111011001001010011011100011101", 
    16 => "10111100111110001111000100001001", 
    17 => "00111100101110011111100101010000", 
    18 => "00000000000000000000000000000000", 
    19 => "10111100010101111011111011100000", 
    20 => "10111011011011001111001110001010", 
    21 => "10111011100111110011011101111111", 
    22 => "00000000000000000000000000000000", 
    23 => "10111100010101011001000111010101", 
    24 => "00111101010011001011110000111101", 
    25 => "00111011110000000001011110110011", 
    26 => "00111101100010001101001100101101", 
    27 => "10111011001111101101001110000110", 
    28 => "10111100001111101111000101100101", 
    29 => "00000000000000000000000000000000", 
    30 => "10111101001000011000001100010001", 
    31 => "10111100001101101011010110111100" );


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


