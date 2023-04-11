# Bio_Med_EMG_Data_Analysis

## Excersice 1
Goal of the assignment: learning the basis of EMG pre-processing

Description of the assignment:

- Filter (band pass 30-450 Hz) advise FIR filter, recover phase delay 2 with ‘filtfilt’.
Rectify
- Compute the envelope of the muscle signals (low pass 3-6 Hz)
- now (Question A -why now?) you can down-sample the signal.

Question B- When does the muscle activation starts with respect to the movement (see motion signal)?

The Matlab code (with comments) that generates the following figures (better if 1 it is ONLY 1 figure with 3 panels):

- EMG raw signal with on top the filtered signal plotted with a different color.
- EMG rectified with on top the Envelope plotted with a different color.
- The movement signals with on top the envelope (+ answer to question A and B) ¬Goal of the assignment: learning the basis of EMG control (super simple example of EMG-based control):
- Using the .wrl file with the VRsource input block to display 8 targets and a cursor
- Pre-processing the EMG data (noisy signals) – attention to the sample rate!

## Excersice 2
Description of the assignment: 

1- Move a cursor on the screen controlled by the reading of the four muscles in the mat file 2 (raw_emg_es2.mat Data are normalized for the maximal voluntary contraction - average value over 5 max contractions). You should reach the targets in the 4 cardinal directions, i.e. when the muscle contraction is greater than a defined threshold the EMG signal is mapped into the position of the cursor in the four cardinal directions (tip: use one muscle to go up, another down etc.). The target is reached when the muscle contraction is above a selected threshold

2- How can you reach the other 4 targets direction displayed on the screen (see wrl file)?

3- Can you think about a different way to map the muscle and being able to reach all the 8 targets with the activation of these muscles? What are the drawbacks, if any?

4- Can you think to a different way of mapping the EMG activity on the control of the cursor (not need to implement…just answer the question motivating your answer)
