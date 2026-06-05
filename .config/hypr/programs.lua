_G.home        = os.getenv("HOME")
_G.terminal    = "kitty"
_G.fileManager = "thunar"
_G.menu        = "rofi -show drun"
_G.browser     = "zen-browser"
_G.message     = "vesktop"

hl.on("hyprland.start", function()
    hl.exec_cmd("swww-daemon")
    hl.exec_cmd("pkill playerctld ; mpd-mpris")
    hl.exec_cmd("waybar")
    hl.exec_cmd("swaync")
    hl.exec_cmd("swayosd-server")
    hl.exec_cmd("nm-applet")
end)
