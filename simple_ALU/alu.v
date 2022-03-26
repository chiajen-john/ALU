`timescale 1ns / 1ps

module alu(A, B, S, Y);
    input [3:0]A,B;
    input [1:0]S;
    output [7:0]Y;
    wire [7:0]W0,W1,W2,W3;
    
    alu_concate ac1(A,B,W0);
    alu_adder aa1(A,B,W1);
    alu_shift as1(A,B,W2);
    alu_multiplier am1(A,B,W3);
    alu_multiplex amu1(W0,W1,W2,W3, S, Y);
    
endmodule
