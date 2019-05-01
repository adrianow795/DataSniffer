`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/19/2019 08:22:58 PM
// Design Name: 
// Module Name: NumberChecker
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


module NumberChecker(
    input wire clk,
    input wire reset,
    input wire [7:0] character_in,
    output reg [7:0] character_out,
    output reg [15:0] index,
    output reg is_number
    );
    
    localparam ASCII_NUMBER_0 = 8'h30,
               ASCII_NUMBER_9 = 8'h39;
    reg [15:0] index_nxt = 0;
    reg is_number_nxt;
    reg [7:0] character_nxt;
    
always @(posedge reset or posedge clk)
begin
    if(reset)
    begin
        character_out <= 0;
        index <= 0;
        is_number <= 0;
    end
    else
    begin
        character_out <= character_nxt;
        index <= index_nxt;
        is_number <= is_number_nxt;
    end
end 

always @*
begin
    if((character_in - ASCII_NUMBER_0 <= 9) && (character_in - ASCII_NUMBER_0 >= 0))
    begin
        is_number_nxt = 1;
        character_nxt = character_in - ASCII_NUMBER_0;
    end
    else
    begin 
        is_number_nxt = 0;
        character_nxt = character_in;
    end
    index_nxt = index_nxt + 1;
end    
    
endmodule
