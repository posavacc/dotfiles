local terminal = "kitty"

local mainMod = "SUPER"

hl.bind(mainMod .. " + T", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + C", hl.dsp.window.close())
hl.bind("CTRL + ALT + DELETE", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd("firefox"))

-- SCROLLING --
hl.bind(mainMod .. " + h", hl.dsp.layout("focus left"))
hl.bind(mainMod .. " + l", hl.dsp.layout("focus right"))
hl.bind(mainMod .. " + k", hl.dsp.layout("focus up"))
hl.bind(mainMod .. " + j", hl.dsp.layout("focus down"))

hl.bind(mainMod .. " + SHIFT + h", hl.dsp.layout("swapcol l"))
hl.bind(mainMod .. " + SHIFT + l", hl.dsp.layout("swapcol r"))

hl.bind(mainMod .. " + SHIFT + k", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + SHIFT + j", hl.dsp.focus({ direction = "down" }))

hl.bind(mainMod .. " + CTRL + h", hl.dsp.layout("consume_or_expel prev"))
hl.bind(mainMod .. " + CTRL + l", hl.dsp.layout("consume_or_expel next"))

hl.bind(mainMod .. " + e", hl.dsp.layout("colresize +conf"))

-- DWINDLE --
--[[
hl.bind(mainMod .. " + h", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + l", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + k", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + j", hl.dsp.focus({ direction = "down" }))

hl.bind(mainMod .. " + SHIFT + h", hl.dsp.window.move({ direction = "left" }))
hl.bind(mainMod .. " + SHIFT + l", hl.dsp.window.move({ direction = "right" }))
hl.bind(mainMod .. " + SHIFT + k", hl.dsp.window.move({ direction = "up" }))
hl.bind(mainMod .. " + SHIFT + j", hl.dsp.window.move({ direction = "down" }))
]]

hl.bind(mainMod .. " + f", hl.dsp.window.fullscreen())

-- Two monitors so this is fine
hl.bind(mainMod .. " + M", function()
    hl.dispatch(hl.dsp.focus({ monitor = hl.get_active_monitor().id - 1 }))
end)
hl.bind(mainMod .. " + SHIFT + M", function()
    local window = hl.get_active_window()
    if window == nil then return end
    local size = window.size.x / window.monitor.width

    local width = 0.5
    if 0.5 - size < 0.0 then
        width = 1.0
    end

    hl.dispatch(hl.dsp.window.move({ monitor = hl.get_active_monitor().id - 1 }))
    hl.dispatch(hl.dsp.layout("colresize " .. width))
end)

hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd("noctalia msg screenshot-region"))

hl.bind("PRINT", hl.dsp.exec_cmd("noctalia msg screenshot-fullscreen"))

hl.bind(mainMod .. " + SPACE", hl.dsp.exec_cmd("rofi -show drun"))
hl.bind(mainMod .. " + x", hl.dsp.exec_cmd("rofi -show calc -modi calc -no-show-match -no-sort -theme ~/.config/rofi/calc.rasi"))

hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })

hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })

-- split monitors workspaces
package.path = package.path .. ";./?.lua;./?/init.lua"
local smw = require("plugins.split-monitor-workspaces")

smw.setup({
    workspace_count = 5,
})

for i = 1, smw.get_amount_of_workspaces() do
    local n = tostring(i)
    hl.bind(mainMod .. " +" .. n, smw.workspace(n))
    hl.bind(mainMod .. " + SHIFT +" .. n, smw.move_to_workspace_silent(n))
end
