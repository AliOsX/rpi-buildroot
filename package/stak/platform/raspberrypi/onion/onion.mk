#############################################################
#
# onion
#
#############################################################

ONION_VERSION = 8bceabba66
ONION_SITE = $(call github,davidmoreno,onion,$(ONION_VERSION))
ONION_LICENSE = GPLv2
ONION_LICENSE_FILES = LICENCE
ONION_INSTALL_STAGING = YES
ONION_INSTALL_TARGET = NO
# ONION_CONF_OPT = -DCMAKE_TOOLCHAIN_FILE=../toolchain/arm.txt

$(eval $(host-cmake-package))
$(eval $(cmake-package))
