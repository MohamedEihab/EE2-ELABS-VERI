#Experiment 17: Echo	Synthesizer	with	fixed	delay

##Objective:

The objective was to implement an implement an echo effect into the outputted sounds.

##Results

![](https://raw.githubusercontent.com/MohamedEihab/EE2-ELABS-VERI/master/screenshots/17a.png)

To produce an echo effect you must store the input signals into a FIFO and then output the signals from a FIFO and add to the current input signal but attenuated by a factor (to produce an echo of lower volume). The FIFO stores 8192 10 bit data which means using a sampling frequency of 10KHz the delay will be 0.8192ms. The FIFO must not output signals until is full so a parameter was used to check to see if it is full. We tested our design and an echo was heard.
