module ex6_top(
	CLOCK_50,
	KEY,
	HEX0,
	HEX1,
	HEX2,
	HEX3,
	HEX4
);


	input CLOCK_50;
	
	input [1:0] KEY;
	
	output[6:0] HEX0;
	output[6:0] HEX1;
	output[6:0] HEX2;
	output[6:0] HEX3;
	output[6:0] HEX4;
	
	wire [15:0] count_out;
	
	wire [3:0] BCD0;
	wire [3:0] BCD1;
	wire [3:0] BCD2;
	wire [3:0] BCD3;
	wire [3:0] BCD4;
	wire	clock_in;
	
	tick divider(CLOCK_50, clock_in);
	
	
	
	counter_16 counter (CLOCK_50, (!KEY[0] & clock_in), !KEY[1], count_out);
	
	bin2bcd_16 wtfisbin2bcd (count_out, BCD0, BCD1, BCD2, BCD3, BCD4);
	
	hex_to_7seg seg0 (HEX0, BCD0);
	hex_to_7seg seg1 (HEX1, BCD1);
	hex_to_7seg seg2 (HEX2, BCD2);
	hex_to_7seg seg3 (HEX3, BCD3);
	hex_to_7seg seg4 (HEX4, BCD4);
		
	
endmodule