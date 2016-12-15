module ex13_top(CLOCK_50, DAC_CS, DAC_SDI, DAC_LD, DAC_SCK, PWM_OUT);

	input CLOCK_50;
	
	output DAC_CS;
	output DAC_SDI;
	output DAC_LD;
	output DAC_SCK;
	output PWM_OUT;
	
	wire CLOCK_10;
	wire [9:0] COUNT_OUT;
	wire [9:0] ROM_OUT;
	
	tick tick_1(CLOCK_50, CLOCK_10);
	counter_10 counter_10_1(CLOCK_50, CLOCK_10, 0, COUNT_OUT);
	
	ROM ROM_1(COUNT_OUT, CLOCK_10, ROM_OUT);
	spi2dac spi2dac_1(CLOCK_50, ROM_OUT, CLOCK_10, DAC_SDI, DAC_CS, DAC_SCK, DAC_LD);
	pwm pwm_1(CLOCK_50, ROM_OUT, CLOCK_10, PWM_OUT);
	
endmodule