#Experiment 17: Echo	Synthesizer	with	fixed	delay

##Objective:

The objective was to convert an analogue signal from the input jack into a digital signal, delay and dampen the signal and sum the two to give an echo effect.

##Results

![](https://github.com/MohamedEihab/EE2-ELABS-VERI/blob/master/screenshots/17.PNG?raw=true)

To produce an echo effect you must store the input signals in a FIFO (this causes the delay) and then output the signals from a FIFO and add the signal to the current input signal but attenuated by a factor (to produce an echo of lower volume eg 1/4). The FIFO stores 8192x10 bits of data which means using a sampling frequency of 10KHz the delay will be 0.8192ms. The FIFO must not output any signals until is full, so a parameter was used to check to see if it is full. We tested our design and an echo was heard.
