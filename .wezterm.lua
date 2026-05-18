-- https://alexplescan.com/posts/2024/08/10/wezterm
-- Import the wezterm module
local wezterm = require 'wezterm'

-- Creates a config object which we will be adding our config to
local config = wezterm.config_builder()

-- config.color_scheme = "Tokyo Night"
config.color_scheme = "Dracula"
-- config.color_scheme = "zenburned"
config.font_size = 11.0
config.window_background_opacity = 0.9
config.macos_window_background_blur = 30
-- config.front_end = "WebGpu"
-- config.window_decorations = "RESIZE"

-- Returns our config to be evaluated. We must always do this at the bottom of this file
return config
