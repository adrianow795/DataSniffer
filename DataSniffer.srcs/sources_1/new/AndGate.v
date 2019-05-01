`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/20/2019 12:52:07 PM
// Design Name: 
// Module Name: AndGate
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module AndGate(
    input wire [10:0]   is_number_in,
    input wire [7:0]    character_in_00,
                        character_in_01,
                        character_in_02,
                        character_in_03,
                        character_in_04,
                        character_in_05,
                        character_in_06,
                        character_in_07,
                        character_in_08,
                        character_in_09,
                        character_in_10,
    input wire          clk,
                        reset,
    output reg          is_number_out,
    output reg [7:0]    character_out_00,
                        character_out_01,
                        character_out_02,
                        character_out_03,
                        character_out_04,
                        character_out_05,
                        character_out_06,
                        character_out_07,
                        character_out_08,
                        character_out_09,
                        character_out_10
    );

reg is_number_nxt = 0;

always @(posedge clk or posedge reset)
begin
    if(reset)
    begin
        is_number_out   <= 0;
        character_out_00 <= 0;
        character_out_01 <= 0;
        character_out_02 <= 0;
        character_out_03 <= 0;
        character_out_04 <= 0;
        character_out_05 <= 0;
        character_out_06 <= 0;
        character_out_07 <= 0;
        character_out_08 <= 0;
        character_out_09 <= 0;
        character_out_10 <= 0;
    end
    else
    begin
        is_number_out = is_number_nxt;
        character_out_00 <= character_in_00;
        character_out_01 <= character_in_01;
        character_out_02 <= character_in_02;
        character_out_03 <= character_in_03;
        character_out_04 <= character_in_04;
        character_out_05 <= character_in_05;
        character_out_06 <= character_in_06;
        character_out_07 <= character_in_07;
        character_out_08 <= character_in_08;
        character_out_09 <= character_in_09;
        character_out_10 <= character_in_10;
    end
end
    
always @*
begin
    if ( is_number_in == 11'b11111111111)
    begin
        is_number_nxt = 1;
    end
    else
    begin
        is_number_nxt = 0;
    end        
end
endmodule
