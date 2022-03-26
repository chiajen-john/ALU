`timescale 1ns / 1ps

module four_bit_adder(A, B, CIN, SUM, CAR);
    input [3:0]A;
    input [3:0]B;
    input CIN;
    output [3:0]SUM;
    output CAR;
    wire [2:0]C;
    
    full_adder f0(A[0],B[0],CIN,SUM[0],C[0]);
    full_adder f1(A[1],B[1],C[0],SUM[1],C[1]);
    full_adder f2(A[2],B[2],C[1],SUM[2],C[2]);
    full_adder f3(A[3],B[3],C[2],SUM[3],CAR);
endmodule
