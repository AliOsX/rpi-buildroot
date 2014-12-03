ifeq ($(BR2_PACKAGE_LIBBCM2835),y)
	include package/stak/platform/raspberrypi/libbcm2835/libbcm2835.mk
endif

ifeq ($(BR2_STAK_OTTOSDK),y)
	include package/stak/ottosdk/ottosdk.mk
endif
