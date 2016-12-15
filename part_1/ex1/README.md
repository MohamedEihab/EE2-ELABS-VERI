#Experiment 1: Schematic Capture Using Quartus II - 7-Segment Display

##Objective:

To use the switches as a 4 bit binary input which is reflected as hexadecimal on a 7 segment display. This must be done using schematic diagrams. Therefore you must create a binary to hex converter.

##Results

We downloaded the partially completed schematic design from online for the 7 segment decoder. All the inputs and outputs blocks were created except the block used for out[4] - output of the 4th part of 7-segment display. We created schematic block needed to produce out[4] which happened to be **/IN3 AND IN0 COMPLETE THIS PART MOHAMMED**.

We then compiled the designed, assigned the pins and programmed the FPGA. The device worked as expect, fliping the switches in binary produces a HEX number from 0-F.

###Timing Analyser & Resources
We looked at the timing for the design, comparing different models. "Slow 1100mV 0C Model", "Slow 1100mV 85C Model". RR means time it takes for logic board to go from 1-1 on input and ouput, while EF (Fall Fall) is for 0-0. 

**ADD PICTURES HERE FOR TIMING DIAGRAMS**

We know speed is important, as high latency limits how high your clock frequency can be.

As you can see the 85C model has increased propgration delay through the board. This tell us two things: 
* Due to heating increasing resistance throughout the board means signals travel slower
* Higher temperature has to be accounted for when picking clock speed

The designed used very little resources at only 4 out of 32070 ALM and 11 out of 457 pins.
