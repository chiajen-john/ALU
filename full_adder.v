`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2021 10:48:18 AM
// Design Name: 
// Module Name: full_adder
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


module full_adder(
    input A,
    input B,
    input CIN,
    output SUM,
    output CARRY
    );
    wire s1,c1,c2;
    half_adder ha1(A,B,s1,c1);
    half_adder ha2(s1,CIN,SUM,c2);
    or G3(CARRY,c1,c2);
endmodule
