`timescale 1ns / 1ps
module full_adder(
    input x1,
    input x2,
    input carry_in,
    output sum,
    output carry_out
    );
    wire out_carry_1,out_carry_2;
    wire out_sum;
    half_adder inst_HA_1(
            .x1(x1),
            .x2(x2),
            .sum(out_sum),
             .carry(out_carry_1)
              );
    half_adder inst_HA_2(
            .x1(out_sum),
            .x2(carry_in),
            .sum(sum),
             .carry(out_carry_2)
              );
         assign carry_out = out_carry_1 | out_carry_2;
endmodule
