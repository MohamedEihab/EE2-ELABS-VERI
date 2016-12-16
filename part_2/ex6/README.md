#Experiment 6:  Implementing a	16-bit counter	on DE1

##Objective:

We needed to extend the 8 bit counter from exercise 5 into a 16 bit counter and display it onto the 7segment display. We also needed to add a reset button, and as a further extension we had to divide the clock.

##Results

We implemented the 16 bit counter following the schema we were provided:

![](https://raw.githubusercontent.com/MohamedEihab/EE2-ELABS-VERI/master/screenshots/6a.PNG)
![](https://raw.githubusercontent.com/MohamedEihab/EE2-ELABS-VERI/master/screenshots/6.PNG)

The 16 bit counter handles the counting and we also added the reset into the code by introducing keys as input. The bin2bcd module was then used to provide data for the 7 segment displays. Since the clock frequency was 50MHz which was far too fast for us to see, we divided the so that the frequency was 1KHz.

Looking at the timing analyser we recieved two different results for 85C and 0C models.
Slow 1100mV 85C: Fmax = 460.19MHz
Slow 1100mV 0C: Fmax = 437.64MHz

It is interesting to note that the frequency is higher at higher temperatures. This suggests the board must use some sort of semiconducting material.
