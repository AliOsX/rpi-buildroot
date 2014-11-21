Setup
-----

Install the required packages to build the system.
	sudo apt-get install git build-essential ncurses-dev kpartx

Building
--------

	git clone --depth 1 git://github.com/NextThingCo/rpi-buildroot.git
	cd rpi-buildroot
	make raspberrypi_defconfig
	make nconfig         # if you want to add packages or fiddle around with it
	make                 # build (NOTICE: Don't use the **-j** switch, it's set to auto-detect)


Add Startup Scripts to the System
---------------------------------
Startup scripts/apps belong in the {buildroot}/stak-files/modes directory and will get copied
to the sd card image in the next step.



Create SD Card IMG
------------------
	sudo ./mksdcardimg



