`timescale 1ns / 1ps

module alu_multiplex(A, B, C, D, S, Y);
    input [7:0]A,B,C,D;
    input [1:0]S;
    output [7:0]Y;
    reg [7:0]y;
    
    always @(*) begin
        case (S)
            2'b00 : y = A;
            2'b01 : y = B;
            2'b10 : y = C;
            2'b11 : y = D;
        endcase
    end 
    
    assign Y = y;    
endmodule
