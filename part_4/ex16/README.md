#Experiment 5: An	audio	in-and-out	(all	pass)	loop

##Objective:

The objective is was to use analogue to digital conversion to play sounds from the computer to earphones using the addon card.

##Results

We used two modules, the spi2adc.v which was used to convert analogue to digital. The other module which was provided was allpass - which contained the "processor" module. It is known as all pass as it allows all frequencies through. It applies an offset to the output. We tested this and sound was heard as expected. We extended this further by amplifing volume by multiplying the input by 4. A louder noise was heard.
