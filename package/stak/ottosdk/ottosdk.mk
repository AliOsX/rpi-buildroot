#############################################################
#
# ottosdk
#
#############################################################

OTTOSDK_VERSION = 0.1
OTTOSDK_SITE = file://$(TOPDIR)/package/stak/ottosdk
OTTOSDK_SOURCE = ottosdk.tar.gz
OTTOSDK_LICENSE = MIT
OTTOSDK_LICENSE_FILES = LICENCE

define OTTOSDK_BUILD_CMDS
    $(MAKE) -C $(@D) all #CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D) all
endef

define OTTOSDK_INSTALL_STAGING_CMDS
    $(INSTALL) -D -m 0755 $(@D)/stak-test $(STAGING_DIR)/usr/bin/stak-test
endef

define OTTOSDK_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 0755 $(@D)/stak-test $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))