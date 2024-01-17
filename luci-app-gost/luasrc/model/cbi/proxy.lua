local m, s, o

m = Map("proxy", translate("Proxy Nodes"))
m:section(SimpleSection).template = "proxy/proxy_status"

s = m:section(TypedSection, "proxy", translate("Proxy Node"))
s.addremove = true

o = s:option(Value, "name", translate("Name"))
o = s:option(Value, "address", translate("Address"))
o = s:option(Value, "port", translate("Port"))
o = s:option(Value, "password", translate("Password"))
o = s:option(Value, "protocol", translate("Protocol"))

return m