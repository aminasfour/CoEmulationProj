module uart(input wire [7:0] din,
	    input wire wr_en,
	    input wire clock,
		input fpga_power_good,
	    output wire tx,
	    output wire tx_busy,
	    input wire rx,
	    output wire rdy,
	    input wire rdy_clr,
	    output wire [7:0] dout);

wire rxclk_en, txclk_en;

baud uart_baud(.clock(clock),
			.rxclk_en(rxclk_en),
			.txclk_en(txclk_en));
transmitter uart_tx(.din(din),
		    .wr_en(wr_en),
		    .clock(clock),
		    .clken(txclk_en),
		    .tx(tx),
		    .tx_busy(tx_busy));
receiver uart_rx(.rx(rx),
         .fpga_power_good(fpga_power_good)
		 .rdy(rdy),
		 .rdy_clr(rdy_clr),
		 .clock(clock),
		 .clken(rxclk_en),
		 .data(dout));

endmodule
