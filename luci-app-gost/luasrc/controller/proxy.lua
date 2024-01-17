module("luci.controller.proxy", package.seeall)

function index()
    entry({"admin", "services", "proxy"}, cbi("proxy"), _("Proxy")).dependent = true
end