#Experiment	18:	Multiple	echoes

##Objective:

An extension of exercise 17 but multiple echos are played instead of one.

##Results

To produce the multiple echo effect, the output must be placed in a feedback loop where it is subtracted from the input. This is done using a pulse generator where FIFO is read/written per every pulse cycle. Tested we can hear multiple echoes where each subsequent echo has less volume than the other.
