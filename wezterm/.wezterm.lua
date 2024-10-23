local wezterm = require 'wezterm'
local mux = wezterm.mux

wezterm.on("gui-startup", function()
  local tab, pane, window = mux.spawn_window{}
  window:gui_window():maximize()
end)

local config = {}

-- general
config.enable_tab_bar = false
config.enable_scroll_bar = false
config.window_background_opacity = 1.0
config.macos_window_background_blur = 40

-- appearance
-- config.color_scheme = 'Catppuccin Mocha (Gogh)'
-- config.color_scheme = 'nightfox'
config.color_scheme = 'Gruvbox Dark (Gogh)'
config.font = wezterm.font_with_fallback({
    {family="JetBrainsMono Nerd Font", weight="DemiBold"},
    {family="Twemoji Mozilla", assume_emoji_presentation = true},
})
config.font_size = 13
config.window_decorations = 'RESIZE'
-- config.colors = {
--   background = '#1f1f1f',
-- }

-- keys
local act = wezterm.action
config.keys = {
    {key="LeftArrow", mods="OPT", action=wezterm.action{SendString="\x1bb"}}, -- ALT + Left to move one word left
    {key="LeftArrow", mods="CMD", action=wezterm.action{SendString="\x1bOH"}}, -- CMD + Left to move to the beginning of the line
    {key="RightArrow", mods="OPT", action=wezterm.action{SendString="\x1bf"}}, -- ALT + Right to move one word right
    {key="RightArrow", mods="CMD", action=wezterm.action{SendString="\x1bOF"}}, -- CMD + Right to move to the end of the line
    { key = 'y', mods = 'SHIFT|CTRL', action = act.ActivateCopyMode },
}

return config
