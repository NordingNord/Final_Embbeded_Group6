-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity infer_layer_4_weights_V_1_1_24_rom is 
    generic(
             DWIDTH     : integer := 17; 
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


architecture rtl of infer_layer_4_weights_V_1_1_24_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11000101010101100", 1 => "00001100110111101", 
    2 => "00000001000110110", 3 => "00000001111001100", 
    4 => "00000011100110111", 5 => "11101011011101101", 
    6 => "11111110001101000", 7 => "00000010011001101", 
    8 => "11111000101001110", 9 => "00000100000100110", 
    10 => "11111011110010111", 11 => "00000011001101000", 
    12 => "00000011011100111", 13 => "11111101011000101", 
    14 => "00000101010111011", 15 => "00001011101100010", 
    16 => "11111001111011000", 17 => "00001000001100010", 
    18 => "00111010101100011", 19 => "00011110100110110", 
    20 => "11111100000110001", 21 => "00000101111010010", 
    22 => "00000110101010001", 23 => "11110011000011011", 
    24 => "11110100110111110", 25 => "11010000110000100", 
    26 => "00001011101111011", 27 => "00000011101001110", 
    28 => "10111111001010011", 29 => "00000001100101000", 
    30 => "11000010111011111", 31 => "11110100100001000" );


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

entity infer_layer_4_weights_V_1_1_24 is
    generic (
        DataWidth : INTEGER := 17;
        AddressRange : INTEGER := 32;
        AddressWidth : INTEGER := 5);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of infer_layer_4_weights_V_1_1_24 is
    component infer_layer_4_weights_V_1_1_24_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_layer_4_weights_V_1_1_24_rom_U :  component infer_layer_4_weights_V_1_1_24_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


