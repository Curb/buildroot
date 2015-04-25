################################################################################
#
# open-plc-utils 
#
################################################################################

OPEN_PLC_UTILS_VERSION = e15d185c2407040824222c10cc30d95e1a693018
OPEN_PLC_UTILS_SITE = $(call github,qca,open-plc-utils,$(OPEN_PLC_UTILS_VERSION))
OPEN_PLC_UTILS_LICENSE = Clear BSD 
OPEN_PLC_UTILS_LICENSE_FILES = LICENSE

define OPEN_PLC_UTILS_BUILD_CMDS
	$(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D) all
endef

define OPEN_PLC_UTILS_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/plc/plcstat $(TARGET_DIR)/usr/bin 
	$(INSTALL) -D -m 0755 $(@D)/plc/plctool $(TARGET_DIR)/usr/bin 
	$(INSTALL) -D -m 0755 $(@D)/plc/plclist $(TARGET_DIR)/usr/bin 
	$(INSTALL) -D -m 0755 $(@D)/plc/plcget $(TARGET_DIR)/usr/bin 
	$(INSTALL) -D -m 0755 $(@D)/plc/plcset $(TARGET_DIR)/usr/bin 
endef

$(eval $(generic-package))

