local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.color_scheme = 'Harmonic16 Dark (base16)'
config.font_size = 10.0
config.audible_bell = 'Disabled'
config.font = wezterm.font 'JetBrains Mono'
config.initial_cols = 120
config.initial_rows = 36
config.enable_tab_bar = false
config.default_prog = { 'zellij' }

return config
