-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity infer_conv2d_unsigned_short_29_unsigned_short_29_unsigned_short_32_unsigned_short_3cjv_rom is 
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


architecture rtl of infer_conv2d_unsigned_short_29_unsigned_short_29_unsigned_short_32_unsigned_short_3cjv_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00010001001001", 1 => "11000100111001", 2 => "00100010100000", 
    3 => "10100011101101", 4 => "11010000001101", 5 => "11110010001001", 
    6 => "10101110111010", 7 => "00101000101010", 8 => "11011011100011", 
    9 => "11011000110000", 10 => "00110101100111", 11 => "01001000000010", 
    12 => "00010110001001", 13 => "00000110110111", 14 => "11100100010101", 
    15 => "10010011110000", 16 => "00101100010111", 17 => "11111000011011", 
    18 => "10011010110001", 19 => "01000100000011", 20 => "11110110010011", 
    21 => "11101001111011", 22 => "11100111000111", 23 => "00111001001001", 
    24 => "01000011000110", 25 => "10110100011010", 26 => "01000010011000", 
    27 => "11010100000001", 28 => "00110010111100", 29 => "11101010110001", 
    30 => "01000110100101", 31 => "10011011011111" );


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

entity infer_conv2d_unsigned_short_29_unsigned_short_29_unsigned_short_32_unsigned_short_3cjv is
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

architecture arch of infer_conv2d_unsigned_short_29_unsigned_short_29_unsigned_short_32_unsigned_short_3cjv is
    component infer_conv2d_unsigned_short_29_unsigned_short_29_unsigned_short_32_unsigned_short_3cjv_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_conv2d_unsigned_short_29_unsigned_short_29_unsigned_short_32_unsigned_short_3cjv_rom_U :  component infer_conv2d_unsigned_short_29_unsigned_short_29_unsigned_short_32_unsigned_short_3cjv_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


