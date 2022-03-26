`timescale 1ns / 1ps

module alu_multiplier(A,B,P);
    input [3:0]A,B;
    output [7:0]P;
    assign P = A*B;
endmodule
