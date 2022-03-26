`timescale 1ns / 1ps

module NOR_1_bit(out, a, b);
    input a, b;
    output out;
    wire temp;
    or g0 (temp, a, b);
    not g1 (out, temp); 
endmodule
