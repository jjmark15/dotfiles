local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.color_scheme = 'Harmonic16 Dark (base16)'
config.font_size = 10.0
config.audible_bell = 'Disabled'

return config
