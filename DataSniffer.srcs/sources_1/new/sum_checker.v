`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/01/2019 12:58:51 PM
// Design Name: 
// Module Name: sum_checker
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


module sum_checker(
    input wire [87:0] character_in,
    input wire      clk,
                    reset,
    output reg      sum_ok                   
    );

reg sum_ok_nxt;    
    
always @(posedge clk or posedge reset)
begin
    if(reset)
    begin
        sum_ok <= sum_ok_nxt;
    end
    else
    begin 
        sum_ok <= 0;
    end
end

always @*
begin
    if (((  character_in[87:80] * 9 + 
            character_in[79:72] * 7 +
            character_in[71:64] * 3 +
            character_in[63:56] * 1 +
            character_in[55:48] * 9 +
            character_in[47:40] * 7 +
            character_in[39:32] * 3 +
            character_in[31:24] * 1 +
            character_in[23:16] * 9 +
            character_in[15:8]  * 7) % 10) == character_in[7:0])
    begin
        sum_ok_nxt = 1;
    end
    else
    begin
        sum_ok_nxt = 0;
    end
end
    
endmodule
