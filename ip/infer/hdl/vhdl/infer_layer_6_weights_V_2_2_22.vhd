-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity infer_layer_6_weights_V_2_2_22_rom is 
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


architecture rtl of infer_layer_6_weights_V_2_2_22_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00000010011111001", 1 => "11111000011011001", 
    2 => "11100010101100101", 3 => "00001011101110010", 
    4 => "00000111111100110", 5 => "11110100100110010", 
    6 => "11101101011101100", 7 => "11111011111111010", 
    8 => "00001010000001010", 9 => "11111101011101001", 
    10 => "11111000011110100", 11 => "00001001000100011", 
    12 => "11111101010011100", 13 => "00000110011101101", 
    14 => "11110100001001011", 15 => "11101101000111001", 
    16 => "11111001110110011", 17 => "00000100110100010", 
    18 => "11111000011000101", 19 => "11110101100111100", 
    20 => "11111011111011111", 21 => "11110111110001011", 
    22 => "11110011110000110", 23 => "11101010010011110", 
    24 => "00000011001110001", 25 => "00000100110010001", 
    26 => "11110101101100110", 27 => "00001011111110010", 
    28 => "11111111100100011", 29 => "00000100000000101", 
    30 => "11111101001110000", 31 => "00000001101101100" );


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

entity infer_layer_6_weights_V_2_2_22 is
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

architecture arch of infer_layer_6_weights_V_2_2_22 is
    component infer_layer_6_weights_V_2_2_22_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_layer_6_weights_V_2_2_22_rom_U :  component infer_layer_6_weights_V_2_2_22_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


