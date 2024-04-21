`timescale 1ns / 1ps
module or1(
    input x1,
    input x2,
    output y
    );
    assign #10 y=~( x1 | x2);
endmodule