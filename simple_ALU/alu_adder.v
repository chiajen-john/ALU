`timescale 1ns / 1ps

module alu_adder(A, B, SUM);
    input [3:0]A,B;
    output [7:0]SUM;
    assign SUM = A+B;
endmodule
