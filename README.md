This fork of [Arduino\_CMSIS-DSP](https://github.com/arduino-libraries/Arduino_CMSIS-DSP)
supports using the CMSIS DSP library on STM32 boards.   I changed the original
install script into a Makefile that works with the 
[stm32duino](https://github.com/stm32duino/Arduino_Core_STM32) package. Running
<code>make install</code> will build the Arduino library and will rename
the original CMSIS/DSP folder as CMSIS/DSP.orig, to avoid 
name conflicts.  Running <code>make install</code>  will undo this change.
