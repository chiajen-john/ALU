`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/14/2022 02:03:45 PM
// Design Name: 
// Module Name: 
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

module my_reg (q, overflow, zero, carry, d, clk);
parameter width=32;
output [width+2:0]q;
input overflow, zero, carry;
input [width-1:0]d;
input clk;
wire [width+2:0] temp;
assign temp = {overflow, zero, carry, d};

genvar i;
generate
    for (i=0; i<width+3 ; i=i+1) begin
        dff dffbit(.q(q[i]), .d(temp[i]), .clk(clk));
    end
endgenerate
endmodule
