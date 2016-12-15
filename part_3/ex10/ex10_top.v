module ex10_top(
	SW,
	CLOCK_50,
	DAC_CS,
	DAC_SDI,
	DAC_LD,
	DAC_SCK
);

input [9:0] SW;
input CLOCK_50;

output DAC_CS;
output DAC_SDI;
output DAC_LD;
output DAC_SCK;

wire CLOCK_10;

tick clktick_16(CLOCK_50, CLOCK_10);

spi2dac spidac (CLOCK_50, SW, CLOCK_10, DAC_SDI, DAC_CS, DAC_SCK, DAC_LD);
 


endmodule