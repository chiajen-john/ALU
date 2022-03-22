`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2021 10:11:50 AM
// Design Name: 
// Module Name: alu_adder
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
// This is a carry-look-ahead adder
//////////////////////////////////////////////////////////////////////////////////


module alu_adder(A, B, SUM);
    input [3:0]A,B;
    output [7:0]SUM;
    assign SUM = A+B;
endmodule
