#!/bin/bash

CMSIS=${HOME}/.arduino15/packages/STMicroelectronics/tools/CMSIS/5.9.0/CMSIS/

cp -r ${CMSIS}/DSP/Include/* src
cp -r ${CMSIS}/DSP/PrivateInclude/* src
cp -r ${CMSIS}/DSP/Source src
find  src/Source/ -type d | sed 's|src/Source/||g' | xargs -I{} rm src/Source/{}/{}.c
#Functions provided as .S for maximum speed
rm src/Source/TransformFunctions/arm_bitreversal2.c
echo You should now remove ${CMSIS}/DSP
