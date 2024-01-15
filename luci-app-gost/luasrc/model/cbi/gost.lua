local m, s, o

m = Map("gost", translate("Gost Nodes"))
m:section(SimpleSection).template = "gost/gost_status"

s = m:section(TypedSection, "gost", translate("Gost Node"))
s.addremove = true

o = s:option(Value, "name", translate("Name"))
o = s:option(Value, "address", translate("Address"))
o = s:option(Value, "port", translate("Port"))
o = s:option(Value, "password", translate("Password"))
o = s:option(Value, "protocol", translate("Protocol"))

return m