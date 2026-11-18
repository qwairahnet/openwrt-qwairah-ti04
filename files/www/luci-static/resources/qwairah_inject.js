document.addEventListener("DOMContentLoaded", function() {
  var link = document.createElement("link");
  link.rel = "stylesheet";
  link.href = "/luci-static/resources/qwairah_theme.css";
  document.head.appendChild(link);
  var nav = document.querySelector(".main-left") || document.querySelector("header");
  if (nav && !document.querySelector(".qw-banner")) {
    var div = document.createElement("div");
    div.className = "qw-banner";
    div.innerHTML = '<img src="/luci-static/resources/qwairah_logo.jpg" alt="QWAIRAH"><div style="color:#f5d061;font-weight:bold;margin-top:4px;font-size:14px;">QWAIRAH NETWORK</div>';
    nav.prepend(div);
  }
});
