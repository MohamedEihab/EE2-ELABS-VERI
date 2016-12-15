#Experiment 1: Schematic Capture Using Quartus II - 7-Segment Display

##Objective:

To use the switches as a 4 bit binary input which is reflected in hexadecimal on a 7 segment display. This must be done using schematic diagrams. Therefore you must create a binary to hex converter.

##Results

We downloaded the partially completed schematic design from experiment web page for the 7 segment decoder. All the inputs and outputs blocks were created except the block used for out[4] (output for the 4th part of 7-segment display). We created the schematic blocks needed to produce out[4] which happened to be (/in3 AND in0) OR (/in3 AND in2 AND /in1) OR (/in2 AND /in1 AND in0).

We then compiled the design, assigned the pins and went on to program the FPGA. The device worked as expect and fliping the switches in binary produces a HEX number from 0-F.

###Timing Analyser & Resources
We looked at the timing for the design, comparing different temperature models. "Slow 1100mV 0C Model", "Slow 1100mV 85C Model". RR (Rise-Rise) means time it takes for logic board to go from 1-1 on input and ouput, while FF (Fall Fall) is for 0-0. 

![](https://github.com/MohamedEihab/EE2-ELABS-VERI/blob/master/screenshots/2.png?raw=true)
![](https://github.com/MohamedEihab/EE2-ELABS-VERI/blob/master/screenshots/3.png?raw=true)

We know speed is important, as high latency limits how high your clock frequency can be.

As you can see the 85C model has an increased propgration delay through the board. This tell us two things: 
* Due to heat increasing the resistance throughout the board the signals travel slower
* Higher temperature has to be accounted for when picking clock speed

The design used very little resources at only 4 out of 32070 ALM and 11 out of 457 pins.
