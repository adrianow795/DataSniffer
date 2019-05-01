`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/20/2019 11:14:04 PM
// Design Name: 
// Module Name: PeselCandidatAnalyzer
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


module PeselCandidatAnalyzer(
    input wire        clk,
    input wire        enable,
    input wire        reset,
    input wire [15:0] index_in,
    input wire [87:0] character_in,
    output reg [15:0] index_out,
    output reg        pesel_ok
    );
    
 localparam INVALID_REG_VAL = 16'hFFFF,
            ASCII_NUMBER_0  = 8'h30;
            
 reg [15:0] index_nxt;
 reg [15:0] character_sum;
 reg [15:0] year,
            month,
            day;
 reg  pesel_ok_nxt;           
            
 wire year_ok,
      month_ok,
      day_ok,
      sum_ok;


day_checker MyDayChecker (
    .character_MSB(character_in[55:48]),
    .character_LSB(character_in[47:40]),
    .clk(clk),
    .reset(reset),
    .day_ok(day_ok));
    
month_checker MyMonthChecker (
        .character_MSB(character_in[71:64]),
        .character_LSB(character_in[63:56]),
        .clk(clk),
        .reset(reset),
        .month_ok(month_ok));

year_checker MyYearChecker (
        .character_MSB(character_in[87:80]),
        .character_LSB(character_in[79:72]),
        .clk(clk),
        .reset(reset),
        .year_ok(year_ok));

sum_checker MySumChecker (
    .character_in(character_in),
    .clk(clk),
    .reset(reset),
    .sum_ok(sum_ok));        


    
always @(posedge clk or posedge reset)
begin
    if(reset)
    begin
        index_out <= 0;
        pesel_ok <= 0;
    end
    else
    begin
        index_out <= index_nxt;
        pesel_ok <= pesel_ok_nxt;
    end
    
end

always @*
begin
    if( sum_ok & year_ok & month_ok & day_ok == 1)
    begin
        pesel_ok_nxt = 1;
        index_nxt = index_in;
    end
    else
    begin
        pesel_ok_nxt = 0;
        index_nxt = 0;
    end
end



endmodule
