`timescale 1ns / 1ps
module log_and(
    input [7:0] x1,
    input [7:0] x2,
    output [7:0] y
    );
    wire bool_x1,bool_x2;
    is_true7 inst_is_true7_1 (
            .x(x1),
            .y(bool_x1)
            );
    is_true7 inst_is_true7_2 (
            .x(x2),
            .y(bool_x2)
            );
     assign y = ~(~bool_x1 & bool_x2);
endmodule