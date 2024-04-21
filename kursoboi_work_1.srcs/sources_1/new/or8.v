`timescale 1ns / 1ps
module or8(
    input [7:0] x1,
    input [7:0] x2,
    output [7:0] y
    );
    assign y=~( x1 | x2);
endmodule