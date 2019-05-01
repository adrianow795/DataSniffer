`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/19/2019 11:11:50 PM
// Design Name: 
// Module Name: PeselSearcher
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


module PeselSearcher
(   
    input wire          clk,
                        reset,
    input wire [7:0]    character_in,
    output wire         write_en,
    output wire [15:0]   index_out
    );

localparam PESEL_NR_OF_DIGITS = 4'd11;

wire [7:0]  character     [PESEL_NR_OF_DIGITS:0];
wire [7:0]  character_2   [PESEL_NR_OF_DIGITS-1:0];
wire        is_number   [PESEL_NR_OF_DIGITS-1:0];
wire        is_number_out;
wire [15:0] index       [PESEL_NR_OF_DIGITS-1:0];

assign character[0] = character_in;

generate 
    genvar i;

    for(i = 0; i < PESEL_NR_OF_DIGITS; i = i + 1)
    begin:stage
        NumberChecker myNumberChecker (
        .clk(clk),
        .reset(reset),
        .character_in(character[i]),
        .character_out(character[i+1]),
        .index(index[i]),
        .is_number(is_number[i])
        );
    end
endgenerate

AndGate myAndGate (
    .clk(clk),
    .reset(reset),
    .is_number_in({is_number[10],is_number[9],is_number[8],
                    is_number[7],is_number[6],is_number[5],
                    is_number[4],is_number[3],is_number[2],
                    is_number[1],is_number[0]}),
    
    .character_in_00(character[1]),
    .character_in_01(character[2]),
    .character_in_02(character[3]),
    .character_in_03(character[4]),
    .character_in_04(character[5]),
    .character_in_05(character[6]),
    .character_in_06(character[7]),
    .character_in_07(character[8]),
    .character_in_08(character[9]),
    .character_in_09(character[10]),  
    .character_in_10(character[11]),             
    .character_out_00(character_2[0]),
    .character_out_01(character_2[1]),
    .character_out_02(character_2[2]),
    .character_out_03(character_2[3]),
    .character_out_04(character_2[4]),
    .character_out_05(character_2[5]),
    .character_out_06(character_2[6]),
    .character_out_07(character_2[7]),
    .character_out_08(character_2[8]),
    .character_out_09(character_2[9]),
    .character_out_10(character_2[10]),
    
    .is_number_out(is_number_out) 
    );

PeselCandidatAnalyzer myPeselCandidatAnalyzer(
    .clk(clk),
    .enable(is_number_out),
    .index_in(index[0]),
    .index_out(index_out),
    .pesel_ok(write_en),
    .character_in({
                    character_2[0],
                    character_2[1],
                    character_2[2],
                    character_2[3],
                    character_2[4],
                    character_2[5],
                    character_2[6],
                    character_2[7],
                    character_2[8],
                    character_2[9],
                    character_2[10]
                    })
);
    
endmodule
