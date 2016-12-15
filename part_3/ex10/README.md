#Experiment 10: Interface	with the	MCP4911	Digital-to-Analogue	Converter

##Objective:

Learn how to use the spi2dac module (serial to parallel,  digital to analogue).

##Results

We implemented the circuit below:

![](https://raw.githubusercontent.com/MohamedEihab/EE2-ELABS-VERI/master/screenshots/10a.png)

We used a clock divider to produce the 10KHz frequency as an input for spi2dac. The switches we then used as 10 bit binary input to spidac. Using the oscilloscope we were able to see how the output voltages varies as we turned on and off switches.
