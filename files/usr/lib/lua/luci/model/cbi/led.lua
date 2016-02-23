m=Map("led",translate("Openwrt practice"),translate("fat cheng's test"))

s=m:section(TypedSection,"arguments","")
s.addremove=false
s.anonymous=false

wan=s:option(Flag,"wan",translate("Wan Led"))
wlan=s:option(Flag,"wlan",translate("Wlan Led"))

local apply=luci.http.formvalue("cbi.apply")
if apply then
    io.popen("/etc/init.d/led_sh restart")
end

return m
