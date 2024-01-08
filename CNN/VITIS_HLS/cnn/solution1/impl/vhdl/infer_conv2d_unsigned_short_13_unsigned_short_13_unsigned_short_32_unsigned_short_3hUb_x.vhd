-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity infer_conv2d_unsigned_short_13_unsigned_short_13_unsigned_short_32_unsigned_short_3hUb_x_rom is 
    generic(
             DWIDTH     : integer := 14; 
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


architecture rtl of infer_conv2d_unsigned_short_13_unsigned_short_13_unsigned_short_32_unsigned_short_3hUb_x_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11100100111010", 1 => "00000001010000", 2 => "00101001101000", 
    3 => "11000000111010", 4 => "00011101111001", 5 => "01100000001110", 
    6 => "10101100000000", 7 => "00100101111000", 8 => "00101001001001", 
    9 => "11001011110110", 10 => "00101110111100", 11 => "11110010101011", 
    12 => "11101011011100", 13 => "10111001011000", 14 => "00001100011101", 
    15 => "11100110011111", 16 => "10001111000011", 17 => "11110001011100", 
    18 => "00010101101000", 19 => "00001111000110", 20 => "01010111100110", 
    21 => "00111100110100", 22 => "00001010000100", 23 => "00010111011101", 
    24 => "11111001000100", 25 => "11000101100000", 26 => "01010000010110", 
    27 => "10111010011001", 28 => "01001111101001", 29 => "00111011111001", 
    30 => "01000001010001", 31 => "00000101111011" );


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

entity infer_conv2d_unsigned_short_13_unsigned_short_13_unsigned_short_32_unsigned_short_3hUb_x is
    generic (
        DataWidth : INTEGER := 14;
        AddressRange : INTEGER := 32;
        AddressWidth : INTEGER := 5);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of infer_conv2d_unsigned_short_13_unsigned_short_13_unsigned_short_32_unsigned_short_3hUb_x is
    component infer_conv2d_unsigned_short_13_unsigned_short_13_unsigned_short_32_unsigned_short_3hUb_x_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_conv2d_unsigned_short_13_unsigned_short_13_unsigned_short_32_unsigned_short_3hUb_x_rom_U :  component infer_conv2d_unsigned_short_13_unsigned_short_13_unsigned_short_32_unsigned_short_3hUb_x_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


