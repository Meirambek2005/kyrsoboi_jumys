`timescale 1ns / 1ps

module tb_left_shift;

    reg [10:0] cnt;
    wire [7:0] y;
    
    initial cnt = 0;
    always #10 cnt = cnt + 1'b1;

    left_shift8 dut (
        .x(cnt[10:3]),
        .shift_count(cnt[2:0]),
        .y(y)
    );

endmodule