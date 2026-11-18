m = Map("qwairah", "إعدادات بوت التيليجرام - QWAIRAH", "أدخل توكن البوت والآي دي لتصلك إشعارات التشغيل والانطفاء وربط المنافذ والعملاء.")
s = m:section(TypedSection, "bot", "بيانات الربط")
s.anonymous = true
t = s:option(Value, "token", "Telegram Bot Token")
c = s:option(Value, "chat_id", "Telegram Chat ID")
btn = s:option(Button, "_test", "إرسال رسالة تجريبية الآن")
btn.inputstyle = "apply"
function btn.write(self, section)
  luci.sys.call("/usr/bin/qwairah-telegram 'رسالة اختبار من لوحة QWAIRAH ✅' ''")
end
return m
