`timescale 1ns / 1ps

module alu_concate(A,B,Y);
    input [3:0]A,B;
    output [7:0]Y;
    assign Y = {A,B};
endmodule
