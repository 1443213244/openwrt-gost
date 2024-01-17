include $(TOPDIR)/rules.mk
PKG_NAME:=luci-app-proxy
PKG_VERSION:=1.0.0
PKG_RELEASE:=1
PKG_LICENSE:=MIT
PKG_MAINTAINER:=RexChou <rexchou2012@gmail.com>
include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
	SECTION:=luci
	CATEGORY:=LuCI
	SUBMENU:=3. Applications
	TITLE:=Luci Application for proxy
	DEPENDS:=+proxy
endef

define Package/$(PKG_NAME)/description
	Luci Application for proxy, a secure tunneling tool
endef

define Build/Prepare
endef

define Build/Compile
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/controller
	$(INSTALL_BIN) ./luasrc/controller/proxy.lua $(1)/usr/lib/lua/luci/controller
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/model/cbi
	$(INSTALL_BIN) ./luasrc/model/cbi/proxy.lua $(1)/usr/lib/lua/luci/model/cbi
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/view
	$(INSTALL_DATA) ./luasrc/view/proxy.htm $(1)/usr/lib/lua/luci/view/proxy/
	$(INSTALL_DATA) ./luasrc/view/proxy_status.htm $(1)/usr/lib/lua/luci/view/proxy/
	$(INSTALL_DIR) $(1)/etc/config
	$(INSTALL_DATA) ./root/etc/config/proxy $(1)/etc/config/proxy
	$(INSTALL_DIR) $(1)/www/luci-static/css
	$(INSTALL_DATA) ./htdocs/css/proxy.css $(1)/www/luci-static/css
	$(INSTALL_DIR) $(1)/www/luci-static/js
	$(INSTALL_DATA) ./htdocs/js/proxy.js $(1)/www/luci-static/js
	$(INSTALL_DIR) $(1)/www/luci-static/view
	$(INSTALL_DATA) ./htdocs/view/proxy.htm $(1)/www/luci-static/view
	$(INSTALL_DATA) ./htdocs/view/proxy_status.htm $(1)/www/luci-static/view
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
