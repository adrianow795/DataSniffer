-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
-- Date        : Sat May 11 12:13:28 2019
-- Host        : DESKTOP-LTCIVRN running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/git/SDPU/DataSniffer/DataSniffer.srcs/sources_1/bd/DataSniffer/ip/DataSniffer_PeselSercher_0_0/DataSniffer_PeselSercher_0_0_sim_netlist.vhdl
-- Design      : DataSniffer_PeselSercher_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DataSniffer_PeselSercher_0_0_PeselSercher_v1_0_M00_AXIS is
  port (
    \m00_axis_tdata[2]\ : out STD_LOGIC;
    \m00_axis_tdata_1__s_port_]\ : out STD_LOGIC;
    \m00_axis_tdata[3]\ : out STD_LOGIC;
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tlast : out STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axis_aclk : in STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC;
    m00_axis_tready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of DataSniffer_PeselSercher_0_0_PeselSercher_v1_0_M00_AXIS : entity is "PeselSercher_v1_0_M00_AXIS";
end DataSniffer_PeselSercher_0_0_PeselSercher_v1_0_M00_AXIS;

architecture STRUCTURE of DataSniffer_PeselSercher_0_0_PeselSercher_v1_0_M00_AXIS is
  signal axis_tlast_delay_i_1_n_0 : STD_LOGIC;
  signal axis_tvalid_delay_i_1_n_0 : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal count0 : STD_LOGIC;
  signal \count[3]_i_1_n_0\ : STD_LOGIC;
  signal \^m00_axis_tdata[2]\ : STD_LOGIC;
  signal \^m00_axis_tdata[3]\ : STD_LOGIC;
  signal \m00_axis_tdata_1__s_net_1\ : STD_LOGIC;
  signal mst_exec_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \mst_exec_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \mst_exec_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \mst_exec_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \mst_exec_state[1]_i_2_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal read_pointer_reg : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sel0 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \stream_data_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \stream_data_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \stream_data_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \stream_data_out[3]_i_1_n_0\ : STD_LOGIC;
  signal \stream_data_out[4]_i_3_n_0\ : STD_LOGIC;
  signal tx_done_i_1_n_0 : STD_LOGIC;
  signal tx_done_i_2_n_0 : STD_LOGIC;
  signal tx_done_reg_n_0 : STD_LOGIC;
  signal tx_en : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axis_tlast_delay_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axis_tvalid_delay_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[4]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \mst_exec_state[0]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \stream_data_out[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \stream_data_out[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \stream_data_out[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \stream_data_out[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \stream_data_out[4]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of tx_done_i_2 : label is "soft_lutpair1";
begin
  \m00_axis_tdata[2]\ <= \^m00_axis_tdata[2]\;
  \m00_axis_tdata[3]\ <= \^m00_axis_tdata[3]\;
  \m00_axis_tdata_1__s_port_]\ <= \m00_axis_tdata_1__s_net_1\;
axis_tlast_delay_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \m00_axis_tdata_1__s_net_1\,
      I1 => read_pointer_reg(0),
      I2 => \^m00_axis_tdata[2]\,
      I3 => \^m00_axis_tdata[3]\,
      I4 => m00_axis_aresetn,
      O => axis_tlast_delay_i_1_n_0
    );
axis_tlast_delay_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => axis_tlast_delay_i_1_n_0,
      Q => m00_axis_tlast,
      R => '0'
    );
axis_tvalid_delay_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \^m00_axis_tdata[3]\,
      I1 => mst_exec_state(1),
      I2 => mst_exec_state(0),
      I3 => m00_axis_aresetn,
      O => axis_tvalid_delay_i_1_n_0
    );
axis_tvalid_delay_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => axis_tvalid_delay_i_1_n_0,
      Q => m00_axis_tvalid,
      R => '0'
    );
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(0),
      O => p_0_in(0)
    );
\count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      O => p_0_in(1)
    );
\count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => sel0(1),
      O => p_0_in(2)
    );
\count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => sel0(3),
      O => \count[3]_i_1_n_0\
    );
\count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44044444"
    )
        port map (
      I0 => mst_exec_state(1),
      I1 => mst_exec_state(0),
      I2 => sel0(3),
      I3 => \mst_exec_state[0]_i_2_n_0\,
      I4 => sel0(4),
      O => count0
    );
\count[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(3),
      I4 => sel0(4),
      O => p_0_in(4)
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => count0,
      D => p_0_in(0),
      Q => sel0(0),
      R => clear
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => count0,
      D => p_0_in(1),
      Q => sel0(1),
      R => clear
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => count0,
      D => p_0_in(2),
      Q => sel0(2),
      R => clear
    );
\count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => count0,
      D => \count[3]_i_1_n_0\,
      Q => sel0(3),
      R => clear
    );
\count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => count0,
      D => p_0_in(4),
      Q => sel0(4),
      R => clear
    );
\mst_exec_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00BFFF"
    )
        port map (
      I0 => \mst_exec_state[0]_i_2_n_0\,
      I1 => sel0(4),
      I2 => sel0(3),
      I3 => mst_exec_state(0),
      I4 => mst_exec_state(1),
      O => \mst_exec_state[0]_i_1_n_0\
    );
\mst_exec_state[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(2),
      O => \mst_exec_state[0]_i_2_n_0\
    );
\mst_exec_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FA0000"
    )
        port map (
      I0 => mst_exec_state(1),
      I1 => mst_exec_state(0),
      I2 => \mst_exec_state[1]_i_2_n_0\,
      I3 => tx_done_reg_n_0,
      I4 => m00_axis_aresetn,
      O => \mst_exec_state[1]_i_1_n_0\
    );
\mst_exec_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(4),
      I2 => mst_exec_state(0),
      I3 => sel0(2),
      I4 => sel0(1),
      I5 => sel0(0),
      O => \mst_exec_state[1]_i_2_n_0\
    );
\mst_exec_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \mst_exec_state[0]_i_1_n_0\,
      Q => mst_exec_state(0),
      R => clear
    );
\mst_exec_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \mst_exec_state[1]_i_1_n_0\,
      Q => mst_exec_state(1),
      R => '0'
    );
\read_pointer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => tx_en,
      D => \stream_data_out[0]_i_1_n_0\,
      Q => read_pointer_reg(0),
      R => clear
    );
\stream_data_out[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_pointer_reg(0),
      O => \stream_data_out[0]_i_1_n_0\
    );
\stream_data_out[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => read_pointer_reg(0),
      I1 => \m00_axis_tdata_1__s_net_1\,
      O => \stream_data_out[1]_i_1_n_0\
    );
\stream_data_out[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => read_pointer_reg(0),
      I1 => \m00_axis_tdata_1__s_net_1\,
      I2 => \^m00_axis_tdata[2]\,
      O => \stream_data_out[2]_i_1_n_0\
    );
\stream_data_out[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \m00_axis_tdata_1__s_net_1\,
      I1 => read_pointer_reg(0),
      I2 => \^m00_axis_tdata[2]\,
      I3 => \^m00_axis_tdata[3]\,
      O => \stream_data_out[3]_i_1_n_0\
    );
\stream_data_out[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m00_axis_aresetn,
      O => clear
    );
\stream_data_out[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => m00_axis_tready,
      I1 => \^m00_axis_tdata[3]\,
      I2 => mst_exec_state(1),
      I3 => mst_exec_state(0),
      O => tx_en
    );
\stream_data_out[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^m00_axis_tdata[3]\,
      I1 => \m00_axis_tdata_1__s_net_1\,
      I2 => read_pointer_reg(0),
      I3 => \^m00_axis_tdata[2]\,
      O => \stream_data_out[4]_i_3_n_0\
    );
\stream_data_out_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => m00_axis_aclk,
      CE => tx_en,
      D => \stream_data_out[0]_i_1_n_0\,
      Q => m00_axis_tdata(0),
      S => clear
    );
\stream_data_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => tx_en,
      D => \stream_data_out[1]_i_1_n_0\,
      Q => \m00_axis_tdata_1__s_net_1\,
      R => clear
    );
\stream_data_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => tx_en,
      D => \stream_data_out[2]_i_1_n_0\,
      Q => \^m00_axis_tdata[2]\,
      R => clear
    );
\stream_data_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => tx_en,
      D => \stream_data_out[3]_i_1_n_0\,
      Q => \^m00_axis_tdata[3]\,
      R => clear
    );
\stream_data_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => tx_en,
      D => \stream_data_out[4]_i_3_n_0\,
      Q => m00_axis_tdata(1),
      R => clear
    );
tx_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAABAAAA"
    )
        port map (
      I0 => tx_done_reg_n_0,
      I1 => \m00_axis_tdata_1__s_net_1\,
      I2 => read_pointer_reg(0),
      I3 => \^m00_axis_tdata[2]\,
      I4 => \^m00_axis_tdata[3]\,
      I5 => tx_done_i_2_n_0,
      O => tx_done_i_1_n_0
    );
tx_done_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0400FFFF"
    )
        port map (
      I0 => mst_exec_state(0),
      I1 => mst_exec_state(1),
      I2 => \^m00_axis_tdata[3]\,
      I3 => m00_axis_tready,
      I4 => m00_axis_aresetn,
      O => tx_done_i_2_n_0
    );
tx_done_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => tx_done_i_1_n_0,
      Q => tx_done_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DataSniffer_PeselSercher_0_0_PeselSercher_v1_0_S00_AXIS is
  port (
    s00_axis_tready : out STD_LOGIC;
    s00_axis_tlast : in STD_LOGIC;
    s00_axis_aclk : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of DataSniffer_PeselSercher_0_0_PeselSercher_v1_0_S00_AXIS : entity is "PeselSercher_v1_0_S00_AXIS";
end DataSniffer_PeselSercher_0_0_PeselSercher_v1_0_S00_AXIS;

architecture STRUCTURE of DataSniffer_PeselSercher_0_0_PeselSercher_v1_0_S00_AXIS is
  signal mst_exec_state_i_1_n_0 : STD_LOGIC;
  signal \^s00_axis_tready\ : STD_LOGIC;
  signal write_pointer : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \write_pointer[0]_i_1_n_0\ : STD_LOGIC;
  signal \write_pointer[1]_i_1_n_0\ : STD_LOGIC;
  signal \write_pointer[2]_i_1_n_0\ : STD_LOGIC;
  signal writes_done : STD_LOGIC;
  signal writes_done0_n_0 : STD_LOGIC;
  signal writes_done_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of mst_exec_state_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \write_pointer[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \write_pointer[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of writes_done_i_1 : label is "soft_lutpair7";
begin
  s00_axis_tready <= \^s00_axis_tready\;
mst_exec_state_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E00"
    )
        port map (
      I0 => s00_axis_tvalid,
      I1 => \^s00_axis_tready\,
      I2 => writes_done,
      I3 => s00_axis_aresetn,
      O => mst_exec_state_i_1_n_0
    );
mst_exec_state_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => mst_exec_state_i_1_n_0,
      Q => \^s00_axis_tready\,
      R => '0'
    );
\write_pointer[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A00"
    )
        port map (
      I0 => write_pointer(0),
      I1 => s00_axis_tvalid,
      I2 => \^s00_axis_tready\,
      I3 => s00_axis_aresetn,
      O => \write_pointer[0]_i_1_n_0\
    );
\write_pointer[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAA0000"
    )
        port map (
      I0 => write_pointer(1),
      I1 => \^s00_axis_tready\,
      I2 => s00_axis_tvalid,
      I3 => write_pointer(0),
      I4 => s00_axis_aresetn,
      O => \write_pointer[1]_i_1_n_0\
    );
\write_pointer[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAA00000000"
    )
        port map (
      I0 => write_pointer(2),
      I1 => \^s00_axis_tready\,
      I2 => s00_axis_tvalid,
      I3 => write_pointer(1),
      I4 => write_pointer(0),
      I5 => s00_axis_aresetn,
      O => \write_pointer[2]_i_1_n_0\
    );
\write_pointer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \write_pointer[0]_i_1_n_0\,
      Q => write_pointer(0),
      R => '0'
    );
\write_pointer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \write_pointer[1]_i_1_n_0\,
      Q => write_pointer(1),
      R => '0'
    );
\write_pointer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \write_pointer[2]_i_1_n_0\,
      Q => write_pointer(2),
      R => '0'
    );
writes_done0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => s00_axis_tlast,
      I1 => write_pointer(2),
      I2 => write_pointer(0),
      I3 => write_pointer(1),
      O => writes_done0_n_0
    );
writes_done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF2A0000"
    )
        port map (
      I0 => writes_done,
      I1 => s00_axis_tvalid,
      I2 => \^s00_axis_tready\,
      I3 => writes_done0_n_0,
      I4 => s00_axis_aresetn,
      O => writes_done_i_1_n_0
    );
writes_done_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => writes_done_i_1_n_0,
      Q => writes_done,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DataSniffer_PeselSercher_0_0_PeselSercher_v1_0 is
  port (
    s00_axis_tready : out STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tlast : out STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    s00_axis_aclk : in STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC;
    s00_axis_tlast : in STD_LOGIC;
    m00_axis_tready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of DataSniffer_PeselSercher_0_0_PeselSercher_v1_0 : entity is "PeselSercher_v1_0";
end DataSniffer_PeselSercher_0_0_PeselSercher_v1_0;

architecture STRUCTURE of DataSniffer_PeselSercher_0_0_PeselSercher_v1_0 is
begin
PeselSercher_v1_0_M00_AXIS_inst: entity work.DataSniffer_PeselSercher_0_0_PeselSercher_v1_0_M00_AXIS
     port map (
      m00_axis_aclk => m00_axis_aclk,
      m00_axis_aresetn => m00_axis_aresetn,
      m00_axis_tdata(1) => m00_axis_tdata(4),
      m00_axis_tdata(0) => m00_axis_tdata(0),
      \m00_axis_tdata[2]\ => m00_axis_tdata(2),
      \m00_axis_tdata[3]\ => m00_axis_tdata(3),
      \m00_axis_tdata_1__s_port_]\ => m00_axis_tdata(1),
      m00_axis_tlast => m00_axis_tlast,
      m00_axis_tready => m00_axis_tready,
      m00_axis_tvalid => m00_axis_tvalid
    );
PeselSercher_v1_0_S00_AXIS_inst: entity work.DataSniffer_PeselSercher_0_0_PeselSercher_v1_0_S00_AXIS
     port map (
      s00_axis_aclk => s00_axis_aclk,
      s00_axis_aresetn => s00_axis_aresetn,
      s00_axis_tlast => s00_axis_tlast,
      s00_axis_tready => s00_axis_tready,
      s00_axis_tvalid => s00_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DataSniffer_PeselSercher_0_0 is
  port (
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axis_tlast : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_tready : out STD_LOGIC;
    s00_axis_aclk : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axis_tlast : out STD_LOGIC;
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of DataSniffer_PeselSercher_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of DataSniffer_PeselSercher_0_0 : entity is "DataSniffer_PeselSercher_0_0,PeselSercher_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of DataSniffer_PeselSercher_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of DataSniffer_PeselSercher_0_0 : entity is "PeselSercher_v1_0,Vivado 2016.4";
end DataSniffer_PeselSercher_0_0;

architecture STRUCTURE of DataSniffer_PeselSercher_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^m00_axis_tdata\ : STD_LOGIC_VECTOR ( 4 downto 0 );
begin
  m00_axis_tdata(31) <= \<const0>\;
  m00_axis_tdata(30) <= \<const0>\;
  m00_axis_tdata(29) <= \<const0>\;
  m00_axis_tdata(28) <= \<const0>\;
  m00_axis_tdata(27) <= \<const0>\;
  m00_axis_tdata(26) <= \<const0>\;
  m00_axis_tdata(25) <= \<const0>\;
  m00_axis_tdata(24) <= \<const0>\;
  m00_axis_tdata(23) <= \<const0>\;
  m00_axis_tdata(22) <= \<const0>\;
  m00_axis_tdata(21) <= \<const0>\;
  m00_axis_tdata(20) <= \<const0>\;
  m00_axis_tdata(19) <= \<const0>\;
  m00_axis_tdata(18) <= \<const0>\;
  m00_axis_tdata(17) <= \<const0>\;
  m00_axis_tdata(16) <= \<const0>\;
  m00_axis_tdata(15) <= \<const0>\;
  m00_axis_tdata(14) <= \<const0>\;
  m00_axis_tdata(13) <= \<const0>\;
  m00_axis_tdata(12) <= \<const0>\;
  m00_axis_tdata(11) <= \<const0>\;
  m00_axis_tdata(10) <= \<const0>\;
  m00_axis_tdata(9) <= \<const0>\;
  m00_axis_tdata(8) <= \<const0>\;
  m00_axis_tdata(7) <= \<const0>\;
  m00_axis_tdata(6) <= \<const0>\;
  m00_axis_tdata(5) <= \<const0>\;
  m00_axis_tdata(4 downto 0) <= \^m00_axis_tdata\(4 downto 0);
  m00_axis_tstrb(3) <= \<const1>\;
  m00_axis_tstrb(2) <= \<const1>\;
  m00_axis_tstrb(1) <= \<const1>\;
  m00_axis_tstrb(0) <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.DataSniffer_PeselSercher_0_0_PeselSercher_v1_0
     port map (
      m00_axis_aclk => m00_axis_aclk,
      m00_axis_aresetn => m00_axis_aresetn,
      m00_axis_tdata(4 downto 0) => \^m00_axis_tdata\(4 downto 0),
      m00_axis_tlast => m00_axis_tlast,
      m00_axis_tready => m00_axis_tready,
      m00_axis_tvalid => m00_axis_tvalid,
      s00_axis_aclk => s00_axis_aclk,
      s00_axis_aresetn => s00_axis_aresetn,
      s00_axis_tlast => s00_axis_tlast,
      s00_axis_tready => s00_axis_tready,
      s00_axis_tvalid => s00_axis_tvalid
    );
end STRUCTURE;
