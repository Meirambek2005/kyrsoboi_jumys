`timescale 1ns / 1ps
module left_shift_1(
    input [7:0] x,
    output [7:0] y
    );
    generate 
 	genvar i;
  		assign y[0] = 0;
  		for(i=1;i<8;i=i+1)begin
    		assign y[i]=x[i-1];
 		end
 	endgenerate
endmodule
