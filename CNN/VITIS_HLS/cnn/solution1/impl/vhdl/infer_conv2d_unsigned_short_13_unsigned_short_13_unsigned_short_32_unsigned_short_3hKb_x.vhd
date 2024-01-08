-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity infer_conv2d_unsigned_short_13_unsigned_short_13_unsigned_short_32_unsigned_short_3hKb_x_rom is 
    generic(
             DWIDTH     : integer := 15; 
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


architecture rtl of infer_conv2d_unsigned_short_13_unsigned_short_13_unsigned_short_32_unsigned_short_3hKb_x_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111101100001010", 1 => "000000110011101", 2 => "000001001000100", 
    3 => "000100110110010", 4 => "111110111110111", 5 => "001101111100101", 
    6 => "101100001000110", 7 => "001000110111100", 8 => "111000011100110", 
    9 => "000101110011101", 10 => "111101010100000", 11 => "110011111001000", 
    12 => "111110110111000", 13 => "001000000110100", 14 => "110011011000110", 
    15 => "110000000101011", 16 => "110101100011110", 17 => "110111010010011", 
    18 => "111011111110101", 19 => "111011101011101", 20 => "111100001011100", 
    21 => "000010011110111", 22 => "111000001110000", 23 => "100010110111110", 
    24 => "101101010101000", 25 => "001101000101100", 26 => "101001001001100", 
    27 => "001010101111011", 28 => "111101101100100", 29 => "111100010111111", 
    30 => "111101011101111", 31 => "000110011111011" );


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

entity infer_conv2d_unsigned_short_13_unsigned_short_13_unsigned_short_32_unsigned_short_3hKb_x is
    generic (
        DataWidth : INTEGER := 15;
        AddressRange : INTEGER := 32;
        AddressWidth : INTEGER := 5);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of infer_conv2d_unsigned_short_13_unsigned_short_13_unsigned_short_32_unsigned_short_3hKb_x is
    component infer_conv2d_unsigned_short_13_unsigned_short_13_unsigned_short_32_unsigned_short_3hKb_x_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_conv2d_unsigned_short_13_unsigned_short_13_unsigned_short_32_unsigned_short_3hKb_x_rom_U :  component infer_conv2d_unsigned_short_13_unsigned_short_13_unsigned_short_32_unsigned_short_3hKb_x_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


