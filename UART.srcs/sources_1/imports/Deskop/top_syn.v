module top_syn(input wire [7:0] din,
	    input wire wr_en,
	    input wire clock_n,
	    input wire clock_p,
	    output wire tx,
	    output wire tx_busy,
	    input wire rx,
	    output wire rdy,
	    input wire rdy_clr,
	    output wire [7:0] dout,
	    output wire locked);
	    
wire loopback;
wire clk;

clk_wiz_0 clock_gen
(
  // Clock in ports
   .clk_in1_p(clock_p),    // input clk_in1_p
   .clk_in1_n(clock_n),    // input clk_in1_n
   // Clock out ports
   .clk_out1(clk),     // output clk_out1
   // Status and control signals
   .locked(locked));      // output locked

uart test_uart(.din(din),
	       .wr_en(enable),
	       .clock(clk),
	       .tx(loopback),
	       .tx_busy(tx_busy),
	       .rx(loopback),
	       .rdy(rdy),
	       .rdy_clr(rdy_clr),
	       .dout(dout));
endmodule
