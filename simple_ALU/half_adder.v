`timescale 1ns / 1ps

module half_adder(
    input A,
    input B,
    output SUM,
    output CARRY
    );
    and G1(CARRY,A,B);
    xor G2(SUM,A,B);
endmodule
