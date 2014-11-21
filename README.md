
Building
--------

	git clone --depth 1 git://github.com/NextThingCo/rpi-buildroot.git
	cd rpi-buildroot
	make raspberrypi_defconfig
	make nconfig         # if you want to add packages or fiddle around with it
	make                 # build (NOTICE: Don't use the **-j** switch, it's set to auto-detect)

Create SD Card IMG
---------
	sudo ./mksdcardimg




