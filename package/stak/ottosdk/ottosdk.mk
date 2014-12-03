#############################################################
#
# ottosdk
#
#############################################################

OTTOSDK_VERSION = 0.1
OTTOSDK_SITE = $(TOPDIR)/package/stak/ottosdk
OTTOSDK_SITE_METHOD = file
OTTOSDK_SOURCE = ottosdk.tar.gz
OTTOSDK_LICENSE = MIT
OTTOSDK_INSTALL_STAGING = YES
OTTOSDK_INSTALL_TARGET = YES

define OTTOSDK_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)
endef

define OTTOSDK_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0644 $(@D)/stak-test $(TARGET_DIR)/usr/bin/stak-test
	#$(TARGET_MAKE_ENV) $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) install
	#$(INSTALL) -D -m 755 $(@D)/ $(TARGET_DIR)/usr/sbin/fbset
endef

$(eval $(generic-package))
