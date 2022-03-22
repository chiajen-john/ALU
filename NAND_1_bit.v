`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/15/2022 11:38:57 AM
// Design Name: 
// Module Name: NAND_1_bit
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


module NAND_1_bit(out, a, b);
    input a, b;
    output out;
    wire temp;
    and g0 (temp, a, b);
    not (out, temp);
endmodule
