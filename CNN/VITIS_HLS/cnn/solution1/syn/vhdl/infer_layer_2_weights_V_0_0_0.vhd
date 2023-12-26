-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity infer_layer_2_weights_V_0_0_0_rom is 
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


architecture rtl of infer_layer_2_weights_V_0_0_0_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1111101110001111", 1 => "1111110001100010", 2 => "0001001001100100", 
    3 => "0001100111110001", 4 => "1110000010110111", 5 => "1110110011011101", 
    6 => "0000011011001110", 7 => "1111101000100001", 8 => "1111001100011000", 
    9 => "1111000001011010", 10 => "0000011011011011", 11 => "1111000100110001", 
    12 => "0001111110001011", 13 => "1101100100101011", 14 => "1111101111100111", 
    15 => "0000110100001110", 16 => "0000100100110000", 17 => "0001011111111011", 
    18 => "0011010000000111", 19 => "0011101000011011", 20 => "0001110010111001", 
    21 => "1101100111100111", 22 => "1111011100111111", 23 => "1111100111000010", 
    24 => "1111000111000100", 25 => "1011110110111111", 26 => "1110000110011101", 
    27 => "0000100100110101", 28 => "1101110000011010", 29 => "1110101101101011", 
    30 => "1100100100100010", 31 => "1110110111111010" );


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

entity infer_layer_2_weights_V_0_0_0 is
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

architecture arch of infer_layer_2_weights_V_0_0_0 is
    component infer_layer_2_weights_V_0_0_0_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_layer_2_weights_V_0_0_0_rom_U :  component infer_layer_2_weights_V_0_0_0_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


