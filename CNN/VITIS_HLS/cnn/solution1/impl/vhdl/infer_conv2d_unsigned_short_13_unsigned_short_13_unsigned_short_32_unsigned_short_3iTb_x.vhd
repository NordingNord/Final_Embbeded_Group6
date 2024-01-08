-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity infer_conv2d_unsigned_short_13_unsigned_short_13_unsigned_short_32_unsigned_short_3iTb_x_rom is 
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


architecture rtl of infer_conv2d_unsigned_short_13_unsigned_short_13_unsigned_short_32_unsigned_short_3iTb_x_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "010010001110000", 1 => "000110111101110", 2 => "110011101111100", 
    3 => "110011110110110", 4 => "111011011110000", 5 => "000100100000101", 
    6 => "111011001011001", 7 => "001010111010010", 8 => "111010110110000", 
    9 => "000001101010100", 10 => "111011110010101", 11 => "110100101000000", 
    12 => "110010101100100", 13 => "110010100001111", 14 => "001010011010011", 
    15 => "000110011011101", 16 => "010001110001111", 17 => "000000000011000", 
    18 => "111111100111001", 19 => "111010010011000", 20 => "000101010100101", 
    21 => "000100000001011", 22 => "011010001010001", 23 => "011101110100100", 
    24 => "011101111110110", 25 => "110100011101011", 26 => "001100111101100", 
    27 => "001100001101001", 28 => "001100010101100", 29 => "000101100101101", 
    30 => "000100001011001", 31 => "110100101011011" );


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

entity infer_conv2d_unsigned_short_13_unsigned_short_13_unsigned_short_32_unsigned_short_3iTb_x is
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

architecture arch of infer_conv2d_unsigned_short_13_unsigned_short_13_unsigned_short_32_unsigned_short_3iTb_x is
    component infer_conv2d_unsigned_short_13_unsigned_short_13_unsigned_short_32_unsigned_short_3iTb_x_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_conv2d_unsigned_short_13_unsigned_short_13_unsigned_short_32_unsigned_short_3iTb_x_rom_U :  component infer_conv2d_unsigned_short_13_unsigned_short_13_unsigned_short_32_unsigned_short_3iTb_x_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


