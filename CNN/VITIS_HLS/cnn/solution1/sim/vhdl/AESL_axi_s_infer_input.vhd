-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;
use ieee.std_logic_textio.all;
use std.textio.all;


entity AESL_axi_s_infer_input is
  generic (
      constant    TV_IN_infer_input_TDATA : STRING (1 to 57) := "../tv/cdatafile/c.infer.autotvin_infer_input_V_data_V.dat";
      constant    INGRESS_STATUS_infer_input_TDATA : STRING (1 to 64) := "../tv/stream_size/stream_ingress_status_infer_input_V_data_V.dat";
      constant    TV_IN_infer_input_TKEEP : STRING (1 to 57) := "../tv/cdatafile/c.infer.autotvin_infer_input_V_keep_V.dat";
      constant    INGRESS_STATUS_infer_input_TKEEP : STRING (1 to 64) := "../tv/stream_size/stream_ingress_status_infer_input_V_keep_V.dat";
      constant    TV_IN_infer_input_TSTRB : STRING (1 to 57) := "../tv/cdatafile/c.infer.autotvin_infer_input_V_strb_V.dat";
      constant    INGRESS_STATUS_infer_input_TSTRB : STRING (1 to 64) := "../tv/stream_size/stream_ingress_status_infer_input_V_strb_V.dat";
      constant    TV_IN_infer_input_TUSER : STRING (1 to 57) := "../tv/cdatafile/c.infer.autotvin_infer_input_V_user_V.dat";
      constant    INGRESS_STATUS_infer_input_TUSER : STRING (1 to 64) := "../tv/stream_size/stream_ingress_status_infer_input_V_user_V.dat";
      constant    TV_IN_infer_input_TLAST : STRING (1 to 57) := "../tv/cdatafile/c.infer.autotvin_infer_input_V_last_V.dat";
      constant    INGRESS_STATUS_infer_input_TLAST : STRING (1 to 64) := "../tv/stream_size/stream_ingress_status_infer_input_V_last_V.dat";
      constant    TV_IN_infer_input_TID : STRING (1 to 55) := "../tv/cdatafile/c.infer.autotvin_infer_input_V_id_V.dat";
      constant    INGRESS_STATUS_infer_input_TID : STRING (1 to 62) := "../tv/stream_size/stream_ingress_status_infer_input_V_id_V.dat";
      constant    TV_IN_infer_input_TDEST : STRING (1 to 57) := "../tv/cdatafile/c.infer.autotvin_infer_input_V_dest_V.dat";
      constant    INGRESS_STATUS_infer_input_TDEST : STRING (1 to 64) := "../tv/stream_size/stream_ingress_status_infer_input_V_dest_V.dat";
      constant    INTERFACE_TYPE : STRING (1 to 5) := "axi_s";
      constant    AUTOTB_TRANSACTION_NUM : INTEGER := 10
  );
  port (
      clk         :   IN  STD_LOGIC;
      reset       :   IN  STD_LOGIC;
    TRAN_infer_input_TDATA : OUT STD_LOGIC_VECTOR (32 - 1 downto 0);
    infer_input_TDATA_trans_num : OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
    TRAN_infer_input_TKEEP : OUT STD_LOGIC_VECTOR (4 - 1 downto 0);
    infer_input_TKEEP_trans_num : OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
    TRAN_infer_input_TSTRB : OUT STD_LOGIC_VECTOR (4 - 1 downto 0);
    infer_input_TSTRB_trans_num : OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
    TRAN_infer_input_TUSER : OUT STD_LOGIC_VECTOR (2 - 1 downto 0);
    infer_input_TUSER_trans_num : OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
    TRAN_infer_input_TLAST : OUT STD_LOGIC_VECTOR (1 - 1 downto 0);
    infer_input_TLAST_trans_num : OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
    TRAN_infer_input_TID : OUT STD_LOGIC_VECTOR (5 - 1 downto 0);
    infer_input_TID_trans_num : OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
    TRAN_infer_input_TDEST : OUT STD_LOGIC_VECTOR (6 - 1 downto 0);
    infer_input_TDEST_trans_num : OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
    TRAN_infer_input_TVALID : OUT STD_LOGIC;
    TRAN_infer_input_TREADY : IN STD_LOGIC;
      ready     : IN   STD_LOGIC;
      done      : IN   STD_LOGIC
  );
end AESL_axi_s_infer_input;

architecture behav of AESL_axi_s_infer_input is
------------------------Local signal-------------------
  signal reg_infer_input_TVALID :   STD_LOGIC;
  signal TRAN_infer_input_TVALID_temp : STD_LOGIC;
  signal TRAN_infer_input_TVALID_wire: STD_LOGIC;
  signal  infer_input_TDATA_mInPtr  :   STD_LOGIC_VECTOR (11 downto 0) := (others => '0');
  signal  infer_input_TDATA_mOutPtr :   STD_LOGIC_VECTOR (11 downto 0) := (others => '0');
  signal  infer_input_TDATA_empty_n  :   STD_LOGIC;
  signal  infer_input_TDATA_full_n   :   STD_LOGIC;
  type infer_input_TDATA_arr2D is array(0 to 900) of STD_LOGIC_VECTOR(32 - 1 downto 0);
  signal infer_input_TDATA_mem :   infer_input_TDATA_arr2D := (others => (others => '0'));
  signal infer_input_TDATA_ingress_status :  INTEGER;
  signal infer_input_TDATA_ingress_status_bit :  STD_LOGIC;

  signal infer_input_TDATA_in_i : INTEGER;
  signal infer_input_TDATA_in_end : STD_LOGIC;
  signal infer_input_TDATA_in_end_reg : STD_LOGIC;
  signal infer_input_TDATA_in_size : INTEGER;
  signal infer_input_TDATA_trans_num_sig : STD_LOGIC_VECTOR(31 DOWNTO 0);
  signal infer_input_TDATA_trans_num_reg : STD_LOGIC_VECTOR(31 DOWNTO 0);
  signal infer_input_TDATA_load_TV_done : STD_LOGIC := '0';
  signal infer_input_TDATA_DUT_read_TV_done : STD_LOGIC := '0';
  signal  infer_input_TKEEP_mInPtr  :   STD_LOGIC_VECTOR (11 downto 0) := (others => '0');
  signal  infer_input_TKEEP_mOutPtr :   STD_LOGIC_VECTOR (11 downto 0) := (others => '0');
  signal  infer_input_TKEEP_empty_n  :   STD_LOGIC;
  signal  infer_input_TKEEP_full_n   :   STD_LOGIC;
  type infer_input_TKEEP_arr2D is array(0 to 900) of STD_LOGIC_VECTOR(4 - 1 downto 0);
  signal infer_input_TKEEP_mem :   infer_input_TKEEP_arr2D := (others => (others => '0'));
  signal infer_input_TKEEP_ingress_status :  INTEGER;
  signal infer_input_TKEEP_ingress_status_bit :  STD_LOGIC;

  signal infer_input_TKEEP_in_i : INTEGER;
  signal infer_input_TKEEP_in_end : STD_LOGIC;
  signal infer_input_TKEEP_in_end_reg : STD_LOGIC;
  signal infer_input_TKEEP_in_size : INTEGER;
  signal infer_input_TKEEP_trans_num_sig : STD_LOGIC_VECTOR(31 DOWNTO 0);
  signal infer_input_TKEEP_trans_num_reg : STD_LOGIC_VECTOR(31 DOWNTO 0);
  signal infer_input_TKEEP_load_TV_done : STD_LOGIC := '0';
  signal infer_input_TKEEP_DUT_read_TV_done : STD_LOGIC := '0';
  signal  infer_input_TSTRB_mInPtr  :   STD_LOGIC_VECTOR (11 downto 0) := (others => '0');
  signal  infer_input_TSTRB_mOutPtr :   STD_LOGIC_VECTOR (11 downto 0) := (others => '0');
  signal  infer_input_TSTRB_empty_n  :   STD_LOGIC;
  signal  infer_input_TSTRB_full_n   :   STD_LOGIC;
  type infer_input_TSTRB_arr2D is array(0 to 900) of STD_LOGIC_VECTOR(4 - 1 downto 0);
  signal infer_input_TSTRB_mem :   infer_input_TSTRB_arr2D := (others => (others => '0'));
  signal infer_input_TSTRB_ingress_status :  INTEGER;
  signal infer_input_TSTRB_ingress_status_bit :  STD_LOGIC;

  signal infer_input_TSTRB_in_i : INTEGER;
  signal infer_input_TSTRB_in_end : STD_LOGIC;
  signal infer_input_TSTRB_in_end_reg : STD_LOGIC;
  signal infer_input_TSTRB_in_size : INTEGER;
  signal infer_input_TSTRB_trans_num_sig : STD_LOGIC_VECTOR(31 DOWNTO 0);
  signal infer_input_TSTRB_trans_num_reg : STD_LOGIC_VECTOR(31 DOWNTO 0);
  signal infer_input_TSTRB_load_TV_done : STD_LOGIC := '0';
  signal infer_input_TSTRB_DUT_read_TV_done : STD_LOGIC := '0';
  signal  infer_input_TUSER_mInPtr  :   STD_LOGIC_VECTOR (11 downto 0) := (others => '0');
  signal  infer_input_TUSER_mOutPtr :   STD_LOGIC_VECTOR (11 downto 0) := (others => '0');
  signal  infer_input_TUSER_empty_n  :   STD_LOGIC;
  signal  infer_input_TUSER_full_n   :   STD_LOGIC;
  type infer_input_TUSER_arr2D is array(0 to 900) of STD_LOGIC_VECTOR(2 - 1 downto 0);
  signal infer_input_TUSER_mem :   infer_input_TUSER_arr2D := (others => (others => '0'));
  signal infer_input_TUSER_ingress_status :  INTEGER;
  signal infer_input_TUSER_ingress_status_bit :  STD_LOGIC;

  signal infer_input_TUSER_in_i : INTEGER;
  signal infer_input_TUSER_in_end : STD_LOGIC;
  signal infer_input_TUSER_in_end_reg : STD_LOGIC;
  signal infer_input_TUSER_in_size : INTEGER;
  signal infer_input_TUSER_trans_num_sig : STD_LOGIC_VECTOR(31 DOWNTO 0);
  signal infer_input_TUSER_trans_num_reg : STD_LOGIC_VECTOR(31 DOWNTO 0);
  signal infer_input_TUSER_load_TV_done : STD_LOGIC := '0';
  signal infer_input_TUSER_DUT_read_TV_done : STD_LOGIC := '0';
  signal  infer_input_TLAST_mInPtr  :   STD_LOGIC_VECTOR (11 downto 0) := (others => '0');
  signal  infer_input_TLAST_mOutPtr :   STD_LOGIC_VECTOR (11 downto 0) := (others => '0');
  signal  infer_input_TLAST_empty_n  :   STD_LOGIC;
  signal  infer_input_TLAST_full_n   :   STD_LOGIC;
  type infer_input_TLAST_arr2D is array(0 to 900) of STD_LOGIC_VECTOR(1 - 1 downto 0);
  signal infer_input_TLAST_mem :   infer_input_TLAST_arr2D := (others => (others => '0'));
  signal infer_input_TLAST_ingress_status :  INTEGER;
  signal infer_input_TLAST_ingress_status_bit :  STD_LOGIC;

  signal infer_input_TLAST_in_i : INTEGER;
  signal infer_input_TLAST_in_end : STD_LOGIC;
  signal infer_input_TLAST_in_end_reg : STD_LOGIC;
  signal infer_input_TLAST_in_size : INTEGER;
  signal infer_input_TLAST_trans_num_sig : STD_LOGIC_VECTOR(31 DOWNTO 0);
  signal infer_input_TLAST_trans_num_reg : STD_LOGIC_VECTOR(31 DOWNTO 0);
  signal infer_input_TLAST_load_TV_done : STD_LOGIC := '0';
  signal infer_input_TLAST_DUT_read_TV_done : STD_LOGIC := '0';
  signal  infer_input_TID_mInPtr  :   STD_LOGIC_VECTOR (11 downto 0) := (others => '0');
  signal  infer_input_TID_mOutPtr :   STD_LOGIC_VECTOR (11 downto 0) := (others => '0');
  signal  infer_input_TID_empty_n  :   STD_LOGIC;
  signal  infer_input_TID_full_n   :   STD_LOGIC;
  type infer_input_TID_arr2D is array(0 to 900) of STD_LOGIC_VECTOR(5 - 1 downto 0);
  signal infer_input_TID_mem :   infer_input_TID_arr2D := (others => (others => '0'));
  signal infer_input_TID_ingress_status :  INTEGER;
  signal infer_input_TID_ingress_status_bit :  STD_LOGIC;

  signal infer_input_TID_in_i : INTEGER;
  signal infer_input_TID_in_end : STD_LOGIC;
  signal infer_input_TID_in_end_reg : STD_LOGIC;
  signal infer_input_TID_in_size : INTEGER;
  signal infer_input_TID_trans_num_sig : STD_LOGIC_VECTOR(31 DOWNTO 0);
  signal infer_input_TID_trans_num_reg : STD_LOGIC_VECTOR(31 DOWNTO 0);
  signal infer_input_TID_load_TV_done : STD_LOGIC := '0';
  signal infer_input_TID_DUT_read_TV_done : STD_LOGIC := '0';
  signal  infer_input_TDEST_mInPtr  :   STD_LOGIC_VECTOR (11 downto 0) := (others => '0');
  signal  infer_input_TDEST_mOutPtr :   STD_LOGIC_VECTOR (11 downto 0) := (others => '0');
  signal  infer_input_TDEST_empty_n  :   STD_LOGIC;
  signal  infer_input_TDEST_full_n   :   STD_LOGIC;
  type infer_input_TDEST_arr2D is array(0 to 900) of STD_LOGIC_VECTOR(6 - 1 downto 0);
  signal infer_input_TDEST_mem :   infer_input_TDEST_arr2D := (others => (others => '0'));
  signal infer_input_TDEST_ingress_status :  INTEGER;
  signal infer_input_TDEST_ingress_status_bit :  STD_LOGIC;

  signal infer_input_TDEST_in_i : INTEGER;
  signal infer_input_TDEST_in_end : STD_LOGIC;
  signal infer_input_TDEST_in_end_reg : STD_LOGIC;
  signal infer_input_TDEST_in_size : INTEGER;
  signal infer_input_TDEST_trans_num_sig : STD_LOGIC_VECTOR(31 DOWNTO 0);
  signal infer_input_TDEST_trans_num_reg : STD_LOGIC_VECTOR(31 DOWNTO 0);
  signal infer_input_TDEST_load_TV_done : STD_LOGIC := '0';
  signal infer_input_TDEST_DUT_read_TV_done : STD_LOGIC := '0';
  signal reset_reg : STD_LOGIC;
  -- Subtype for random state number, to prevent confusing it with true integers
  -- Top of range should be (2**31)-1 but this literal calculation causes overflow on 32-bit machines
  subtype T_RANDINT is integer range 1 to integer'high;

      function esl_icmp_eq(v1, v2 : STD_LOGIC_VECTOR) return STD_LOGIC_VECTOR is
          variable res : STD_LOGIC_VECTOR(0 downto 0);
      begin
          if v1 = v2 then
              res := "1";
          else
              res := "0";
          end if;
          return res;
      end function;
      procedure esl_read_token (file textfile: TEXT; textline: inout LINE; token: out STRING; token_len: out INTEGER) is
          variable whitespace : CHARACTER;
          variable i : INTEGER;
          variable ok: BOOLEAN;
          variable buff: STRING(1 to token'length);
      begin
          ok := false;
          i := 1;
          loop_main: while not endfile(textfile) loop
              if textline = null or textline'length = 0 then
                  readline(textfile, textline);
              end if;
              loop_remove_whitespace: while textline'length > 0 loop
                  if textline(textline'left) = ' ' or
                      textline(textline'left) = HT or
                      textline(textline'left) = CR or
                      textline(textline'left) = LF then
                      read(textline, whitespace);
                  else 
                      exit loop_remove_whitespace;
                  end if;
              end loop;
              loop_aesl_read_token: while textline'length > 0 and i <= buff'length loop
                  if textline(textline'left) = ' ' or
                     textline(textline'left) = HT or
                     textline(textline'left) = CR or
                     textline(textline'left) = LF then
                      exit loop_aesl_read_token;
                  else 
                      read(textline, buff(i));
                      i := i + 1;
                  end if;
                  ok := true;
              end loop;
              if ok = true then
                  exit loop_main;
              end if;
          end loop;
          buff(i) := ' ';
          token := buff;
          token_len:= i-1;
      end procedure esl_read_token;

      procedure esl_read_token (file textfile: TEXT; 
                                textline: inout LINE; 
                                token: out STRING) is
          variable i : INTEGER;
      begin
          esl_read_token (textfile, textline, token, i);
      end procedure esl_read_token;

      function esl_add(v1, v2 : STD_LOGIC_VECTOR) return STD_LOGIC_VECTOR is
          variable res : unsigned(v1'length-1 downto 0);
      begin
          res := unsigned(v1) + unsigned(v2);
          return std_logic_vector(res);
      end function;

      function esl_icmp_ult(v1, v2 : STD_LOGIC_VECTOR) return STD_LOGIC_VECTOR is
          variable res : STD_LOGIC_VECTOR(0 downto 0);
      begin
          if unsigned(v1) < unsigned(v2) then
              res := "1";
          else
              res := "0";
          end if;
          return res;
      end function;

      function esl_str2lv_hex (RHS : STRING; data_width : INTEGER) return STD_LOGIC_VECTOR is
          variable    ret    :   STD_LOGIC_VECTOR(data_width - 1 downto 0);
          variable    idx    :   integer := 3;
      begin
          ret := (others => '0');
          if (RHS(1) /= '0' and (RHS(2) /= 'x' or RHS(2) /= 'X')) then
                 report "Error! The format of hex number is not initialed by 0x";
          end if;
          while true loop
              if (data_width > 4) then
                  case RHS(idx)  is
                      when '0'    =>  ret := ret(data_width - 5 downto 0) & "0000";
                         when '1'    =>  ret := ret(data_width - 5 downto 0) & "0001";
                      when '2'    =>  ret := ret(data_width - 5 downto 0) & "0010";
                      when '3'    =>  ret := ret(data_width - 5 downto 0) & "0011";
                      when '4'    =>  ret := ret(data_width - 5 downto 0) & "0100";
                      when '5'    =>  ret := ret(data_width - 5 downto 0) & "0101";
                      when '6'    =>  ret := ret(data_width - 5 downto 0) & "0110";
                      when '7'    =>  ret := ret(data_width - 5 downto 0) & "0111";
                      when '8'    =>  ret := ret(data_width - 5 downto 0) & "1000";
                      when '9'    =>  ret := ret(data_width - 5 downto 0) & "1001";
                      when 'a' | 'A'  =>  ret := ret(data_width - 5 downto 0) & "1010";
                      when 'b' | 'B'  =>  ret := ret(data_width - 5 downto 0) & "1011";
                      when 'c' | 'C'  =>  ret := ret(data_width - 5 downto 0) & "1100";
                      when 'd' | 'D'  =>  ret := ret(data_width - 5 downto 0) & "1101";
                      when 'e' | 'E'  =>  ret := ret(data_width - 5 downto 0) & "1110";
                      when 'f' | 'F'  =>  ret := ret(data_width - 5 downto 0) & "1111";
                      when 'x' | 'X'  =>  ret := ret(data_width - 5 downto 0) & "XXXX";
                      when ' '    =>  return ret;
                      when others    =>  report "Wrong hex char " & RHS(idx);    return ret;
                  end case;
              elsif (data_width = 4) then
                  case RHS(idx)  is
                      when '0'    =>  ret := "0000";
                         when '1'    =>  ret := "0001";
                      when '2'    =>  ret := "0010";
                      when '3'    =>  ret := "0011";
                      when '4'    =>  ret := "0100";
                      when '5'    =>  ret := "0101";
                      when '6'    =>  ret := "0110";
                      when '7'    =>  ret := "0111";
                      when '8'    =>  ret := "1000";
                      when '9'    =>  ret := "1001";
                      when 'a' | 'A'  =>  ret := "1010";
                      when 'b' | 'B'  =>  ret := "1011";
                      when 'c' | 'C'  =>  ret := "1100";
                      when 'd' | 'D'  =>  ret := "1101";
                      when 'e' | 'E'  =>  ret := "1110";
                      when 'f' | 'F'  =>  ret := "1111";
                      when 'x' | 'X'  =>  ret := "XXXX";
                      when ' '    =>  return ret;
                      when others    =>  report "Wrong hex char " & RHS(idx);    return ret;
                  end case;
              elsif (data_width = 3) then
                  case RHS(idx)  is
                      when '0'    =>  ret := "000";
                         when '1'    =>  ret := "001";
                      when '2'    =>  ret := "010";
                      when '3'    =>  ret := "011";
                      when '4'    =>  ret := "100";
                      when '5'    =>  ret := "101";
                      when '6'    =>  ret := "110";
                      when '7'    =>  ret := "111";
                      when 'x' | 'X'  =>  ret := "XXX";
                      when ' '    =>  return ret;
                      when others    =>  report "Wrong hex char " & RHS(idx);    return ret;
                  end case;
              elsif (data_width = 2) then
                  case RHS(idx)  is
                      when '0'    =>  ret := "00";
                         when '1'    =>  ret := "01";
                      when '2'    =>  ret := "10";
                      when '3'    =>  ret := "11";
                      when 'x' | 'X'  =>  ret := "XX";
                      when ' '    =>  return ret;
                      when others    =>  report "Wrong hex char " & RHS(idx);    return ret;
                  end case;
              elsif (data_width = 1) then
                  case RHS(idx)  is
                      when '0'    =>  ret := "0";
                         when '1'    =>  ret := "1";
                      when 'x' | 'X'  =>  ret := "X";
                      when ' '    =>  return ret;
                      when others    =>  report "Wrong hex char " & RHS(idx);    return ret;
                  end case;
              else
                  report string'("Wrong data_width.");
                  return ret;
              end if;
              idx := idx + 1;
          end loop;
          return ret;
      end function;

      function esl_conv_string_hex (lv : STD_LOGIC_VECTOR) return STRING is
          constant str_len : integer := (lv'length + 3)/4;
          variable ret : STRING (1 to str_len);
          variable i, tmp: INTEGER;
          variable normal_lv : STD_LOGIC_VECTOR(lv'length - 1 downto 0);
          variable tmp_lv : STD_LOGIC_VECTOR(3 downto 0);
      begin
          normal_lv := lv;
          for i in 1 to str_len loop
              if (i = 1) then
                  if ((lv'length mod 4) = 3) then
                      tmp_lv(2 downto 0) := normal_lv(lv'length - 1 downto lv'length - 3);
                      case tmp_lv(2 downto 0) is
                          when "000" => ret(i) := '0';
                          when "001" => ret(i) := '1';
                          when "010" => ret(i) := '2';
                          when "011" => ret(i) := '3';
                          when "100" => ret(i) := '4';
                          when "101" => ret(i) := '5';
                          when "110" => ret(i) := '6';
                          when "111" => ret(i) := '7';
                          when others  => ret(i) := 'X';
                      end case;
                  elsif ((lv'length mod 4) = 2) then
                      tmp_lv(1 downto 0) := normal_lv(lv'length - 1 downto lv'length - 2);
                      case tmp_lv(1 downto 0) is
                          when "00" => ret(i) := '0';
                          when "01" => ret(i) := '1';
                          when "10" => ret(i) := '2';
                          when "11" => ret(i) := '3';
                          when others => ret(i) := 'X';
                      end case;
                  elsif ((lv'length mod 4) = 1) then
                      tmp_lv(0 downto 0) := normal_lv(lv'length - 1 downto lv'length - 1);
                      case tmp_lv(0 downto 0) is
                          when "0" => ret(i) := '0';
                          when "1" => ret(i) := '1';
                          when others=> ret(i) := 'X';
                      end case;
                  elsif ((lv'length mod 4) = 0) then
                      tmp_lv(3 downto 0) := normal_lv(lv'length - 1 downto lv'length - 4);
                      case tmp_lv(3 downto 0) is
                          when "0000" => ret(i) := '0';
                          when "0001" => ret(i) := '1';
                          when "0010" => ret(i) := '2';
                          when "0011" => ret(i) := '3';
                          when "0100" => ret(i) := '4';
                          when "0101" => ret(i) := '5';
                          when "0110" => ret(i) := '6';
                          when "0111" => ret(i) := '7';
                          when "1000" => ret(i) := '8';
                          when "1001" => ret(i) := '9';
                          when "1010" => ret(i) := 'a';
                          when "1011" => ret(i) := 'b';
                          when "1100" => ret(i) := 'c';
                          when "1101" => ret(i) := 'd';
                          when "1110" => ret(i) := 'e';
                          when "1111" => ret(i) := 'f';
                          when others   => ret(i) := 'X';
                      end case;
                  end if;
              else
                  tmp_lv(3 downto 0) := normal_lv((str_len - i) * 4 + 3 downto (str_len - i) * 4);
                  case tmp_lv(3 downto 0) is
                      when "0000" => ret(i) := '0';
                      when "0001" => ret(i) := '1';
                      when "0010" => ret(i) := '2';
                      when "0011" => ret(i) := '3';
                      when "0100" => ret(i) := '4';
                      when "0101" => ret(i) := '5';
                      when "0110" => ret(i) := '6';
                      when "0111" => ret(i) := '7';
                      when "1000" => ret(i) := '8';
                      when "1001" => ret(i) := '9';
                      when "1010" => ret(i) := 'a';
                      when "1011" => ret(i) := 'b';
                      when "1100" => ret(i) := 'c';
                      when "1101" => ret(i) := 'd';
                      when "1110" => ret(i) := 'e';
                      when "1111" => ret(i) := 'f';
                      when others   => ret(i) := 'X';
                  end case;
              end if;
          end loop;
          return ret;
      end function;

      function esl_str_dec2int (RHS : STRING) return INTEGER is
          variable    ret    :   integer;
          variable    idx    :   integer := 1;
      begin
          ret := 0;
          while true loop
              case RHS(idx)  is
                  when '0'    =>  ret := ret * 10 + 0;
                  when '1'    =>  ret := ret * 10 + 1;
                  when '2'    =>  ret := ret * 10 + 2;
                  when '3'    =>  ret := ret * 10 + 3;
                  when '4'    =>  ret := ret * 10 + 4;
                  when '5'    =>  ret := ret * 10 + 5;
                  when '6'    =>  ret := ret * 10 + 6;
                  when '7'    =>  ret := ret * 10 + 7;
                  when '8'    =>  ret := ret * 10 + 8;
                  when '9'    =>  ret := ret * 10 + 9;
                  when ' '    =>  return ret;
                  when others    =>  report "Wrong dec char " & RHS(idx);    return ret;
              end case;
              idx := idx + 1;
          end loop;
          return ret;
      end esl_str_dec2int;

  -- purpose: initialise the random state variable based on an integer seed
  function init_rand(seed : integer) return T_RANDINT is
    variable result : T_RANDINT;
  begin
    -- If the seed is smaller than the minimum value of the random state variable, use the minimum value
    if seed < T_RANDINT'low then
      result := T_RANDINT'low;
      -- If the seed is larger than the maximum value of the random state variable, use the maximum value
    elsif seed > T_RANDINT'high then
      result := T_RANDINT'high;
      -- If the seed is within the range of the random state variable, just use the seed
    else
      result := seed;
    end if;
    -- Return the result
    return result;
  end init_rand;


  -- purpose: generate a random integer between min and max limits
  procedure rand_int(variable rand   : inout T_RANDINT;
                     constant minval : in    integer;
                     constant maxval : in    integer;
                     variable result : out   integer
                     ) is

    variable k, q      : integer;
    variable real_rand : real;
    variable res       : integer;

  begin
    -- Create a new random integer in the range 1 to 2**31-1 and put it back into rand VARIABLE
    -- Based on an example from Numerical Recipes in C, 2nd Edition, page 279
    k   := rand/127773;
    q   := 16807*(rand-k*127773)-2836*k;
    if q < 0 then
      q := q + 2147483647;
    end if;
    rand := init_rand(q);

    -- Convert this integer to a real number in the range 0 to 1
    real_rand := (real(rand - T_RANDINT'low)) / real(T_RANDINT'high - T_RANDINT'low);
    -- Convert this real number to an integer in the range minval to maxval
    -- The +1 and -0.5 are to get equal probability of minval and maxval as other values
    res    := integer((real_rand * real(maxval+1-minval)) - 0.5) + minval;
    -- VHDL real to integer conversion doesn't define what happens for x.5 so deal with this
    if res < minval then
      res  := minval;
    elsif res > maxval then
      res  := maxval;
    end if;
    -- assign output
    result := res;

  end rand_int;

begin
  TRAN_infer_input_TVALID_proc  :   process( infer_input_TDATA_empty_n, infer_input_TKEEP_empty_n, infer_input_TSTRB_empty_n, infer_input_TUSER_empty_n, infer_input_TLAST_empty_n, infer_input_TID_empty_n, infer_input_TDEST_empty_n, reset, infer_input_TDATA_ingress_status_bit , infer_input_TKEEP_ingress_status_bit , infer_input_TSTRB_ingress_status_bit , infer_input_TUSER_ingress_status_bit , infer_input_TLAST_ingress_status_bit , infer_input_TID_ingress_status_bit , infer_input_TDEST_ingress_status_bit)
  begin
      if reset = '0' then
          TRAN_infer_input_TVALID_temp <= '0';
      else
          TRAN_infer_input_TVALID_temp  <= (infer_input_TDATA_ingress_status_bit and infer_input_TKEEP_ingress_status_bit and infer_input_TSTRB_ingress_status_bit and infer_input_TUSER_ingress_status_bit and infer_input_TLAST_ingress_status_bit and infer_input_TID_ingress_status_bit and infer_input_TDEST_ingress_status_bit) or ('1' and infer_input_TDATA_empty_n and infer_input_TKEEP_empty_n and infer_input_TSTRB_empty_n and infer_input_TUSER_empty_n and infer_input_TLAST_empty_n and infer_input_TID_empty_n and infer_input_TDEST_empty_n and '1');
      end if;
  end process;

  TRAN_infer_input_TVALID_wire <= TRAN_infer_input_TVALID_temp when (infer_input_TDEST_DUT_read_TV_done = '0') else '0';
  TRAN_infer_input_TVALID <= TRAN_infer_input_TVALID_wire;

------------------------Read-only axi_s-------------------
-- Write operation for read_only axi_s port
  infer_input_TDATA_ingress_status_bit <= '1' when infer_input_TDATA_ingress_status > 0 else '0';
  infer_input_TKEEP_ingress_status_bit <= '1' when infer_input_TKEEP_ingress_status > 0 else '0';
  infer_input_TSTRB_ingress_status_bit <= '1' when infer_input_TSTRB_ingress_status > 0 else '0';
  infer_input_TUSER_ingress_status_bit <= '1' when infer_input_TUSER_ingress_status > 0 else '0';
  infer_input_TLAST_ingress_status_bit <= '1' when infer_input_TLAST_ingress_status > 0 else '0';
  infer_input_TID_ingress_status_bit <= '1' when infer_input_TID_ingress_status > 0 else '0';
  infer_input_TDEST_ingress_status_bit <= '1' when infer_input_TDEST_ingress_status > 0 else '0';

  proc_gen_reset_reg: process(clk)
  begin
      if(clk'event and clk = '1') then
          reset_reg <= reset;
      end if;
  end process;

  ------------------------------- infer_input_TDATA --------------------------------
  infer_input_TDATA_empty_n_proc  :   process(infer_input_TDATA_mInPtr, infer_input_TDATA_mOutPtr)
  begin
      if (esl_icmp_eq(infer_input_TDATA_mInPtr, infer_input_TDATA_mOutPtr) = "1") then
          infer_input_TDATA_empty_n  <=  '0';
      else
          infer_input_TDATA_empty_n  <=  '1';
      end if;
  end process;

proc_gen_infer_input_TDATA_in_size: process
file        fp          :   TEXT;
variable    fstatus     :   FILE_OPEN_STATUS;
variable    i           :   INTEGER;
variable    token_line  :   LINE;
variable    token       :   STRING(1 to 192);
begin
    file_open(fstatus, fp,"../tv/stream_size/stream_size_in_infer_input_V_data_V.dat" , READ_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & "../tv/stream_size/stream_size_in_infer_input_V_data_V.dat" & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    esl_read_token(fp, token_line, token);
    if(token(1 to 13) /= "[[[runtime]]]") then
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    esl_read_token(fp, token_line, token);
      wait until reset = '1';
    wait until clk'event and clk = '1';
    while(token(1 to 14) /= "[[[/runtime]]]") loop
        i := 0;
        if(token(1 to 15) /= "[[transaction]]") then
            assert false report "ERROR: Simulation using HLS TB failed." severity failure;
        end if;
        esl_read_token(fp, token_line, token);  -- Skip transaction number
        esl_read_token(fp, token_line, token);
        infer_input_TDATA_in_size <= esl_str_dec2int(token);
        wait until clk'event and clk = '0';
          while (infer_input_TDATA_in_end_reg /= '1') loop
                wait until clk'event and clk = '0';
        end loop; 
        esl_read_token(fp, token_line, token); --[[/transaction]] 
        esl_read_token(fp, token_line, token);
    end loop;
    if(token(1 to 14) /= "[[[/runtime]]]") then
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    wait until clk'event and clk = '1';
    file_close (fp);
    wait;
end process;

infer_input_TDATA_in_end <= '1' when ((infer_input_TDATA_in_size = 0) and (reset_reg = '1')) or ((infer_input_TDATA_in_i = (infer_input_TDATA_in_size - 1)) and (TRAN_infer_input_TREADY = '1')) else '0';
infer_input_TDATA_trans_num_sig <= infer_input_TDATA_trans_num_reg + 1 when ((infer_input_TDATA_in_end = '1') and (infer_input_TDATA_trans_num_reg /= AUTOTB_TRANSACTION_NUM + 1)) else infer_input_TDATA_trans_num_reg;
infer_input_TDATA_trans_num <= infer_input_TDATA_trans_num_sig;

proc_gen_infer_input_TDATA_in_i : process(reset, clk)
begin
    if(reset = '0') then
        infer_input_TDATA_in_i <= 0;
    elsif(clk'event and clk = '1') then
        if(TRAN_infer_input_TVALID_wire = '1' and TRAN_infer_input_TREADY = '1' and infer_input_TDATA_in_i < infer_input_TDATA_in_size - 1) then
            infer_input_TDATA_in_i <= infer_input_TDATA_in_i + 1;
        elsif(infer_input_TDATA_in_end = '1') then
            infer_input_TDATA_in_i <= 0;
        end if;
    end if;
end process;

proc_gen_infer_input_TDATA_trans_num_reg : process(reset, clk)
begin
    if(reset = '0') then
        infer_input_TDATA_trans_num_reg <= X"00000001";
    elsif(clk'event and clk = '1') then
        infer_input_TDATA_trans_num_reg <= infer_input_TDATA_trans_num_sig;
    end if;
end process;

proc_gen_infer_input_TDATA_in_end_reg: process(reset, clk)
begin
    if(reset = '0') then
        infer_input_TDATA_in_end_reg <= '0';
    elsif(clk'event and clk = '1') then
        infer_input_TDATA_in_end_reg <= infer_input_TDATA_in_end;
    end if;
end process;

  infer_input_TDATA_read_file_proc  :   process
      file        fp          :   TEXT;
      variable    fstatus     :   FILE_OPEN_STATUS;
      variable    token_line  :   LINE;
      variable    token       :   STRING(1 to 128);
      variable    token_len   :   INTEGER;
      variable    token_int    :   INTEGER;
      file        fp_ingress_status          :   TEXT;
      variable    fstatus_ingress_status     :   FILE_OPEN_STATUS;
      variable    token_line_ingress_status  :   LINE;
      variable    token_ingress_status       :   STRING(1 to 128);
      variable    ingress_status_var         :   INTEGER;
      variable    transaction_idx :   INTEGER;
      variable    infer_input_TDATA_mInPtr_var  :   STD_LOGIC_VECTOR (11 downto 0) := (others => '0');
      variable    infer_input_TDATA_mem_var :   infer_input_TDATA_arr2D := (others => (others => '0'));
  begin
      transaction_idx :=  0;
      wait until reset = '1';
      wait until clk'event and clk = '1';
      file_open(fstatus, fp, TV_IN_infer_input_TDATA, READ_MODE);
      if (fstatus /= OPEN_OK) then
          assert false report "Open file " & TV_IN_infer_input_TDATA & " failed!!!" severity failure;
      end if;
      esl_read_token(fp, token_line, token);
      if (token(1 to 13) /= "[[[runtime]]]") then
          assert false report "ERROR: Simulation using HLS TB failed." severity failure;
      end if;
      esl_read_token(fp, token_line, token);
      file_open(fstatus_ingress_status, fp_ingress_status, INGRESS_STATUS_infer_input_TDATA, READ_MODE);
      if (fstatus_ingress_status /= OPEN_OK) then
          assert false report "Open file " & INGRESS_STATUS_infer_input_TDATA & " failed!!!" severity failure;
      end if;
      esl_read_token(fp_ingress_status, token_line_ingress_status, token_ingress_status);
      esl_read_token(fp_ingress_status, token_line_ingress_status, token_ingress_status);
      while (token(1 to 14) /= "[[[/runtime]]]") loop
          if (token(1 to 15) /= "[[transaction]]") then
              assert false report "ERROR: Simulation using HLS TB failed." severity failure;
          end if;
          esl_read_token(fp, token_line, token);  -- Skip transaction number
          -- Start to read data for every transaction round
          esl_read_token(fp, token_line, token);
          esl_read_token(fp_ingress_status, token_line_ingress_status, token_ingress_status);   -- Skip transaction number
          esl_read_token(fp_ingress_status, token_line_ingress_status, token_ingress_status);
          ingress_status_var := esl_str_dec2int(token_ingress_status);
          esl_read_token(fp_ingress_status, token_line_ingress_status, token_ingress_status);
          infer_input_TDATA_mInPtr_var := (others => '0');
          while (token(1 to 16) /= "[[/transaction]]") loop
              if (CONV_INTEGER(infer_input_TDATA_mInPtr_var) > 900 - 1) then
                  assert false report "Fifo overflow!" severity failure;
              end if;
              infer_input_TDATA_mem_var(CONV_INTEGER(infer_input_TDATA_mInPtr_var)) := esl_str2lv_hex(token, 32);
              infer_input_TDATA_mInPtr_var := esl_add(infer_input_TDATA_mInPtr_var, "1");
              esl_read_token(fp, token_line, token);
              ingress_status_var := esl_str_dec2int(token_ingress_status);
              esl_read_token(fp_ingress_status, token_line_ingress_status, token_ingress_status);
          end loop;
          infer_input_TDATA_mInPtr  <= infer_input_TDATA_mInPtr_var;
          infer_input_TDATA_mem <= infer_input_TDATA_mem_var;
          wait until clk'event and clk = '0';
          while (infer_input_TDATA_in_end_reg /= '1') loop
              wait until clk'event and clk = '0';
          end loop;
          esl_read_token(fp, token_line, token);
          infer_input_TDATA_ingress_status <= ingress_status_var;
          esl_read_token(fp_ingress_status, token_line_ingress_status, token_ingress_status);
          transaction_idx := transaction_idx + 1;
      end loop;
      infer_input_TDATA_load_TV_done <= '1';
      file_close(fp);
      wait until clk'event and clk = '0';
          while (infer_input_TDATA_in_end_reg /= '1') loop
          wait until clk'event and clk = '0';
      end loop;
      infer_input_TDATA_mInPtr <= (others => '0');
      wait;
  end process;

  TRAN_infer_input_TDATA <= infer_input_TDATA_mem(CONV_INTEGER(infer_input_TDATA_mOutPtr));

  infer_input_TDATA_mOutPtr_proc : process(clk)
  begin
      if (clk'event and clk = '0') then
          if (ready = '1') then
              infer_input_TDATA_mOutPtr <= (others => '0');
          end if;
      elsif (clk'event and clk = '1') then
          if (TRAN_infer_input_TVALID_wire = '1' and TRAN_infer_input_TREADY = '1') then
              if (esl_icmp_ult(infer_input_TDATA_mOutPtr,infer_input_TDATA_mInPtr) = "1") then
                  infer_input_TDATA_mOutPtr <= esl_add(infer_input_TDATA_mOutPtr, "1");
              end if;
          end if;
      end if;
  end process;

  infer_input_TDATA_DUT_read_TV_done_proc : process(clk)
  begin
      if (clk'event and clk = '0') then
          if ((infer_input_TDATA_load_TV_done = '1') and (esl_icmp_eq(infer_input_TDATA_mOutPtr,infer_input_TDATA_mInPtr) = "1")) then
              infer_input_TDATA_DUT_read_TV_done <= '1';
          end if;
      end if;
  end process;

  ------------------------------- infer_input_TKEEP --------------------------------
  infer_input_TKEEP_empty_n_proc  :   process(infer_input_TKEEP_mInPtr, infer_input_TKEEP_mOutPtr)
  begin
      if (esl_icmp_eq(infer_input_TKEEP_mInPtr, infer_input_TKEEP_mOutPtr) = "1") then
          infer_input_TKEEP_empty_n  <=  '0';
      else
          infer_input_TKEEP_empty_n  <=  '1';
      end if;
  end process;

proc_gen_infer_input_TKEEP_in_size: process
file        fp          :   TEXT;
variable    fstatus     :   FILE_OPEN_STATUS;
variable    i           :   INTEGER;
variable    token_line  :   LINE;
variable    token       :   STRING(1 to 192);
begin
    file_open(fstatus, fp,"../tv/stream_size/stream_size_in_infer_input_V_keep_V.dat" , READ_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & "../tv/stream_size/stream_size_in_infer_input_V_keep_V.dat" & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    esl_read_token(fp, token_line, token);
    if(token(1 to 13) /= "[[[runtime]]]") then
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    esl_read_token(fp, token_line, token);
      wait until reset = '1';
    wait until clk'event and clk = '1';
    while(token(1 to 14) /= "[[[/runtime]]]") loop
        i := 0;
        if(token(1 to 15) /= "[[transaction]]") then
            assert false report "ERROR: Simulation using HLS TB failed." severity failure;
        end if;
        esl_read_token(fp, token_line, token);  -- Skip transaction number
        esl_read_token(fp, token_line, token);
        infer_input_TKEEP_in_size <= esl_str_dec2int(token);
        wait until clk'event and clk = '0';
          while (infer_input_TKEEP_in_end_reg /= '1') loop
                wait until clk'event and clk = '0';
        end loop; 
        esl_read_token(fp, token_line, token); --[[/transaction]] 
        esl_read_token(fp, token_line, token);
    end loop;
    if(token(1 to 14) /= "[[[/runtime]]]") then
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    wait until clk'event and clk = '1';
    file_close (fp);
    wait;
end process;

infer_input_TKEEP_in_end <= '1' when ((infer_input_TKEEP_in_size = 0) and (reset_reg = '1')) or ((infer_input_TKEEP_in_i = (infer_input_TKEEP_in_size - 1)) and (TRAN_infer_input_TREADY = '1')) else '0';
infer_input_TKEEP_trans_num_sig <= infer_input_TKEEP_trans_num_reg + 1 when ((infer_input_TKEEP_in_end = '1') and (infer_input_TKEEP_trans_num_reg /= AUTOTB_TRANSACTION_NUM + 1)) else infer_input_TKEEP_trans_num_reg;
infer_input_TKEEP_trans_num <= infer_input_TKEEP_trans_num_sig;

proc_gen_infer_input_TKEEP_in_i : process(reset, clk)
begin
    if(reset = '0') then
        infer_input_TKEEP_in_i <= 0;
    elsif(clk'event and clk = '1') then
        if(TRAN_infer_input_TVALID_wire = '1' and TRAN_infer_input_TREADY = '1' and infer_input_TKEEP_in_i < infer_input_TKEEP_in_size - 1) then
            infer_input_TKEEP_in_i <= infer_input_TKEEP_in_i + 1;
        elsif(infer_input_TKEEP_in_end = '1') then
            infer_input_TKEEP_in_i <= 0;
        end if;
    end if;
end process;

proc_gen_infer_input_TKEEP_trans_num_reg : process(reset, clk)
begin
    if(reset = '0') then
        infer_input_TKEEP_trans_num_reg <= X"00000001";
    elsif(clk'event and clk = '1') then
        infer_input_TKEEP_trans_num_reg <= infer_input_TKEEP_trans_num_sig;
    end if;
end process;

proc_gen_infer_input_TKEEP_in_end_reg: process(reset, clk)
begin
    if(reset = '0') then
        infer_input_TKEEP_in_end_reg <= '0';
    elsif(clk'event and clk = '1') then
        infer_input_TKEEP_in_end_reg <= infer_input_TKEEP_in_end;
    end if;
end process;

  infer_input_TKEEP_read_file_proc  :   process
      file        fp          :   TEXT;
      variable    fstatus     :   FILE_OPEN_STATUS;
      variable    token_line  :   LINE;
      variable    token       :   STRING(1 to 128);
      variable    token_len   :   INTEGER;
      variable    token_int    :   INTEGER;
      file        fp_ingress_status          :   TEXT;
      variable    fstatus_ingress_status     :   FILE_OPEN_STATUS;
      variable    token_line_ingress_status  :   LINE;
      variable    token_ingress_status       :   STRING(1 to 128);
      variable    ingress_status_var         :   INTEGER;
      variable    transaction_idx :   INTEGER;
      variable    infer_input_TKEEP_mInPtr_var  :   STD_LOGIC_VECTOR (11 downto 0) := (others => '0');
      variable    infer_input_TKEEP_mem_var :   infer_input_TKEEP_arr2D := (others => (others => '0'));
  begin
      transaction_idx :=  0;
      wait until reset = '1';
      wait until clk'event and clk = '1';
      file_open(fstatus, fp, TV_IN_infer_input_TKEEP, READ_MODE);
      if (fstatus /= OPEN_OK) then
          assert false report "Open file " & TV_IN_infer_input_TKEEP & " failed!!!" severity failure;
      end if;
      esl_read_token(fp, token_line, token);
      if (token(1 to 13) /= "[[[runtime]]]") then
          assert false report "ERROR: Simulation using HLS TB failed." severity failure;
      end if;
      esl_read_token(fp, token_line, token);
      file_open(fstatus_ingress_status, fp_ingress_status, INGRESS_STATUS_infer_input_TKEEP, READ_MODE);
      if (fstatus_ingress_status /= OPEN_OK) then
          assert false report "Open file " & INGRESS_STATUS_infer_input_TKEEP & " failed!!!" severity failure;
      end if;
      esl_read_token(fp_ingress_status, token_line_ingress_status, token_ingress_status);
      esl_read_token(fp_ingress_status, token_line_ingress_status, token_ingress_status);
      while (token(1 to 14) /= "[[[/runtime]]]") loop
          if (token(1 to 15) /= "[[transaction]]") then
              assert false report "ERROR: Simulation using HLS TB failed." severity failure;
          end if;
          esl_read_token(fp, token_line, token);  -- Skip transaction number
          -- Start to read data for every transaction round
          esl_read_token(fp, token_line, token);
          esl_read_token(fp_ingress_status, token_line_ingress_status, token_ingress_status);   -- Skip transaction number
          esl_read_token(fp_ingress_status, token_line_ingress_status, token_ingress_status);
          ingress_status_var := esl_str_dec2int(token_ingress_status);
          esl_read_token(fp_ingress_status, token_line_ingress_status, token_ingress_status);
          infer_input_TKEEP_mInPtr_var := (others => '0');
          while (token(1 to 16) /= "[[/transaction]]") loop
              if (CONV_INTEGER(infer_input_TKEEP_mInPtr_var) > 900 - 1) then
                  assert false report "Fifo overflow!" severity failure;
              end if;
              infer_input_TKEEP_mem_var(CONV_INTEGER(infer_input_TKEEP_mInPtr_var)) := esl_str2lv_hex(token, 4);
              infer_input_TKEEP_mInPtr_var := esl_add(infer_input_TKEEP_mInPtr_var, "1");
              esl_read_token(fp, token_line, token);
              ingress_status_var := esl_str_dec2int(token_ingress_status);
              esl_read_token(fp_ingress_status, token_line_ingress_status, token_ingress_status);
          end loop;
          infer_input_TKEEP_mInPtr  <= infer_input_TKEEP_mInPtr_var;
          infer_input_TKEEP_mem <= infer_input_TKEEP_mem_var;
          wait until clk'event and clk = '0';
          while (infer_input_TKEEP_in_end_reg /= '1') loop
              wait until clk'event and clk = '0';
          end loop;
          esl_read_token(fp, token_line, token);
          infer_input_TKEEP_ingress_status <= ingress_status_var;
          esl_read_token(fp_ingress_status, token_line_ingress_status, token_ingress_status);
          transaction_idx := transaction_idx + 1;
      end loop;
      infer_input_TKEEP_load_TV_done <= '1';
      file_close(fp);
      wait until clk'event and clk = '0';
          while (infer_input_TKEEP_in_end_reg /= '1') loop
          wait until clk'event and clk = '0';
      end loop;
      infer_input_TKEEP_mInPtr <= (others => '0');
      wait;
  end process;

  TRAN_infer_input_TKEEP <= infer_input_TKEEP_mem(CONV_INTEGER(infer_input_TKEEP_mOutPtr));

  infer_input_TKEEP_mOutPtr_proc : process(clk)
  begin
      if (clk'event and clk = '0') then
          if (ready = '1') then
              infer_input_TKEEP_mOutPtr <= (others => '0');
          end if;
      elsif (clk'event and clk = '1') then
          if (TRAN_infer_input_TVALID_wire = '1' and TRAN_infer_input_TREADY = '1') then
              if (esl_icmp_ult(infer_input_TKEEP_mOutPtr,infer_input_TKEEP_mInPtr) = "1") then
                  infer_input_TKEEP_mOutPtr <= esl_add(infer_input_TKEEP_mOutPtr, "1");
              end if;
          end if;
      end if;
  end process;

  infer_input_TKEEP_DUT_read_TV_done_proc : process(clk)
  begin
      if (clk'event and clk = '0') then
          if ((infer_input_TKEEP_load_TV_done = '1') and (esl_icmp_eq(infer_input_TKEEP_mOutPtr,infer_input_TKEEP_mInPtr) = "1")) then
              infer_input_TKEEP_DUT_read_TV_done <= '1';
          end if;
      end if;
  end process;

  ------------------------------- infer_input_TSTRB --------------------------------
  infer_input_TSTRB_empty_n_proc  :   process(infer_input_TSTRB_mInPtr, infer_input_TSTRB_mOutPtr)
  begin
      if (esl_icmp_eq(infer_input_TSTRB_mInPtr, infer_input_TSTRB_mOutPtr) = "1") then
          infer_input_TSTRB_empty_n  <=  '0';
      else
          infer_input_TSTRB_empty_n  <=  '1';
      end if;
  end process;

proc_gen_infer_input_TSTRB_in_size: process
file        fp          :   TEXT;
variable    fstatus     :   FILE_OPEN_STATUS;
variable    i           :   INTEGER;
variable    token_line  :   LINE;
variable    token       :   STRING(1 to 192);
begin
    file_open(fstatus, fp,"../tv/stream_size/stream_size_in_infer_input_V_strb_V.dat" , READ_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & "../tv/stream_size/stream_size_in_infer_input_V_strb_V.dat" & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    esl_read_token(fp, token_line, token);
    if(token(1 to 13) /= "[[[runtime]]]") then
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    esl_read_token(fp, token_line, token);
      wait until reset = '1';
    wait until clk'event and clk = '1';
    while(token(1 to 14) /= "[[[/runtime]]]") loop
        i := 0;
        if(token(1 to 15) /= "[[transaction]]") then
            assert false report "ERROR: Simulation using HLS TB failed." severity failure;
        end if;
        esl_read_token(fp, token_line, token);  -- Skip transaction number
        esl_read_token(fp, token_line, token);
        infer_input_TSTRB_in_size <= esl_str_dec2int(token);
        wait until clk'event and clk = '0';
          while (infer_input_TSTRB_in_end_reg /= '1') loop
                wait until clk'event and clk = '0';
        end loop; 
        esl_read_token(fp, token_line, token); --[[/transaction]] 
        esl_read_token(fp, token_line, token);
    end loop;
    if(token(1 to 14) /= "[[[/runtime]]]") then
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    wait until clk'event and clk = '1';
    file_close (fp);
    wait;
end process;

infer_input_TSTRB_in_end <= '1' when ((infer_input_TSTRB_in_size = 0) and (reset_reg = '1')) or ((infer_input_TSTRB_in_i = (infer_input_TSTRB_in_size - 1)) and (TRAN_infer_input_TREADY = '1')) else '0';
infer_input_TSTRB_trans_num_sig <= infer_input_TSTRB_trans_num_reg + 1 when ((infer_input_TSTRB_in_end = '1') and (infer_input_TSTRB_trans_num_reg /= AUTOTB_TRANSACTION_NUM + 1)) else infer_input_TSTRB_trans_num_reg;
infer_input_TSTRB_trans_num <= infer_input_TSTRB_trans_num_sig;

proc_gen_infer_input_TSTRB_in_i : process(reset, clk)
begin
    if(reset = '0') then
        infer_input_TSTRB_in_i <= 0;
    elsif(clk'event and clk = '1') then
        if(TRAN_infer_input_TVALID_wire = '1' and TRAN_infer_input_TREADY = '1' and infer_input_TSTRB_in_i < infer_input_TSTRB_in_size - 1) then
            infer_input_TSTRB_in_i <= infer_input_TSTRB_in_i + 1;
        elsif(infer_input_TSTRB_in_end = '1') then
            infer_input_TSTRB_in_i <= 0;
        end if;
    end if;
end process;

proc_gen_infer_input_TSTRB_trans_num_reg : process(reset, clk)
begin
    if(reset = '0') then
        infer_input_TSTRB_trans_num_reg <= X"00000001";
    elsif(clk'event and clk = '1') then
        infer_input_TSTRB_trans_num_reg <= infer_input_TSTRB_trans_num_sig;
    end if;
end process;

proc_gen_infer_input_TSTRB_in_end_reg: process(reset, clk)
begin
    if(reset = '0') then
        infer_input_TSTRB_in_end_reg <= '0';
    elsif(clk'event and clk = '1') then
        infer_input_TSTRB_in_end_reg <= infer_input_TSTRB_in_end;
    end if;
end process;

  infer_input_TSTRB_read_file_proc  :   process
      file        fp          :   TEXT;
      variable    fstatus     :   FILE_OPEN_STATUS;
      variable    token_line  :   LINE;
      variable    token       :   STRING(1 to 128);
      variable    token_len   :   INTEGER;
      variable    token_int    :   INTEGER;
      file        fp_ingress_status          :   TEXT;
      variable    fstatus_ingress_status     :   FILE_OPEN_STATUS;
      variable    token_line_ingress_status  :   LINE;
      variable    token_ingress_status       :   STRING(1 to 128);
      variable    ingress_status_var         :   INTEGER;
      variable    transaction_idx :   INTEGER;
      variable    infer_input_TSTRB_mInPtr_var  :   STD_LOGIC_VECTOR (11 downto 0) := (others => '0');
      variable    infer_input_TSTRB_mem_var :   infer_input_TSTRB_arr2D := (others => (others => '0'));
  begin
      transaction_idx :=  0;
      wait until reset = '1';
      wait until clk'event and clk = '1';
      file_open(fstatus, fp, TV_IN_infer_input_TSTRB, READ_MODE);
      if (fstatus /= OPEN_OK) then
          assert false report "Open file " & TV_IN_infer_input_TSTRB & " failed!!!" severity failure;
      end if;
      esl_read_token(fp, token_line, token);
      if (token(1 to 13) /= "[[[runtime]]]") then
          assert false report "ERROR: Simulation using HLS TB failed." severity failure;
      end if;
      esl_read_token(fp, token_line, token);
      file_open(fstatus_ingress_status, fp_ingress_status, INGRESS_STATUS_infer_input_TSTRB, READ_MODE);
      if (fstatus_ingress_status /= OPEN_OK) then
          assert false report "Open file " & INGRESS_STATUS_infer_input_TSTRB & " failed!!!" severity failure;
      end if;
      esl_read_token(fp_ingress_status, token_line_ingress_status, token_ingress_status);
      esl_read_token(fp_ingress_status, token_line_ingress_status, token_ingress_status);
      while (token(1 to 14) /= "[[[/runtime]]]") loop
          if (token(1 to 15) /= "[[transaction]]") then
              assert false report "ERROR: Simulation using HLS TB failed." severity failure;
          end if;
          esl_read_token(fp, token_line, token);  -- Skip transaction number
          -- Start to read data for every transaction round
          esl_read_token(fp, token_line, token);
          esl_read_token(fp_ingress_status, token_line_ingress_status, token_ingress_status);   -- Skip transaction number
          esl_read_token(fp_ingress_status, token_line_ingress_status, token_ingress_status);
          ingress_status_var := esl_str_dec2int(token_ingress_status);
          esl_read_token(fp_ingress_status, token_line_ingress_status, token_ingress_status);
          infer_input_TSTRB_mInPtr_var := (others => '0');
          while (token(1 to 16) /= "[[/transaction]]") loop
              if (CONV_INTEGER(infer_input_TSTRB_mInPtr_var) > 900 - 1) then
                  assert false report "Fifo overflow!" severity failure;
              end if;
              infer_input_TSTRB_mem_var(CONV_INTEGER(infer_input_TSTRB_mInPtr_var)) := esl_str2lv_hex(token, 4);
              infer_input_TSTRB_mInPtr_var := esl_add(infer_input_TSTRB_mInPtr_var, "1");
              esl_read_token(fp, token_line, token);
              ingress_status_var := esl_str_dec2int(token_ingress_status);
              esl_read_token(fp_ingress_status, token_line_ingress_status, token_ingress_status);
          end loop;
          infer_input_TSTRB_mInPtr  <= infer_input_TSTRB_mInPtr_var;
          infer_input_TSTRB_mem <= infer_input_TSTRB_mem_var;
          wait until clk'event and clk = '0';
          while (infer_input_TSTRB_in_end_reg /= '1') loop
              wait until clk'event and clk = '0';
          end loop;
          esl_read_token(fp, token_line, token);
          infer_input_TSTRB_ingress_status <= ingress_status_var;
          esl_read_token(fp_ingress_status, token_line_ingress_status, token_ingress_status);
          transaction_idx := transaction_idx + 1;
      end loop;
      infer_input_TSTRB_load_TV_done <= '1';
      file_close(fp);
      wait until clk'event and clk = '0';
          while (infer_input_TSTRB_in_end_reg /= '1') loop
          wait until clk'event and clk = '0';
      end loop;
      infer_input_TSTRB_mInPtr <= (others => '0');
      wait;
  end process;

  TRAN_infer_input_TSTRB <= infer_input_TSTRB_mem(CONV_INTEGER(infer_input_TSTRB_mOutPtr));

  infer_input_TSTRB_mOutPtr_proc : process(clk)
  begin
      if (clk'event and clk = '0') then
          if (ready = '1') then
              infer_input_TSTRB_mOutPtr <= (others => '0');
          end if;
      elsif (clk'event and clk = '1') then
          if (TRAN_infer_input_TVALID_wire = '1' and TRAN_infer_input_TREADY = '1') then
              if (esl_icmp_ult(infer_input_TSTRB_mOutPtr,infer_input_TSTRB_mInPtr) = "1") then
                  infer_input_TSTRB_mOutPtr <= esl_add(infer_input_TSTRB_mOutPtr, "1");
              end if;
          end if;
      end if;
  end process;

  infer_input_TSTRB_DUT_read_TV_done_proc : process(clk)
  begin
      if (clk'event and clk = '0') then
          if ((infer_input_TSTRB_load_TV_done = '1') and (esl_icmp_eq(infer_input_TSTRB_mOutPtr,infer_input_TSTRB_mInPtr) = "1")) then
              infer_input_TSTRB_DUT_read_TV_done <= '1';
          end if;
      end if;
  end process;

  ------------------------------- infer_input_TUSER --------------------------------
  infer_input_TUSER_empty_n_proc  :   process(infer_input_TUSER_mInPtr, infer_input_TUSER_mOutPtr)
  begin
      if (esl_icmp_eq(infer_input_TUSER_mInPtr, infer_input_TUSER_mOutPtr) = "1") then
          infer_input_TUSER_empty_n  <=  '0';
      else
          infer_input_TUSER_empty_n  <=  '1';
      end if;
  end process;

proc_gen_infer_input_TUSER_in_size: process
file        fp          :   TEXT;
variable    fstatus     :   FILE_OPEN_STATUS;
variable    i           :   INTEGER;
variable    token_line  :   LINE;
variable    token       :   STRING(1 to 192);
begin
    file_open(fstatus, fp,"../tv/stream_size/stream_size_in_infer_input_V_user_V.dat" , READ_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & "../tv/stream_size/stream_size_in_infer_input_V_user_V.dat" & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    esl_read_token(fp, token_line, token);
    if(token(1 to 13) /= "[[[runtime]]]") then
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    esl_read_token(fp, token_line, token);
      wait until reset = '1';
    wait until clk'event and clk = '1';
    while(token(1 to 14) /= "[[[/runtime]]]") loop
        i := 0;
        if(token(1 to 15) /= "[[transaction]]") then
            assert false report "ERROR: Simulation using HLS TB failed." severity failure;
        end if;
        esl_read_token(fp, token_line, token);  -- Skip transaction number
        esl_read_token(fp, token_line, token);
        infer_input_TUSER_in_size <= esl_str_dec2int(token);
        wait until clk'event and clk = '0';
          while (infer_input_TUSER_in_end_reg /= '1') loop
                wait until clk'event and clk = '0';
        end loop; 
        esl_read_token(fp, token_line, token); --[[/transaction]] 
        esl_read_token(fp, token_line, token);
    end loop;
    if(token(1 to 14) /= "[[[/runtime]]]") then
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    wait until clk'event and clk = '1';
    file_close (fp);
    wait;
end process;

infer_input_TUSER_in_end <= '1' when ((infer_input_TUSER_in_size = 0) and (reset_reg = '1')) or ((infer_input_TUSER_in_i = (infer_input_TUSER_in_size - 1)) and (TRAN_infer_input_TREADY = '1')) else '0';
infer_input_TUSER_trans_num_sig <= infer_input_TUSER_trans_num_reg + 1 when ((infer_input_TUSER_in_end = '1') and (infer_input_TUSER_trans_num_reg /= AUTOTB_TRANSACTION_NUM + 1)) else infer_input_TUSER_trans_num_reg;
infer_input_TUSER_trans_num <= infer_input_TUSER_trans_num_sig;

proc_gen_infer_input_TUSER_in_i : process(reset, clk)
begin
    if(reset = '0') then
        infer_input_TUSER_in_i <= 0;
    elsif(clk'event and clk = '1') then
        if(TRAN_infer_input_TVALID_wire = '1' and TRAN_infer_input_TREADY = '1' and infer_input_TUSER_in_i < infer_input_TUSER_in_size - 1) then
            infer_input_TUSER_in_i <= infer_input_TUSER_in_i + 1;
        elsif(infer_input_TUSER_in_end = '1') then
            infer_input_TUSER_in_i <= 0;
        end if;
    end if;
end process;

proc_gen_infer_input_TUSER_trans_num_reg : process(reset, clk)
begin
    if(reset = '0') then
        infer_input_TUSER_trans_num_reg <= X"00000001";
    elsif(clk'event and clk = '1') then
        infer_input_TUSER_trans_num_reg <= infer_input_TUSER_trans_num_sig;
    end if;
end process;

proc_gen_infer_input_TUSER_in_end_reg: process(reset, clk)
begin
    if(reset = '0') then
        infer_input_TUSER_in_end_reg <= '0';
    elsif(clk'event and clk = '1') then
        infer_input_TUSER_in_end_reg <= infer_input_TUSER_in_end;
    end if;
end process;

  infer_input_TUSER_read_file_proc  :   process
      file        fp          :   TEXT;
      variable    fstatus     :   FILE_OPEN_STATUS;
      variable    token_line  :   LINE;
      variable    token       :   STRING(1 to 128);
      variable    token_len   :   INTEGER;
      variable    token_int    :   INTEGER;
      file        fp_ingress_status          :   TEXT;
      variable    fstatus_ingress_status     :   FILE_OPEN_STATUS;
      variable    token_line_ingress_status  :   LINE;
      variable    token_ingress_status       :   STRING(1 to 128);
      variable    ingress_status_var         :   INTEGER;
      variable    transaction_idx :   INTEGER;
      variable    infer_input_TUSER_mInPtr_var  :   STD_LOGIC_VECTOR (11 downto 0) := (others => '0');
      variable    infer_input_TUSER_mem_var :   infer_input_TUSER_arr2D := (others => (others => '0'));
  begin
      transaction_idx :=  0;
      wait until reset = '1';
      wait until clk'event and clk = '1';
      file_open(fstatus, fp, TV_IN_infer_input_TUSER, READ_MODE);
      if (fstatus /= OPEN_OK) then
          assert false report "Open file " & TV_IN_infer_input_TUSER & " failed!!!" severity failure;
      end if;
      esl_read_token(fp, token_line, token);
      if (token(1 to 13) /= "[[[runtime]]]") then
          assert false report "ERROR: Simulation using HLS TB failed." severity failure;
      end if;
      esl_read_token(fp, token_line, token);
      file_open(fstatus_ingress_status, fp_ingress_status, INGRESS_STATUS_infer_input_TUSER, READ_MODE);
      if (fstatus_ingress_status /= OPEN_OK) then
          assert false report "Open file " & INGRESS_STATUS_infer_input_TUSER & " failed!!!" severity failure;
      end if;
      esl_read_token(fp_ingress_status, token_line_ingress_status, token_ingress_status);
      esl_read_token(fp_ingress_status, token_line_ingress_status, token_ingress_status);
      while (token(1 to 14) /= "[[[/runtime]]]") loop
          if (token(1 to 15) /= "[[transaction]]") then
              assert false report "ERROR: Simulation using HLS TB failed." severity failure;
          end if;
          esl_read_token(fp, token_line, token);  -- Skip transaction number
          -- Start to read data for every transaction round
          esl_read_token(fp, token_line, token);
          esl_read_token(fp_ingress_status, token_line_ingress_status, token_ingress_status);   -- Skip transaction number
          esl_read_token(fp_ingress_status, token_line_ingress_status, token_ingress_status);
          ingress_status_var := esl_str_dec2int(token_ingress_status);
          esl_read_token(fp_ingress_status, token_line_ingress_status, token_ingress_status);
          infer_input_TUSER_mInPtr_var := (others => '0');
          while (token(1 to 16) /= "[[/transaction]]") loop
              if (CONV_INTEGER(infer_input_TUSER_mInPtr_var) > 900 - 1) then
                  assert false report "Fifo overflow!" severity failure;
              end if;
              infer_input_TUSER_mem_var(CONV_INTEGER(infer_input_TUSER_mInPtr_var)) := esl_str2lv_hex(token, 2);
              infer_input_TUSER_mInPtr_var := esl_add(infer_input_TUSER_mInPtr_var, "1");
              esl_read_token(fp, token_line, token);
              ingress_status_var := esl_str_dec2int(token_ingress_status);
              esl_read_token(fp_ingress_status, token_line_ingress_status, token_ingress_status);
          end loop;
          infer_input_TUSER_mInPtr  <= infer_input_TUSER_mInPtr_var;
          infer_input_TUSER_mem <= infer_input_TUSER_mem_var;
          wait until clk'event and clk = '0';
          while (infer_input_TUSER_in_end_reg /= '1') loop
              wait until clk'event and clk = '0';
          end loop;
          esl_read_token(fp, token_line, token);
          infer_input_TUSER_ingress_status <= ingress_status_var;
          esl_read_token(fp_ingress_status, token_line_ingress_status, token_ingress_status);
          transaction_idx := transaction_idx + 1;
      end loop;
      infer_input_TUSER_load_TV_done <= '1';
      file_close(fp);
      wait until clk'event and clk = '0';
          while (infer_input_TUSER_in_end_reg /= '1') loop
          wait until clk'event and clk = '0';
      end loop;
      infer_input_TUSER_mInPtr <= (others => '0');
      wait;
  end process;

  TRAN_infer_input_TUSER <= infer_input_TUSER_mem(CONV_INTEGER(infer_input_TUSER_mOutPtr));

  infer_input_TUSER_mOutPtr_proc : process(clk)
  begin
      if (clk'event and clk = '0') then
          if (ready = '1') then
              infer_input_TUSER_mOutPtr <= (others => '0');
          end if;
      elsif (clk'event and clk = '1') then
          if (TRAN_infer_input_TVALID_wire = '1' and TRAN_infer_input_TREADY = '1') then
              if (esl_icmp_ult(infer_input_TUSER_mOutPtr,infer_input_TUSER_mInPtr) = "1") then
                  infer_input_TUSER_mOutPtr <= esl_add(infer_input_TUSER_mOutPtr, "1");
              end if;
          end if;
      end if;
  end process;

  infer_input_TUSER_DUT_read_TV_done_proc : process(clk)
  begin
      if (clk'event and clk = '0') then
          if ((infer_input_TUSER_load_TV_done = '1') and (esl_icmp_eq(infer_input_TUSER_mOutPtr,infer_input_TUSER_mInPtr) = "1")) then
              infer_input_TUSER_DUT_read_TV_done <= '1';
          end if;
      end if;
  end process;

  ------------------------------- infer_input_TLAST --------------------------------
  infer_input_TLAST_empty_n_proc  :   process(infer_input_TLAST_mInPtr, infer_input_TLAST_mOutPtr)
  begin
      if (esl_icmp_eq(infer_input_TLAST_mInPtr, infer_input_TLAST_mOutPtr) = "1") then
          infer_input_TLAST_empty_n  <=  '0';
      else
          infer_input_TLAST_empty_n  <=  '1';
      end if;
  end process;

proc_gen_infer_input_TLAST_in_size: process
file        fp          :   TEXT;
variable    fstatus     :   FILE_OPEN_STATUS;
variable    i           :   INTEGER;
variable    token_line  :   LINE;
variable    token       :   STRING(1 to 192);
begin
    file_open(fstatus, fp,"../tv/stream_size/stream_size_in_infer_input_V_last_V.dat" , READ_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & "../tv/stream_size/stream_size_in_infer_input_V_last_V.dat" & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    esl_read_token(fp, token_line, token);
    if(token(1 to 13) /= "[[[runtime]]]") then
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    esl_read_token(fp, token_line, token);
      wait until reset = '1';
    wait until clk'event and clk = '1';
    while(token(1 to 14) /= "[[[/runtime]]]") loop
        i := 0;
        if(token(1 to 15) /= "[[transaction]]") then
            assert false report "ERROR: Simulation using HLS TB failed." severity failure;
        end if;
        esl_read_token(fp, token_line, token);  -- Skip transaction number
        esl_read_token(fp, token_line, token);
        infer_input_TLAST_in_size <= esl_str_dec2int(token);
        wait until clk'event and clk = '0';
          while (infer_input_TLAST_in_end_reg /= '1') loop
                wait until clk'event and clk = '0';
        end loop; 
        esl_read_token(fp, token_line, token); --[[/transaction]] 
        esl_read_token(fp, token_line, token);
    end loop;
    if(token(1 to 14) /= "[[[/runtime]]]") then
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    wait until clk'event and clk = '1';
    file_close (fp);
    wait;
end process;

infer_input_TLAST_in_end <= '1' when ((infer_input_TLAST_in_size = 0) and (reset_reg = '1')) or ((infer_input_TLAST_in_i = (infer_input_TLAST_in_size - 1)) and (TRAN_infer_input_TREADY = '1')) else '0';
infer_input_TLAST_trans_num_sig <= infer_input_TLAST_trans_num_reg + 1 when ((infer_input_TLAST_in_end = '1') and (infer_input_TLAST_trans_num_reg /= AUTOTB_TRANSACTION_NUM + 1)) else infer_input_TLAST_trans_num_reg;
infer_input_TLAST_trans_num <= infer_input_TLAST_trans_num_sig;

proc_gen_infer_input_TLAST_in_i : process(reset, clk)
begin
    if(reset = '0') then
        infer_input_TLAST_in_i <= 0;
    elsif(clk'event and clk = '1') then
        if(TRAN_infer_input_TVALID_wire = '1' and TRAN_infer_input_TREADY = '1' and infer_input_TLAST_in_i < infer_input_TLAST_in_size - 1) then
            infer_input_TLAST_in_i <= infer_input_TLAST_in_i + 1;
        elsif(infer_input_TLAST_in_end = '1') then
            infer_input_TLAST_in_i <= 0;
        end if;
    end if;
end process;

proc_gen_infer_input_TLAST_trans_num_reg : process(reset, clk)
begin
    if(reset = '0') then
        infer_input_TLAST_trans_num_reg <= X"00000001";
    elsif(clk'event and clk = '1') then
        infer_input_TLAST_trans_num_reg <= infer_input_TLAST_trans_num_sig;
    end if;
end process;

proc_gen_infer_input_TLAST_in_end_reg: process(reset, clk)
begin
    if(reset = '0') then
        infer_input_TLAST_in_end_reg <= '0';
    elsif(clk'event and clk = '1') then
        infer_input_TLAST_in_end_reg <= infer_input_TLAST_in_end;
    end if;
end process;

  infer_input_TLAST_read_file_proc  :   process
      file        fp          :   TEXT;
      variable    fstatus     :   FILE_OPEN_STATUS;
      variable    token_line  :   LINE;
      variable    token       :   STRING(1 to 128);
      variable    token_len   :   INTEGER;
      variable    token_int    :   INTEGER;
      file        fp_ingress_status          :   TEXT;
      variable    fstatus_ingress_status     :   FILE_OPEN_STATUS;
      variable    token_line_ingress_status  :   LINE;
      variable    token_ingress_status       :   STRING(1 to 128);
      variable    ingress_status_var         :   INTEGER;
      variable    transaction_idx :   INTEGER;
      variable    infer_input_TLAST_mInPtr_var  :   STD_LOGIC_VECTOR (11 downto 0) := (others => '0');
      variable    infer_input_TLAST_mem_var :   infer_input_TLAST_arr2D := (others => (others => '0'));
  begin
      transaction_idx :=  0;
      wait until reset = '1';
      wait until clk'event and clk = '1';
      file_open(fstatus, fp, TV_IN_infer_input_TLAST, READ_MODE);
      if (fstatus /= OPEN_OK) then
          assert false report "Open file " & TV_IN_infer_input_TLAST & " failed!!!" severity failure;
      end if;
      esl_read_token(fp, token_line, token);
      if (token(1 to 13) /= "[[[runtime]]]") then
          assert false report "ERROR: Simulation using HLS TB failed." severity failure;
      end if;
      esl_read_token(fp, token_line, token);
      file_open(fstatus_ingress_status, fp_ingress_status, INGRESS_STATUS_infer_input_TLAST, READ_MODE);
      if (fstatus_ingress_status /= OPEN_OK) then
          assert false report "Open file " & INGRESS_STATUS_infer_input_TLAST & " failed!!!" severity failure;
      end if;
      esl_read_token(fp_ingress_status, token_line_ingress_status, token_ingress_status);
      esl_read_token(fp_ingress_status, token_line_ingress_status, token_ingress_status);
      while (token(1 to 14) /= "[[[/runtime]]]") loop
          if (token(1 to 15) /= "[[transaction]]") then
              assert false report "ERROR: Simulation using HLS TB failed." severity failure;
          end if;
          esl_read_token(fp, token_line, token);  -- Skip transaction number
          -- Start to read data for every transaction round
          esl_read_token(fp, token_line, token);
          esl_read_token(fp_ingress_status, token_line_ingress_status, token_ingress_status);   -- Skip transaction number
          esl_read_token(fp_ingress_status, token_line_ingress_status, token_ingress_status);
          ingress_status_var := esl_str_dec2int(token_ingress_status);
          esl_read_token(fp_ingress_status, token_line_ingress_status, token_ingress_status);
          infer_input_TLAST_mInPtr_var := (others => '0');
          while (token(1 to 16) /= "[[/transaction]]") loop
              if (CONV_INTEGER(infer_input_TLAST_mInPtr_var) > 900 - 1) then
                  assert false report "Fifo overflow!" severity failure;
              end if;
              infer_input_TLAST_mem_var(CONV_INTEGER(infer_input_TLAST_mInPtr_var)) := esl_str2lv_hex(token, 1);
              infer_input_TLAST_mInPtr_var := esl_add(infer_input_TLAST_mInPtr_var, "1");
              esl_read_token(fp, token_line, token);
              ingress_status_var := esl_str_dec2int(token_ingress_status);
              esl_read_token(fp_ingress_status, token_line_ingress_status, token_ingress_status);
          end loop;
          infer_input_TLAST_mInPtr  <= infer_input_TLAST_mInPtr_var;
          infer_input_TLAST_mem <= infer_input_TLAST_mem_var;
          wait until clk'event and clk = '0';
          while (infer_input_TLAST_in_end_reg /= '1') loop
              wait until clk'event and clk = '0';
          end loop;
          esl_read_token(fp, token_line, token);
          infer_input_TLAST_ingress_status <= ingress_status_var;
          esl_read_token(fp_ingress_status, token_line_ingress_status, token_ingress_status);
          transaction_idx := transaction_idx + 1;
      end loop;
      infer_input_TLAST_load_TV_done <= '1';
      file_close(fp);
      wait until clk'event and clk = '0';
          while (infer_input_TLAST_in_end_reg /= '1') loop
          wait until clk'event and clk = '0';
      end loop;
      infer_input_TLAST_mInPtr <= (others => '0');
      wait;
  end process;

  TRAN_infer_input_TLAST <= infer_input_TLAST_mem(CONV_INTEGER(infer_input_TLAST_mOutPtr));

  infer_input_TLAST_mOutPtr_proc : process(clk)
  begin
      if (clk'event and clk = '0') then
          if (ready = '1') then
              infer_input_TLAST_mOutPtr <= (others => '0');
          end if;
      elsif (clk'event and clk = '1') then
          if (TRAN_infer_input_TVALID_wire = '1' and TRAN_infer_input_TREADY = '1') then
              if (esl_icmp_ult(infer_input_TLAST_mOutPtr,infer_input_TLAST_mInPtr) = "1") then
                  infer_input_TLAST_mOutPtr <= esl_add(infer_input_TLAST_mOutPtr, "1");
              end if;
          end if;
      end if;
  end process;

  infer_input_TLAST_DUT_read_TV_done_proc : process(clk)
  begin
      if (clk'event and clk = '0') then
          if ((infer_input_TLAST_load_TV_done = '1') and (esl_icmp_eq(infer_input_TLAST_mOutPtr,infer_input_TLAST_mInPtr) = "1")) then
              infer_input_TLAST_DUT_read_TV_done <= '1';
          end if;
      end if;
  end process;

  ------------------------------- infer_input_TID --------------------------------
  infer_input_TID_empty_n_proc  :   process(infer_input_TID_mInPtr, infer_input_TID_mOutPtr)
  begin
      if (esl_icmp_eq(infer_input_TID_mInPtr, infer_input_TID_mOutPtr) = "1") then
          infer_input_TID_empty_n  <=  '0';
      else
          infer_input_TID_empty_n  <=  '1';
      end if;
  end process;

proc_gen_infer_input_TID_in_size: process
file        fp          :   TEXT;
variable    fstatus     :   FILE_OPEN_STATUS;
variable    i           :   INTEGER;
variable    token_line  :   LINE;
variable    token       :   STRING(1 to 192);
begin
    file_open(fstatus, fp,"../tv/stream_size/stream_size_in_infer_input_V_id_V.dat" , READ_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & "../tv/stream_size/stream_size_in_infer_input_V_id_V.dat" & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    esl_read_token(fp, token_line, token);
    if(token(1 to 13) /= "[[[runtime]]]") then
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    esl_read_token(fp, token_line, token);
      wait until reset = '1';
    wait until clk'event and clk = '1';
    while(token(1 to 14) /= "[[[/runtime]]]") loop
        i := 0;
        if(token(1 to 15) /= "[[transaction]]") then
            assert false report "ERROR: Simulation using HLS TB failed." severity failure;
        end if;
        esl_read_token(fp, token_line, token);  -- Skip transaction number
        esl_read_token(fp, token_line, token);
        infer_input_TID_in_size <= esl_str_dec2int(token);
        wait until clk'event and clk = '0';
          while (infer_input_TID_in_end_reg /= '1') loop
                wait until clk'event and clk = '0';
        end loop; 
        esl_read_token(fp, token_line, token); --[[/transaction]] 
        esl_read_token(fp, token_line, token);
    end loop;
    if(token(1 to 14) /= "[[[/runtime]]]") then
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    wait until clk'event and clk = '1';
    file_close (fp);
    wait;
end process;

infer_input_TID_in_end <= '1' when ((infer_input_TID_in_size = 0) and (reset_reg = '1')) or ((infer_input_TID_in_i = (infer_input_TID_in_size - 1)) and (TRAN_infer_input_TREADY = '1')) else '0';
infer_input_TID_trans_num_sig <= infer_input_TID_trans_num_reg + 1 when ((infer_input_TID_in_end = '1') and (infer_input_TID_trans_num_reg /= AUTOTB_TRANSACTION_NUM + 1)) else infer_input_TID_trans_num_reg;
infer_input_TID_trans_num <= infer_input_TID_trans_num_sig;

proc_gen_infer_input_TID_in_i : process(reset, clk)
begin
    if(reset = '0') then
        infer_input_TID_in_i <= 0;
    elsif(clk'event and clk = '1') then
        if(TRAN_infer_input_TVALID_wire = '1' and TRAN_infer_input_TREADY = '1' and infer_input_TID_in_i < infer_input_TID_in_size - 1) then
            infer_input_TID_in_i <= infer_input_TID_in_i + 1;
        elsif(infer_input_TID_in_end = '1') then
            infer_input_TID_in_i <= 0;
        end if;
    end if;
end process;

proc_gen_infer_input_TID_trans_num_reg : process(reset, clk)
begin
    if(reset = '0') then
        infer_input_TID_trans_num_reg <= X"00000001";
    elsif(clk'event and clk = '1') then
        infer_input_TID_trans_num_reg <= infer_input_TID_trans_num_sig;
    end if;
end process;

proc_gen_infer_input_TID_in_end_reg: process(reset, clk)
begin
    if(reset = '0') then
        infer_input_TID_in_end_reg <= '0';
    elsif(clk'event and clk = '1') then
        infer_input_TID_in_end_reg <= infer_input_TID_in_end;
    end if;
end process;

  infer_input_TID_read_file_proc  :   process
      file        fp          :   TEXT;
      variable    fstatus     :   FILE_OPEN_STATUS;
      variable    token_line  :   LINE;
      variable    token       :   STRING(1 to 128);
      variable    token_len   :   INTEGER;
      variable    token_int    :   INTEGER;
      file        fp_ingress_status          :   TEXT;
      variable    fstatus_ingress_status     :   FILE_OPEN_STATUS;
      variable    token_line_ingress_status  :   LINE;
      variable    token_ingress_status       :   STRING(1 to 128);
      variable    ingress_status_var         :   INTEGER;
      variable    transaction_idx :   INTEGER;
      variable    infer_input_TID_mInPtr_var  :   STD_LOGIC_VECTOR (11 downto 0) := (others => '0');
      variable    infer_input_TID_mem_var :   infer_input_TID_arr2D := (others => (others => '0'));
  begin
      transaction_idx :=  0;
      wait until reset = '1';
      wait until clk'event and clk = '1';
      file_open(fstatus, fp, TV_IN_infer_input_TID, READ_MODE);
      if (fstatus /= OPEN_OK) then
          assert false report "Open file " & TV_IN_infer_input_TID & " failed!!!" severity failure;
      end if;
      esl_read_token(fp, token_line, token);
      if (token(1 to 13) /= "[[[runtime]]]") then
          assert false report "ERROR: Simulation using HLS TB failed." severity failure;
      end if;
      esl_read_token(fp, token_line, token);
      file_open(fstatus_ingress_status, fp_ingress_status, INGRESS_STATUS_infer_input_TID, READ_MODE);
      if (fstatus_ingress_status /= OPEN_OK) then
          assert false report "Open file " & INGRESS_STATUS_infer_input_TID & " failed!!!" severity failure;
      end if;
      esl_read_token(fp_ingress_status, token_line_ingress_status, token_ingress_status);
      esl_read_token(fp_ingress_status, token_line_ingress_status, token_ingress_status);
      while (token(1 to 14) /= "[[[/runtime]]]") loop
          if (token(1 to 15) /= "[[transaction]]") then
              assert false report "ERROR: Simulation using HLS TB failed." severity failure;
          end if;
          esl_read_token(fp, token_line, token);  -- Skip transaction number
          -- Start to read data for every transaction round
          esl_read_token(fp, token_line, token);
          esl_read_token(fp_ingress_status, token_line_ingress_status, token_ingress_status);   -- Skip transaction number
          esl_read_token(fp_ingress_status, token_line_ingress_status, token_ingress_status);
          ingress_status_var := esl_str_dec2int(token_ingress_status);
          esl_read_token(fp_ingress_status, token_line_ingress_status, token_ingress_status);
          infer_input_TID_mInPtr_var := (others => '0');
          while (token(1 to 16) /= "[[/transaction]]") loop
              if (CONV_INTEGER(infer_input_TID_mInPtr_var) > 900 - 1) then
                  assert false report "Fifo overflow!" severity failure;
              end if;
              infer_input_TID_mem_var(CONV_INTEGER(infer_input_TID_mInPtr_var)) := esl_str2lv_hex(token, 5);
              infer_input_TID_mInPtr_var := esl_add(infer_input_TID_mInPtr_var, "1");
              esl_read_token(fp, token_line, token);
              ingress_status_var := esl_str_dec2int(token_ingress_status);
              esl_read_token(fp_ingress_status, token_line_ingress_status, token_ingress_status);
          end loop;
          infer_input_TID_mInPtr  <= infer_input_TID_mInPtr_var;
          infer_input_TID_mem <= infer_input_TID_mem_var;
          wait until clk'event and clk = '0';
          while (infer_input_TID_in_end_reg /= '1') loop
              wait until clk'event and clk = '0';
          end loop;
          esl_read_token(fp, token_line, token);
          infer_input_TID_ingress_status <= ingress_status_var;
          esl_read_token(fp_ingress_status, token_line_ingress_status, token_ingress_status);
          transaction_idx := transaction_idx + 1;
      end loop;
      infer_input_TID_load_TV_done <= '1';
      file_close(fp);
      wait until clk'event and clk = '0';
          while (infer_input_TID_in_end_reg /= '1') loop
          wait until clk'event and clk = '0';
      end loop;
      infer_input_TID_mInPtr <= (others => '0');
      wait;
  end process;

  TRAN_infer_input_TID <= infer_input_TID_mem(CONV_INTEGER(infer_input_TID_mOutPtr));

  infer_input_TID_mOutPtr_proc : process(clk)
  begin
      if (clk'event and clk = '0') then
          if (ready = '1') then
              infer_input_TID_mOutPtr <= (others => '0');
          end if;
      elsif (clk'event and clk = '1') then
          if (TRAN_infer_input_TVALID_wire = '1' and TRAN_infer_input_TREADY = '1') then
              if (esl_icmp_ult(infer_input_TID_mOutPtr,infer_input_TID_mInPtr) = "1") then
                  infer_input_TID_mOutPtr <= esl_add(infer_input_TID_mOutPtr, "1");
              end if;
          end if;
      end if;
  end process;

  infer_input_TID_DUT_read_TV_done_proc : process(clk)
  begin
      if (clk'event and clk = '0') then
          if ((infer_input_TID_load_TV_done = '1') and (esl_icmp_eq(infer_input_TID_mOutPtr,infer_input_TID_mInPtr) = "1")) then
              infer_input_TID_DUT_read_TV_done <= '1';
          end if;
      end if;
  end process;

  ------------------------------- infer_input_TDEST --------------------------------
  infer_input_TDEST_empty_n_proc  :   process(infer_input_TDEST_mInPtr, infer_input_TDEST_mOutPtr)
  begin
      if (esl_icmp_eq(infer_input_TDEST_mInPtr, infer_input_TDEST_mOutPtr) = "1") then
          infer_input_TDEST_empty_n  <=  '0';
      else
          infer_input_TDEST_empty_n  <=  '1';
      end if;
  end process;

proc_gen_infer_input_TDEST_in_size: process
file        fp          :   TEXT;
variable    fstatus     :   FILE_OPEN_STATUS;
variable    i           :   INTEGER;
variable    token_line  :   LINE;
variable    token       :   STRING(1 to 192);
begin
    file_open(fstatus, fp,"../tv/stream_size/stream_size_in_infer_input_V_dest_V.dat" , READ_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & "../tv/stream_size/stream_size_in_infer_input_V_dest_V.dat" & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    esl_read_token(fp, token_line, token);
    if(token(1 to 13) /= "[[[runtime]]]") then
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    esl_read_token(fp, token_line, token);
      wait until reset = '1';
    wait until clk'event and clk = '1';
    while(token(1 to 14) /= "[[[/runtime]]]") loop
        i := 0;
        if(token(1 to 15) /= "[[transaction]]") then
            assert false report "ERROR: Simulation using HLS TB failed." severity failure;
        end if;
        esl_read_token(fp, token_line, token);  -- Skip transaction number
        esl_read_token(fp, token_line, token);
        infer_input_TDEST_in_size <= esl_str_dec2int(token);
        wait until clk'event and clk = '0';
          while (infer_input_TDEST_in_end_reg /= '1') loop
                wait until clk'event and clk = '0';
        end loop; 
        esl_read_token(fp, token_line, token); --[[/transaction]] 
        esl_read_token(fp, token_line, token);
    end loop;
    if(token(1 to 14) /= "[[[/runtime]]]") then
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    wait until clk'event and clk = '1';
    file_close (fp);
    wait;
end process;

infer_input_TDEST_in_end <= '1' when ((infer_input_TDEST_in_size = 0) and (reset_reg = '1')) or ((infer_input_TDEST_in_i = (infer_input_TDEST_in_size - 1)) and (TRAN_infer_input_TREADY = '1')) else '0';
infer_input_TDEST_trans_num_sig <= infer_input_TDEST_trans_num_reg + 1 when ((infer_input_TDEST_in_end = '1') and (infer_input_TDEST_trans_num_reg /= AUTOTB_TRANSACTION_NUM + 1)) else infer_input_TDEST_trans_num_reg;
infer_input_TDEST_trans_num <= infer_input_TDEST_trans_num_sig;

proc_gen_infer_input_TDEST_in_i : process(reset, clk)
begin
    if(reset = '0') then
        infer_input_TDEST_in_i <= 0;
    elsif(clk'event and clk = '1') then
        if(TRAN_infer_input_TVALID_wire = '1' and TRAN_infer_input_TREADY = '1' and infer_input_TDEST_in_i < infer_input_TDEST_in_size - 1) then
            infer_input_TDEST_in_i <= infer_input_TDEST_in_i + 1;
        elsif(infer_input_TDEST_in_end = '1') then
            infer_input_TDEST_in_i <= 0;
        end if;
    end if;
end process;

proc_gen_infer_input_TDEST_trans_num_reg : process(reset, clk)
begin
    if(reset = '0') then
        infer_input_TDEST_trans_num_reg <= X"00000001";
    elsif(clk'event and clk = '1') then
        infer_input_TDEST_trans_num_reg <= infer_input_TDEST_trans_num_sig;
    end if;
end process;

proc_gen_infer_input_TDEST_in_end_reg: process(reset, clk)
begin
    if(reset = '0') then
        infer_input_TDEST_in_end_reg <= '0';
    elsif(clk'event and clk = '1') then
        infer_input_TDEST_in_end_reg <= infer_input_TDEST_in_end;
    end if;
end process;

  infer_input_TDEST_read_file_proc  :   process
      file        fp          :   TEXT;
      variable    fstatus     :   FILE_OPEN_STATUS;
      variable    token_line  :   LINE;
      variable    token       :   STRING(1 to 128);
      variable    token_len   :   INTEGER;
      variable    token_int    :   INTEGER;
      file        fp_ingress_status          :   TEXT;
      variable    fstatus_ingress_status     :   FILE_OPEN_STATUS;
      variable    token_line_ingress_status  :   LINE;
      variable    token_ingress_status       :   STRING(1 to 128);
      variable    ingress_status_var         :   INTEGER;
      variable    transaction_idx :   INTEGER;
      variable    infer_input_TDEST_mInPtr_var  :   STD_LOGIC_VECTOR (11 downto 0) := (others => '0');
      variable    infer_input_TDEST_mem_var :   infer_input_TDEST_arr2D := (others => (others => '0'));
  begin
      transaction_idx :=  0;
      wait until reset = '1';
      wait until clk'event and clk = '1';
      file_open(fstatus, fp, TV_IN_infer_input_TDEST, READ_MODE);
      if (fstatus /= OPEN_OK) then
          assert false report "Open file " & TV_IN_infer_input_TDEST & " failed!!!" severity failure;
      end if;
      esl_read_token(fp, token_line, token);
      if (token(1 to 13) /= "[[[runtime]]]") then
          assert false report "ERROR: Simulation using HLS TB failed." severity failure;
      end if;
      esl_read_token(fp, token_line, token);
      file_open(fstatus_ingress_status, fp_ingress_status, INGRESS_STATUS_infer_input_TDEST, READ_MODE);
      if (fstatus_ingress_status /= OPEN_OK) then
          assert false report "Open file " & INGRESS_STATUS_infer_input_TDEST & " failed!!!" severity failure;
      end if;
      esl_read_token(fp_ingress_status, token_line_ingress_status, token_ingress_status);
      esl_read_token(fp_ingress_status, token_line_ingress_status, token_ingress_status);
      while (token(1 to 14) /= "[[[/runtime]]]") loop
          if (token(1 to 15) /= "[[transaction]]") then
              assert false report "ERROR: Simulation using HLS TB failed." severity failure;
          end if;
          esl_read_token(fp, token_line, token);  -- Skip transaction number
          -- Start to read data for every transaction round
          esl_read_token(fp, token_line, token);
          esl_read_token(fp_ingress_status, token_line_ingress_status, token_ingress_status);   -- Skip transaction number
          esl_read_token(fp_ingress_status, token_line_ingress_status, token_ingress_status);
          ingress_status_var := esl_str_dec2int(token_ingress_status);
          esl_read_token(fp_ingress_status, token_line_ingress_status, token_ingress_status);
          infer_input_TDEST_mInPtr_var := (others => '0');
          while (token(1 to 16) /= "[[/transaction]]") loop
              if (CONV_INTEGER(infer_input_TDEST_mInPtr_var) > 900 - 1) then
                  assert false report "Fifo overflow!" severity failure;
              end if;
              infer_input_TDEST_mem_var(CONV_INTEGER(infer_input_TDEST_mInPtr_var)) := esl_str2lv_hex(token, 6);
              infer_input_TDEST_mInPtr_var := esl_add(infer_input_TDEST_mInPtr_var, "1");
              esl_read_token(fp, token_line, token);
              ingress_status_var := esl_str_dec2int(token_ingress_status);
              esl_read_token(fp_ingress_status, token_line_ingress_status, token_ingress_status);
          end loop;
          infer_input_TDEST_mInPtr  <= infer_input_TDEST_mInPtr_var;
          infer_input_TDEST_mem <= infer_input_TDEST_mem_var;
          wait until clk'event and clk = '0';
          while (infer_input_TDEST_in_end_reg /= '1') loop
              wait until clk'event and clk = '0';
          end loop;
          esl_read_token(fp, token_line, token);
          infer_input_TDEST_ingress_status <= ingress_status_var;
          esl_read_token(fp_ingress_status, token_line_ingress_status, token_ingress_status);
          transaction_idx := transaction_idx + 1;
      end loop;
      infer_input_TDEST_load_TV_done <= '1';
      file_close(fp);
      wait until clk'event and clk = '0';
          while (infer_input_TDEST_in_end_reg /= '1') loop
          wait until clk'event and clk = '0';
      end loop;
      infer_input_TDEST_mInPtr <= (others => '0');
      wait;
  end process;

  TRAN_infer_input_TDEST <= infer_input_TDEST_mem(CONV_INTEGER(infer_input_TDEST_mOutPtr));

  infer_input_TDEST_mOutPtr_proc : process(clk)
  begin
      if (clk'event and clk = '0') then
          if (ready = '1') then
              infer_input_TDEST_mOutPtr <= (others => '0');
          end if;
      elsif (clk'event and clk = '1') then
          if (TRAN_infer_input_TVALID_wire = '1' and TRAN_infer_input_TREADY = '1') then
              if (esl_icmp_ult(infer_input_TDEST_mOutPtr,infer_input_TDEST_mInPtr) = "1") then
                  infer_input_TDEST_mOutPtr <= esl_add(infer_input_TDEST_mOutPtr, "1");
              end if;
          end if;
      end if;
  end process;

  infer_input_TDEST_DUT_read_TV_done_proc : process(clk)
  begin
      if (clk'event and clk = '0') then
          if ((infer_input_TDEST_load_TV_done = '1') and (esl_icmp_eq(infer_input_TDEST_mOutPtr,infer_input_TDEST_mInPtr) = "1")) then
              infer_input_TDEST_DUT_read_TV_done <= '1';
          end if;
      end if;
  end process;

end behav;
