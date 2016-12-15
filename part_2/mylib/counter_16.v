`timescale 1ns / 100ps

module counter_16(
	clock,
	enable,
	reset,
	count
);

	parameter BIT_SZ = 16;
	input clock;
	input enable;
	input reset;
	output [BIT_SZ-1:0] count;

	reg [BIT_SZ -1:0] count;
	
	initial count = 0;
	
	always @ (posedge clock)

		if(enable == 1'b1)
		begin
			if(reset == 1'b1)
			begin
				count = 0;
			end	
			else
				count <= count + 1'b1;
			
		end	
			
endmodule
