// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Sat May 11 11:33:10 2019
// Host        : DESKTOP-LTCIVRN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/git/SDPU/DataSniffer/DataSniffer.srcs/sources_1/bd/DataSniffer/ip/DataSniffer_xlconcat_0_0/DataSniffer_xlconcat_0_0_stub.v
// Design      : DataSniffer_xlconcat_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "xlconcat,Vivado 2016.4" *)
module DataSniffer_xlconcat_0_0(In0, In1, dout)
/* synthesis syn_black_box black_box_pad_pin="In0[0:0],In1[0:0],dout[1:0]" */;
  input [0:0]In0;
  input [0:0]In1;
  output [1:0]dout;
endmodule
