-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity infer_layer_4_weights_V_1_0_16_rom is 
    generic(
             DWIDTH     : integer := 15; 
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


architecture rtl of infer_layer_4_weights_V_1_0_16_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "110000110110001", 1 => "001000001010000", 2 => "111000001000011", 
    3 => "001101110000000", 4 => "111100101111110", 5 => "001001010100110", 
    6 => "000000101110100", 7 => "001010100111011", 8 => "000111001010100", 
    9 => "110111100011111", 10 => "000001001001000", 11 => "110101000100000", 
    12 => "000111010101000", 13 => "001110011010111", 14 => "000010001000110", 
    15 => "000100011100011", 16 => "000110000000101", 17 => "001101110000111", 
    18 => "111001101011101", 19 => "111111011001000", 20 => "111011010100100", 
    21 => "111000100111101", 22 => "000010101110101", 23 => "110011101000011", 
    24 => "110101010000011", 25 => "000111111101000", 26 => "111001010101101", 
    27 => "001000001100101", 28 => "101110000011101", 29 => "111111110110111", 
    30 => "110011001001111", 31 => "111011011001011" );


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

entity infer_layer_4_weights_V_1_0_16 is
    generic (
        DataWidth : INTEGER := 15;
        AddressRange : INTEGER := 32;
        AddressWidth : INTEGER := 5);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of infer_layer_4_weights_V_1_0_16 is
    component infer_layer_4_weights_V_1_0_16_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_layer_4_weights_V_1_0_16_rom_U :  component infer_layer_4_weights_V_1_0_16_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


