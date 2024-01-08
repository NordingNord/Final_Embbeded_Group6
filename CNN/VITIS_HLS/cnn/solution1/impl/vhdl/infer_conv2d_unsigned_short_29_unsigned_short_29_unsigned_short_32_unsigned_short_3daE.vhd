-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity infer_conv2d_unsigned_short_29_unsigned_short_29_unsigned_short_32_unsigned_short_3daE_rom is 
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


architecture rtl of infer_conv2d_unsigned_short_29_unsigned_short_29_unsigned_short_32_unsigned_short_3daE_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10101001000010", 1 => "10110000101010", 2 => "11010001001101", 
    3 => "11010000111100", 4 => "01100011001111", 5 => "01001011110111", 
    6 => "11101100101000", 7 => "00001101001110", 8 => "01000101010111", 
    9 => "00110110100111", 10 => "10111100011010", 11 => "00001100001111", 
    12 => "01000101000101", 13 => "00101000111010", 14 => "01000011010110", 
    15 => "00010001110000", 16 => "00111100101011", 17 => "11101101111101", 
    18 => "11001101011011", 19 => "00001111011000", 20 => "00101011111111", 
    21 => "01010011001011", 22 => "11001111001000", 23 => "11010110111000", 
    24 => "11101101111100", 25 => "11100110110110", 26 => "11001110101010", 
    27 => "00101011110110", 28 => "01001010110101", 29 => "01001001001100", 
    30 => "11001011001000", 31 => "11111000001111" );


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

entity infer_conv2d_unsigned_short_29_unsigned_short_29_unsigned_short_32_unsigned_short_3daE is
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

architecture arch of infer_conv2d_unsigned_short_29_unsigned_short_29_unsigned_short_32_unsigned_short_3daE is
    component infer_conv2d_unsigned_short_29_unsigned_short_29_unsigned_short_32_unsigned_short_3daE_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_conv2d_unsigned_short_29_unsigned_short_29_unsigned_short_32_unsigned_short_3daE_rom_U :  component infer_conv2d_unsigned_short_29_unsigned_short_29_unsigned_short_32_unsigned_short_3daE_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


