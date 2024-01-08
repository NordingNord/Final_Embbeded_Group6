-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity infer_conv2d_unsigned_short_29_unsigned_short_29_unsigned_short_32_unsigned_short_3dYM_rom is 
    generic(
             DWIDTH     : integer := 16; 
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


architecture rtl of infer_conv2d_unsigned_short_29_unsigned_short_29_unsigned_short_32_unsigned_short_3dYM_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1110100110011011", 1 => "0000101001110011", 2 => "1110101000010110", 
    3 => "0001100000100101", 4 => "1111010000101001", 5 => "1110010010010100", 
    6 => "1110110001000110", 7 => "1110011110100001", 8 => "1111010110011110", 
    9 => "0001010100100111", 10 => "0001000100100110", 11 => "0001000111100000", 
    12 => "0001010100100101", 13 => "0010000001001001", 14 => "0000000110011101", 
    15 => "1111010011010001", 16 => "0000111010000000", 17 => "1111101111000001", 
    18 => "0101111001001010", 19 => "0010111000011001", 20 => "0000011111111011", 
    21 => "0001101100011110", 22 => "1110110010100101", 23 => "1111101011000100", 
    24 => "1111111111101100", 25 => "1111110111001110", 26 => "1111100110000010", 
    27 => "0001101000001010", 28 => "1011100000000001", 29 => "0010010001111111", 
    30 => "1101001110000001", 31 => "1111111110010001" );


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

entity infer_conv2d_unsigned_short_29_unsigned_short_29_unsigned_short_32_unsigned_short_3dYM is
    generic (
        DataWidth : INTEGER := 16;
        AddressRange : INTEGER := 32;
        AddressWidth : INTEGER := 5);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of infer_conv2d_unsigned_short_29_unsigned_short_29_unsigned_short_32_unsigned_short_3dYM is
    component infer_conv2d_unsigned_short_29_unsigned_short_29_unsigned_short_32_unsigned_short_3dYM_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_conv2d_unsigned_short_29_unsigned_short_29_unsigned_short_32_unsigned_short_3dYM_rom_U :  component infer_conv2d_unsigned_short_29_unsigned_short_29_unsigned_short_32_unsigned_short_3dYM_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


