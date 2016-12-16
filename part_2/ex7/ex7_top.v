module ex7_top(
	CLOCK_50,
	KEY,
	HEX0,
	HEX1,
	HEX2,
	HEX3,
	HEX4
);


	input CLOCK_50;
	
	input [3:0] KEY;
	
	output[6:0] HEX0;
	output[6:0] HEX1;
	output[6:0] HEX2;
	output[6:0] HEX3;
	output[6:0] HEX4;
	
	wire [3:0] BCD0;
	wire [3:0] BCD1;
	wire [3:0] BCD2;
	
	wire[7:0] randomval;

	lfsr7 lfsr7_1(randomval, KEY[3]);
	
	bin2bcd8 bin2bcd_1 (randomval, BCD0, BCD1, BCD2);
	
	hex_to_7seg seg0 (HEX0, BCD0);
	hex_to_7seg seg1 (HEX1, BCD1);
	hex_to_7seg seg2 (HEX2, BCD2);
	hex_to_7seg seg3 (HEX3, BCD3);
	hex_to_7seg seg4 (HEX4, BCD4);
		
	
endmodule