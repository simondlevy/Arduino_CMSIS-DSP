# This should reflect your CMSIS installation
CMSIS_VERSION=5.9.0
CMSIS=$(HOME)/.arduino15/packages/STMicroelectronics/tools/CMSIS/${CMSIS_VERSION}/CMSIS

install:
	cp -r $(CMSIS)/DSP/Include/* src
	cp -r $(CMSIS)/DSP/PrivateInclude/* src
	cp -r $(CMSIS)/DSP/Source src
	find  src/Source/ -type d | sed 's|src/Source/||g' | xargs -I{} rm src/Source/{}/{}.c
	#Functions provided as .S for maximum speed
	rm src/Source/TransformFunctions/arm_bitreversal2.c
	mv $(CMSIS)/DSP $(CMSIS)/DSP.orig

uninstall:
	mv $(CMSIS)/DSP.orig $(CMSIS)/DSP

clean:
	rm -rf src/*.h
	rm -rf src/dsp
	rm -rf src/Source
