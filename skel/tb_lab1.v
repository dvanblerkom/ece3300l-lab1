`timescale 1ns / 1ps

module tb_lab1();

   reg [3:0] b_in;
   wire [6:0] inv_leds;
   wire [7:0] enb_leds;
   
   seven_seg_out dut0 (
		       // Outputs
		       .inv_leds	(inv_leds[6:0]),
		       .enb_leds	(enb_leds[7:0]),
		       // Inputs
		       .b_in		(b_in[3:0]));
   
   
   initial
     begin
	b_in = 4'h0;
	#10;
	b_in = 4'h1;
	#10;
//
// fill in more test cases here
//	
        $finish;
     end

   initial
     begin
        $monitor($time, " b_in=%d inv_leds= %7b", b_in, inv_leds);
     end

endmodule 
