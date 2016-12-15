module ex4_top(
	SW,
	HEX0,
	HEX1,
	HEX2,
	HEX3
);

	input	[9:0] SW;
	output[6:0] HEX0;
	output[6:0] HEX1;
	output[6:0] HEX2;
	output[6:0] HEX3;
	
	wire [3:0] BCD0;
	wire [3:0] BCD1;
	wire [3:0] BCD2;
	wire [3:0] BCD3;
	wire [3:0] BCD4;
	
	bin2bcd_10 CONV (SW, BCD0, BCD1, BCD2, BCD3, BCD4);

	bcd_to_7seg SEG0 (HEX0, BCD0);
	bcd_to_7seg SEG1 (HEX1, BCD1);
	bcd_to_7seg SEG2 (HEX2, BCD2);
	bcd_to_7seg SEG3 (HEX3, BCD3);
	
endmodule