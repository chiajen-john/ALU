`timescale 1ns / 1ps

module NOT_1_bit(out, a, b);
    input a, b;
    output out;
    not g0 (out, a); // out = not(a)
endmodule
