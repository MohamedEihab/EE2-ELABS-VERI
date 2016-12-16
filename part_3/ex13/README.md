#Experiment 13: A	fixed	frequency	sinewave	generator

##Objective:

In this exercise, a fixed frequency sinewave was generated across the 3.5mm jack using the sine values stored in the ROM after then outputting those values by using a counter and the spi2dac/pwm modules.

##Results

We implemented the designed specificed in the book:

![](https://raw.githubusercontent.com/MohamedEihab/EE2-ELABS-VERI/master/screenshots/13a.png)

The clocked was divided to produce a 10KHz signal. This was used to drive the counter which we used as an address to access the ROM and return the correct sine value. It also looped around to then replay the sine wave. The spi2dac/pwm were then used to convert the digital signal to analogue signal and then output it out. We recieved a sinewave as expected and checked using the oscilloscope.

When we used the scope to check the frequency, we managed to calculate that the wave had a frequency of around 10Hz.
