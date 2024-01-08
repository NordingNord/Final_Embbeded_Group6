-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity infer_conv2d_unsigned_short_29_unsigned_short_29_unsigned_short_32_unsigned_short_3pcA_rom is 
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


architecture rtl of infer_conv2d_unsigned_short_29_unsigned_short_29_unsigned_short_32_unsigned_short_3pcA_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "01010011001100", 1 => "01000001011110", 2 => "00010111011010", 
    3 => "00000011111111", 4 => "00000000011000", 5 => "00010110010011", 
    6 => "10110111011010", 7 => "11010111111000", 8 => "00011000111110", 
    9 => "11001000111001", 10 => "10011000101001", 11 => "11000011111101", 
    12 => "00011011000011", 13 => "00010101001001", 14 => "00110100100100", 
    15 => "11011000111111", 16 => "00110011011101", 17 => "10111001010000", 
    18 => "01000100100001", 19 => "00110010100011", 20 => "11011100110001", 
    21 => "00100000100101", 22 => "00001110001000", 23 => "11011010110110", 
    24 => "01100011001100", 25 => "01010101110111", 26 => "11101001000110", 
    27 => "01001110000000", 28 => "10111001000101", 29 => "00110001110100", 
    30 => "11111110110001", 31 => "01010110011100" );


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

entity infer_conv2d_unsigned_short_29_unsigned_short_29_unsigned_short_32_unsigned_short_3pcA is
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

architecture arch of infer_conv2d_unsigned_short_29_unsigned_short_29_unsigned_short_32_unsigned_short_3pcA is
    component infer_conv2d_unsigned_short_29_unsigned_short_29_unsigned_short_32_unsigned_short_3pcA_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_conv2d_unsigned_short_29_unsigned_short_29_unsigned_short_32_unsigned_short_3pcA_rom_U :  component infer_conv2d_unsigned_short_29_unsigned_short_29_unsigned_short_32_unsigned_short_3pcA_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


