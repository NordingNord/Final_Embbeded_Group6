-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity infer_conv2d_unsigned_short_13_unsigned_short_13_unsigned_short_32_unsigned_short_3eRU_rom is 
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


architecture rtl of infer_conv2d_unsigned_short_13_unsigned_short_13_unsigned_short_32_unsigned_short_3eRU_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11111011001000", 1 => "11100100101000", 2 => "01000001011111", 
    3 => "00101001111111", 4 => "11100011000110", 5 => "00001110010011", 
    6 => "00011010111100", 7 => "01011111000001", 8 => "01010010010011", 
    9 => "11110101011000", 10 => "10110110001100", 11 => "11000000000110", 
    12 => "11010000001111", 13 => "00001110101010", 14 => "11110111011001", 
    15 => "10100110101111", 16 => "11000100000100", 17 => "00111111101111", 
    18 => "10011101100010", 19 => "00011111010110", 20 => "11000111111110", 
    21 => "00100110000001", 22 => "01011111100000", 23 => "01010010011100", 
    24 => "00111111101101", 25 => "00110101011100", 26 => "10101001110100", 
    27 => "10100011100010", 28 => "01001100011100", 29 => "11100110011000", 
    30 => "10111010000010", 31 => "11010111101000" );


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

entity infer_conv2d_unsigned_short_13_unsigned_short_13_unsigned_short_32_unsigned_short_3eRU is
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

architecture arch of infer_conv2d_unsigned_short_13_unsigned_short_13_unsigned_short_32_unsigned_short_3eRU is
    component infer_conv2d_unsigned_short_13_unsigned_short_13_unsigned_short_32_unsigned_short_3eRU_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_conv2d_unsigned_short_13_unsigned_short_13_unsigned_short_32_unsigned_short_3eRU_rom_U :  component infer_conv2d_unsigned_short_13_unsigned_short_13_unsigned_short_32_unsigned_short_3eRU_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


