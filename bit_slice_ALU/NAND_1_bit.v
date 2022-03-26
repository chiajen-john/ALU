`timescale 1ns / 1ps

module NAND_1_bit(out, a, b);
    input a, b;
    output out;
    wire temp;
    and g0 (temp, a, b);
    not (out, temp);
endmodule
