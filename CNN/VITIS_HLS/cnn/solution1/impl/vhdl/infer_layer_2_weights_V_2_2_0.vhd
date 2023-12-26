-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity infer_layer_2_weights_V_2_2_0_rom is 
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


architecture rtl of infer_layer_2_weights_V_2_2_0_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1111101111001011", 1 => "1110100101010100", 2 => "1110000101111001", 
    3 => "0001110101011000", 4 => "1110101111100101", 5 => "0001100111100011", 
    6 => "0001011000111110", 7 => "0000101011001100", 8 => "1111000000010111", 
    9 => "1111100110111010", 10 => "0001001111010110", 11 => "1111111011000111", 
    12 => "1111111111100000", 13 => "0010001101011111", 14 => "1111010111100000", 
    15 => "0010100000001111", 16 => "0001100010111000", 17 => "0001011010111100", 
    18 => "1100000001111100", 19 => "1011110110111110", 20 => "0010110110000000", 
    21 => "0010011111000101", 22 => "1110101010001101", 23 => "1111001000101000", 
    24 => "1111010000111101", 25 => "0010001000110011", 26 => "1110011111111001", 
    27 => "1111101010001000", 28 => "0010011000010101", 29 => "0001110100000001", 
    30 => "0010011110001011", 31 => "1110100100000110" );


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

entity infer_layer_2_weights_V_2_2_0 is
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

architecture arch of infer_layer_2_weights_V_2_2_0 is
    component infer_layer_2_weights_V_2_2_0_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_layer_2_weights_V_2_2_0_rom_U :  component infer_layer_2_weights_V_2_2_0_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


