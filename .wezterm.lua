local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 14

config.enable_tab_bar = false
config.enable_wayland = false
config.adjust_window_size_when_changing_font_size = false

config.color_scheme = 'Google Dark (Gogh)'
config.colors = {
    background = '#1f1f1f',
}

config.default_cursor_style = 'BlinkingBlock'
config.cursor_blink_rate = 700

config.cursor_blink_ease_in = 'Constant'
config.cursor_blink_ease_out = 'Constant'

config.freetype_load_target = "Light"
config.freetype_render_target = "HorizontalLcd"


config.window_padding = {
    left = 4,
    right = 0,
    top = 0,
    bottom = 0,
}

return config
