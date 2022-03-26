`timescale 1ns / 1ps

module Top_Module(R0, overflow, zero, carry, R2, R3, ALUop,clk);
    parameter width = 32;
    input [width-1:0] R2, R3;
    input [2:0] ALUop;
    input clk;
    output zero, overflow, carry;
    output [width-1:0] R0;
    wire i_overflow, i_zero, i_carry;
    wire [width+2:0] i_q;
    wire [width-1:0] i_R1;
    ALU_32_bit g0 (
        .overflow(i_overflow),
        .zero(i_zero),
        .carry(i_carry), 
        .R1(i_R1), .R2(R2), 
        .R3(R3), 
        .ALUop(ALUop), 
        .clk(clk));
    register_32_bit g1(.q(i_q), .overflow(i_overflow), .zero(i_zero), .carry(i_carry), .d(i_R1), .clk(clk));
    assign overflow = i_q[width+2];
    assign zero = i_q[width+1];
    assign carry = i_q[width];
    assign R0 = i_q[width-1:0];
    defparam g0.width = width;
    defparam g1.width = width;
endmodule
