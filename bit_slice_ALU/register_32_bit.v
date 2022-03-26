`timescale 1ns / 1ps

module register_32_bit (q, overflow, zero, carry, d, clk);
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
