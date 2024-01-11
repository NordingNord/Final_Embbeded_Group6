-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity infer_layer_6_weights_V_1_1_6_rom is 
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


architecture rtl of infer_layer_6_weights_V_1_1_6_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1111100111111001", 1 => "1111010111011000", 2 => "1111000000010111", 
    3 => "0000011010011010", 4 => "1111100111011001", 5 => "1111000001000010", 
    6 => "1110110011001011", 7 => "0000101001011001", 8 => "0000111100010011", 
    9 => "0001010111100000", 10 => "0001000101011010", 11 => "1111000001010110", 
    12 => "0000011011000111", 13 => "0000011101011110", 14 => "1111010001001111", 
    15 => "0000000101101111", 16 => "1110101110110100", 17 => "1110110101010010", 
    18 => "0000111100100110", 19 => "0001100111100100", 20 => "1111001100011111", 
    21 => "1111111111010101", 22 => "1111001000010000", 23 => "0001000010110111", 
    24 => "1111100111001111", 25 => "0000111001110100", 26 => "1110100010010111", 
    27 => "0000011011010000", 28 => "0000011011011110", 29 => "0000110001000001", 
    30 => "1111000000100011", 31 => "0001011011000111" );


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

entity infer_layer_6_weights_V_1_1_6 is
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

architecture arch of infer_layer_6_weights_V_1_1_6 is
    component infer_layer_6_weights_V_1_1_6_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_layer_6_weights_V_1_1_6_rom_U :  component infer_layer_6_weights_V_1_1_6_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


