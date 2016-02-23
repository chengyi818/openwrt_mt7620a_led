include $(TOPDIR)/rules.mk

PKG_NAME:=led
PKG_VERSION=1.0
PKG_RELEASE:=1

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/led
	SECTION:=utils
	CATEGORY:=Utilities
	TITLE:=led--led controller
endef

define Package/led/description
	It's a test,make led on/off on web page
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
	# $(CP) ./src/* $(PKG_BUILD_DIR)/
endef

define Package/led/postinst
#!/bin/sh
rm -rf /tmp/luci*
endef

define Build/Configure
endef

define Build/Compile
	# $(call Build/Compile/Default)
endef

define Package/$(PKG_NAME)/install
	$(CP) ./files/* $(1)/
	# $(INSTALL_DIR) $(1)/bin
	# $(INSTALL_BIN)  $(PKG_BUILD_DIR)/led  $(1)/bin
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
