`timescale 1ns / 1ps

module bin_to_leds(
    input [3:0] b_in,
    output reg [6:0] leds  
    );
    
    always @(b_in)
        case(b_in)
            0: leds = 7'b0111111;
//
// fill in the rest here
//
            default: leds = 7'b0000000;
        endcase
endmodule

