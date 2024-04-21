`timescale 1ns / 1ps
module tb_or8();
reg [15:0] cnt;
    wire [7:0] y;
    
    initial cnt = 0;
    always #10 cnt = cnt + 1'b1;

    or8 dut (
        .x1(cnt[15:8]),
        .x2(cnt[7:0]),
        .y(y)
    );


endmodule
