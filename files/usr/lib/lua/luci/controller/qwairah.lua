module("luci.controller.qwairah", package.seeall)
function index()
  entry({"admin", "qwairah"}, firstchild(), _("QWAIRAH"), 10).dependent = false
  entry({"admin", "qwairah", "telegram"}, cbi("qwairah/telegram"), _("Telegram Bot 📲"), 1)
  entry({"admin", "qwairah", "quick"}, cbi("qwairah/quick"), _("البرمجة السريعة ⚡"), 2)
  entry({"admin", "qwairah", "scan"}, template("qwairah/tools"), _("فحص القنوات والسرعة 📡"), 3)
end
