-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity infer_conv2d_unsigned_short_29_unsigned_short_29_unsigned_short_32_unsigned_short_3bsm_rom is 
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


architecture rtl of infer_conv2d_unsigned_short_29_unsigned_short_29_unsigned_short_32_unsigned_short_3bsm_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10100010000110", 1 => "00100001110111", 2 => "11101110100011", 
    3 => "00001111010101", 4 => "11110101111111", 5 => "10111000101100", 
    6 => "11100100001011", 7 => "00110011100010", 8 => "10111000001000", 
    9 => "00101111000101", 10 => "10100011101010", 11 => "11100001001111", 
    12 => "10101101000010", 13 => "01001011110001", 14 => "00010001110100", 
    15 => "11110011001110", 16 => "00100001101110", 17 => "11011100100100", 
    18 => "10111101010110", 19 => "10011101110101", 20 => "11111011010101", 
    21 => "01001101101001", 22 => "10111010001011", 23 => "00001001110011", 
    24 => "00101100000001", 25 => "01100001011110", 26 => "01100010010100", 
    27 => "01001111000111", 28 => "11010100001100", 29 => "00111111100101", 
    30 => "11111111110111", 31 => "11000111011100" );


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

entity infer_conv2d_unsigned_short_29_unsigned_short_29_unsigned_short_32_unsigned_short_3bsm is
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

architecture arch of infer_conv2d_unsigned_short_29_unsigned_short_29_unsigned_short_32_unsigned_short_3bsm is
    component infer_conv2d_unsigned_short_29_unsigned_short_29_unsigned_short_32_unsigned_short_3bsm_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_conv2d_unsigned_short_29_unsigned_short_29_unsigned_short_32_unsigned_short_3bsm_rom_U :  component infer_conv2d_unsigned_short_29_unsigned_short_29_unsigned_short_32_unsigned_short_3bsm_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


