`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/01/2019 12:58:51 PM
// Design Name: 
// Module Name: month_checker
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


module month_checker(
    input wire [7:0] character_MSB,
                     character_LSB,
    input wire      clk,
                    reset,
    output reg      month_ok                   
    );

reg month_ok_nxt;    
    
always @(posedge clk or posedge reset)
begin
    if(reset)
    begin
        month_ok <= month_ok_nxt;
    end
    else
    begin 
        month_ok <= 0;
    end
end

always @*
begin
    if ( character_MSB * 10 + character_LSB > 12)
    begin
        month_ok_nxt = 0;
    end
    else
    begin
        month_ok_nxt = 1;
    end
end
    
endmodule
