`timescale 1ns / 1ns

module FA_1_bit(c_out, sum, a, b, c_in);
  input	a, b, c_in; 
  output c_out, sum; 
  wire xor_1, and_1, and_2;
	
	xor G1(xor_1, a, b);
	xor G2(sum, xor_1, c_in);
	and G3(and_1, xor_1, c_in);
	and G4(and_2, a, b);
	or G5(c_out, and_1, and_2);

endmodule
