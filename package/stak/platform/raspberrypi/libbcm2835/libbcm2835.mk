#############################################################
#
# libbcm2835
#
#############################################################

LIBBCM2835_VERSION = 1.38
LIBBCM2835_SITE = http://www.airspayce.com/mikem/bcm2835/
LIBBCM2835_SOURCE = bcm2835-$(LIBBCM2835_VERSION).tar.gz
LIBBCM2835_LICENSE = GPLv2
LIBBCM2835_LICENSE_FILES = LICENCE

$(eval $(autotools-package))