`timescale 1ns / 1ps

module ALU_1_bit(out, c_out, a, b, select, c_in);
    input a, b, c_in;
    input [2:0] select;
    output reg out;
    output c_out;
    wire new_b, NOT_b, out_1, out_2, out_3, out_4, out_5;
    
    assign new_b = (select==3'b101)?NOT_b:b; // mux
    not g0 (NOT_b, b);
  
    MOV_1_bit g2 (out_2, a, b); 
    NOT_1_bit g3 (out_3, a, b);
    NAND_1_bit g4 (out_4, a, b);
    NOR_1_bit g5 (out_5, a, b);
    
    FA_1_bit g1 (
        .c_out(c_out), 
        .sum(out_1), 
        .a(a), .b(new_b), 
        .c_in(c_in)); // add or subtract 
    
    always @(*) begin
        case (select)
            3'b000: out <= out_2;
            3'b001: out <= out_3;
            3'b011: out <= out_4;
            3'b100: out <= out_5;
            3'b110: out <= out_1;
            3'b101: out <= out_1;
            default: out <= out_2;  
        endcase
    end
endmodule
