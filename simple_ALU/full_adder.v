`timescale 1ns / 1ps

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
