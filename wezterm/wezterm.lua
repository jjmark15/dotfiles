local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.color_scheme = 'Harmonic16 Dark (base16)'
config.font_size = 10.0
config.audible_bell = 'Disabled'
config.font = wezterm.font 'JetBrains Mono'
config.initial_cols = 150
config.initial_rows = 48
config.enable_tab_bar = false
config.default_prog = { 'zellij', 'attach', '--create' }
config.default_cursor_style = 'SteadyBar'

return config
