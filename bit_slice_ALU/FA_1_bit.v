`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:16:02 09/28/2013 
// Design Name: 
// Module Name:    FA_str 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module FA_1_bit(c_out, sum, a, b, c_in);	
  input		a, b, c_in; 
  output	c_out, sum; 
  wire		not_a, not_b, not_c;
  wire		and1_out, and2_out, and3_out, and4_out;
  wire		and5_out, and6_out, and7_out, and8_out;

  not	   not1		(not_a, a);
  not	   not2		(not_b, b);
  not		not3		(not_c, c_in);

  and			and1		(and1_out, a, not_b, not_c);
  and			and2		(and2_out, not_a, b, not_c);
  and			and3		(and3_out, not_a, not_b, c_in);
  and			and4		(and4_out, a, b, c_in);
  or				or1		(sum, and1_out, and2_out, and3_out, and4_out);
						
  and			and5		(and5_out, a, b);
  and			and6		(and6_out, b, c_in);
  and			and7		(and7_out, a, c_in);
  and			and8		(and8_out, a, b, c_in);
  or				or2		(c_out, and5_out, and6_out, and7_out, and8_out);

endmodule
