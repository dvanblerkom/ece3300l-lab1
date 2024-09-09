`timescale 1ns / 1ps

module seven_seg_out(
    input [3:0] b_in,
    output [6:0] inv_leds,
    output [7:0] enb_leds 
    );
    
    wire [6:0] leds;

    assign enb_leds = 8'b11111110;

    bin_to_leds u1 (.b_in(b_in), .leds(leds));
    invert7 u2 (.a(leds), .x(inv_leds));
endmodule


