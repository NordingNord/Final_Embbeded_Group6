-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity infer_conv2d_unsigned_short_13_unsigned_short_13_unsigned_short_32_unsigned_short_3fM4_rom is 
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


architecture rtl of infer_conv2d_unsigned_short_13_unsigned_short_13_unsigned_short_32_unsigned_short_3fM4_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11111111010010", 1 => "00011101111011", 2 => "01000001101011", 
    3 => "11110101101010", 4 => "10100110101001", 5 => "00010100111001", 
    6 => "10100000010010", 7 => "11011001010010", 8 => "11011111110010", 
    9 => "11011101111000", 10 => "11010101101010", 11 => "00101000011000", 
    12 => "11101111011011", 13 => "11011101111101", 14 => "00101111101001", 
    15 => "00111110000010", 16 => "11001010010111", 17 => "11010001001101", 
    18 => "11101100010110", 19 => "00011011010010", 20 => "00000111011001", 
    21 => "10100000000001", 22 => "00001111010000", 23 => "11100100111011", 
    24 => "01011011101011", 25 => "01011000000010", 26 => "00001101111110", 
    27 => "11100110000000", 28 => "01011011101111", 29 => "01000111101010", 
    30 => "10110101010011", 31 => "11111010101001" );


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

entity infer_conv2d_unsigned_short_13_unsigned_short_13_unsigned_short_32_unsigned_short_3fM4 is
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

architecture arch of infer_conv2d_unsigned_short_13_unsigned_short_13_unsigned_short_32_unsigned_short_3fM4 is
    component infer_conv2d_unsigned_short_13_unsigned_short_13_unsigned_short_32_unsigned_short_3fM4_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_conv2d_unsigned_short_13_unsigned_short_13_unsigned_short_32_unsigned_short_3fM4_rom_U :  component infer_conv2d_unsigned_short_13_unsigned_short_13_unsigned_short_32_unsigned_short_3fM4_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


