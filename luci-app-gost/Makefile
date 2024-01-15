include $(TOPDIR)/rules.mk
PKG_NAME:=luci-app-gost
PKG_VERSION:=1.0.0
PKG_RELEASE:=1
PKG_LICENSE:=MIT
PKG_MAINTAINER:=Your Name <yourname@example.com>
include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
	SECTION:=luci
	CATEGORY:=LuCI
	SUBMENU:=3. Applications
	TITLE:=Luci Application for Gost
	DEPENDS:=+gost
endef

define Package/$(PKG_NAME)/description
	Luci Application for Gost, a secure tunneling tool
endef

define Build/Prepare
endef

define Build/Compile
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/controller
	$(INSTALL_BIN) ./luasrc/controller/gost.lua $(1)/usr/lib/lua/luci/controller
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/model/cbi
	$(INSTALL_BIN) ./luasrc/model/cbi/gost.lua $(1)/usr/lib/lua/luci/model/cbi
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/view
	$(INSTALL_DATA) ./luasrc/view/gost.htm $(1)/usr/lib/lua/luci/view
	$(INSTALL_DATA) ./luasrc/view/gost_status.htm $(1)/usr/lib/lua/luci/view
	$(INSTALL_DIR) $(1)/etc/config
	$(INSTALL_DATA) ./root/etc/config/gost $(1)/etc/config/gost
	$(INSTALL_DIR) $(1)/www/luci-static/css
	$(INSTALL_DATA) ./htdocs/css/gost.css $(1)/www/luci-static/css
	$(INSTALL_DIR) $(1)/www/luci-static/js
	$(INSTALL_DATA) ./htdocs/js/gost.js $(1)/www/luci-static/js
	$(INSTALL_DIR) $(1)/www/luci-static/view
	$(INSTALL_DATA) ./htdocs/view/gost.htm $(1)/www/luci-static/view
	$(INSTALL_DATA) ./htdocs/view/gost_status.htm $(1)/www/luci-static/view
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
