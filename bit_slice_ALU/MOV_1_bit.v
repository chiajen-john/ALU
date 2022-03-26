`timescale 1ns / 1ps

module MOV_1_bit(out, a, b);
    output out;
    input a, b;
    or g0 (out, a, a); // move a to out
endmodule
