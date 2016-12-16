#Experiment 5: An	audio	in-and-out	(all	pass)	loop

##Objective:

The objective was to use analogue to digital conversion to play sounds from the computer to earphones using the addon card.

##Results

We used two modules, the spi2adc.v which was used to convert analogue to digital. The other module which was provided was allpass (which contained the "processor" module). It is known as an all pass filter as it allows all frequencies to pass through. It also applies an offset to the output which we needed to fix in the design before we output the signal to the 3.5mm jack. We tested this and sound was heard as expected. We extended this further by amplifing volume by multiplying the input by 4 and we started to notice that we were getting clipping and that the song was so distorted that it was barely recognisable.
