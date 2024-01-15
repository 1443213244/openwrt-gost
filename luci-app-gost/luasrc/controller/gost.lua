module("luci.controller.gost", package.seeall)

function index()
    entry({"admin", "services", "gost"}, cbi("gost"), _("Gost")).dependent = true
end