# SCiLABOX
Electronics lab in a box
------------------------------

     SCiLABOX is a low cost but competitive open source electronics lab in a box.
Now adays most of the students lack good equipments because of unbearable price.
Most of the low cost devices lack quality.This oscilloscope has a 16 bit logic analizer,
two 14 bit analog channels with a  smplerate of 100 mhx max,two multimeter pairs,and hardware FFT
modules and more...It only costs less than $250.
This uses an arm-cortex-m3 controllerstm32f103vct8 ,xilinx spartan6 fpga,and two
channel 14 bit 100mhz dac from lineartechnologies.

------------------------------------------------------------------------------------------
STM32f103vct8  :-
------------------

      This arm cortex-m3  144 pin controller controls the oscilloscope controller 
implemented in FPGA,and processes the data and other user defined apps are run within it.

-------------------------------------------------------------------------------------------
Xilinx spartan6 fpga :-
------------------------

    Handles data acquisition,trigger cintrols,FFT and other hard coded functions
    
-------------------------------------------------------------------------------------------
