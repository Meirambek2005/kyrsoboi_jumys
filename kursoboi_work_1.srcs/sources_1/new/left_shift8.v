`timescale 1ns / 1ps
module left_shift8(
    input [7:0] x,
    input [2:0] shift_count,
    output [7:0] y
    );
    wire[7:0] _y [7:0];
    
    left_shift_1 inst_ls_1(
        .x(x),
        .y(_y[0])
    );
    left_shift_1 inst_ls_2(
        .x(_y[0]),
        .y(_y[1])
    );
    left_shift_1 inst_ls_3(
        .x(_y[1]),
        .y(_y[2])
    );
    left_shift_1 inst_ls_4(
        .x(_y[2]),
        .y(_y[3])
    );
    left_shift_1 inst_ls_5(
        .x(_y[3]),
        .y(_y[4])
    );
    left_shift_1 inst_ls_6(
        .x(_y[4]),
        .y(_y[5])
    );
    left_shift_1 inst_ls_7(
        .x(_y[5]),
        .y(_y[6])
    );
    left_shift_1 inst_ls_8(
        .x(_y[6]),
        .y(_y[7])
    );
    
    assign y =_y[shift_count];
endmodule
