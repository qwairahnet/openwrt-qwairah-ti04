m = Map("qwairah", "البرمجة السريعة - QWAIRAH", "اختر وضع التشغيل السريع (AP WDS / Client WDS / Mesh / Bridge VLAN)")
s = m:section(TypedSection, "quick", "وضع الجهاز")
s.anonymous = true
mode = s:option(ListValue, "mode", "وضع التشغيل")
mode:value("ap_wds", "مرسل Access Point WDS (جسر شفاف)")
mode:value("sta_wds", "مستقبل Client WDS (جسر شفاف)")
mode:value("mesh", "شبكة Mesh متداخلة")
mode:value("vlan_wds", "مرسل/مستقبل WDS مع VLAN")
function m.on_commit(self)
  local md = luci.model.uci.cursor():get("qwairah", "main", "mode")
  if md == "sta_wds" then
    luci.sys.call("uci set wireless.@wifi-iface[0].mode='sta'; uci set wireless.@wifi-iface[0].wds='1'; uci commit wireless; wifi reload")
  elseif md == "ap_wds" then
    luci.sys.call("uci set wireless.@wifi-iface[0].mode='ap'; uci set wireless.@wifi-iface[0].wds='1'; uci commit wireless; wifi reload")
  end
end
return m
