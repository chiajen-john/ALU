`timescale 1ns / 1ps

module adder_subtractor(A, B, CIN, M, SUM, CAR, V);
    input [3:0]A;
    input [3:0]B;
    input CIN, M;
    output [3:0]SUM;
    output CAR, V;
    wire [2:0]C;
    wire [3:0]W;
    
    xor G1(W[0],B[0],M);
    xor G2(W[1],B[1],M);
    xor G3(W[2],B[2],M);
    xor G4(W[3],B[3],M);    
    xor G5(V,CAR,C[2]);
 
    full_adder f0(A[0],W[0],CIN,SUM[0],C[0]);
    full_adder f1(A[1],W[1],C[0],SUM[1],C[1]);
    full_adder f2(A[2],W[2],C[1],SUM[2],C[2]);
    full_adder f3(A[3],W[3],C[2],SUM[3],CAR);
    
endmodule
