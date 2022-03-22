`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/15/2022 12:23:11 PM
// Design Name: 
// Module Name: ALU_32_bit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ALU_32_bit(overflow, zero, carry, R1, R2, R3, ALUop, clk);
    parameter width=32;
    input [width-1:0] R2, R3;
    input [2:0] ALUop;
    input clk;
    output [width-1:0] R1;
    output overflow, zero, carry;
    wire NOT_B_MSB;
    wire [width:0] i_c_in;
    wire overflow_check, temp_1, temp_2, temp_3, overflow_check_2;
    wire overflow_check_1, temp_7, temp_8, temp_9, temp_10, temp_11;
    assign i_c_in[0] = (ALUop==3'b101)?1'b1:1'b0;
    genvar i;
    generate
        for (i=0; i<width; i=i+1) begin
            ALU_1_bit g0(
                .out(R1[i]), 
                .c_out(i_c_in[i+1]), 
                .a(R2[i]), 
                .b(R3[i]), 
                .select(ALUop), 
                .c_in(i_c_in[i]));
        end
    endgenerate
    assign zero = (R1 == 0)?1'b1:1'b0;
    assign temp_11 = (ALUop==3'b101)?0:1;
    and g9 (carry, temp_11, i_c_in[width]);
    assign temp_8 = (ALUop== 3'b101| ALUop==3'b110)?1:0;
    
    assign NOT_B_MSB = (ALUop== 3'b101)?~R3[width-1]:R3[width-1];
        
    or g1 (temp_1, R2[width-1], NOT_B_MSB);
    not g2 (temp_2, temp_1);
    and g3 (overflow_check_1, R1[width-1], temp_2);
    and g7 (temp_7, R2[width-1], NOT_B_MSB );
    and g4 (overflow_check_2, i_c_in[width], temp_7);
    or g5 (overflow_check, overflow_check_2, overflow_check_1 );
    and g8 (temp_9, temp_8, overflow_check);
    assign overflow =(temp_9==1'b1)?1:0;
    
endmodule
