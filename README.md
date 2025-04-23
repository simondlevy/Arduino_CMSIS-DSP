This fork of [Arduino\_CMSIS-DSP](https://github.com/arduino-libraries/Arduino_CMSIS-DSP)
supports using the CMSIS DSP library on STM32 boards.   I changed the
[install script](create_lib.sh) to work with the 
[stm32duino](https://github.com/stm32duino/Arduino_Core_STM32) package, which also required
removing the original CMSIS/DSP folder from that package after running the install
script, as the original CMSIS/DSP folder was interfering with this library.  I
also added a matrix multiply example.
