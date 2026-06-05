local mainMod = "SUPER"

-- Applications
hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd("kitty"))
hl.bind(mainMod .. " + E",      hl.dsp.exec_cmd("thunar"))
hl.bind(mainMod .. " + SPACE",  hl.dsp.exec_cmd("rofi -show drun"))
hl.bind(mainMod .. " + W",      hl.dsp.exec_cmd("zen-browser"))
hl.bind(mainMod .. " + A",      hl.dsp.exec_cmd("vesktop"))
hl.bind(mainMod .. " + P",      hl.dsp.exec_cmd("spotify"))
hl.bind(mainMod .. " + Q",      hl.dsp.window.close())
hl.bind(mainMod .. " + M",      hl.dsp.exec_cmd("wlogout"))
hl.bind(mainMod .. " + L",      hl.dsp.exec_cmd("hyprlock"))
hl.bind(mainMod .. " + J",      hl.dsp.layout("togglesplit"))
hl.bind(mainMod .. " + V",      hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + N",      hl.dsp.exec_cmd("swaync-client --close-latest"))
hl.bind(mainMod .. " + F",      hl.dsp.exec_cmd("~/.scripts/fullscreen_toggle.sh"))

-- Scripts
hl.bind("CTRL + S",                  hl.dsp.exec_cmd('grim -g "$(slurp)" ~/Pictures/Screenshots/screenshot-$(date +%Y%m%d-%H%M%S).png'))
hl.bind(mainMod .. " + D",           hl.dsp.exec_cmd("~/.scripts/wallpick.sh"))
hl.bind(mainMod .. " + ALT + D",     hl.dsp.exec_cmd("~/.scripts/wallpicker.sh"))
hl.bind(mainMod .. " + B",           hl.dsp.exec_cmd("~/.scripts/toggle.blur.sh"))
hl.bind(mainMod .. " + ALT + A",     hl.dsp.exec_cmd("~/.scripts/animation.switcher.sh"))
hl.bind(mainMod .. " + T",           hl.dsp.exec_cmd("~/.scripts/theme.switcher.sh"))
hl.bind(mainMod .. " + H",           hl.dsp.exec_cmd("~/.scripts/configs.sh"))

-- Audio/Media
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("swayosd-client --output-volume raise"), { locked = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("swayosd-client --output-volume lower"), { locked = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("~/.scripts/audio-mute-toggle.sh"),      { locked = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("~/.scripts/mic-toggle.sh"),             { locked = true })
hl.bind("XF86AudioNext",        hl.dsp.exec_cmd("playerctl next"),                       { locked = true })

-- Workspaces
for i = 1, 9 do
    local key = tostring(i)
    hl.bind(mainMod .. " + " .. key,         hl.dsp.focus({ workspace = i }))
    hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- Mouse
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })
