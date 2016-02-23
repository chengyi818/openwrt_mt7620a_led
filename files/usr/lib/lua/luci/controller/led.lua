module("luci.controller.led",package.seeall)

function index()
    entry({"admin","system","led"},cbi("led"),_("Led"),99)
end

