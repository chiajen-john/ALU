`timescale 1ns / 1ns

module dff(q, d, clk);
  input		d, clk; 
  output reg	q; 

  always @(posedge clk) begin
    q=d;
  end
  
endmodule
