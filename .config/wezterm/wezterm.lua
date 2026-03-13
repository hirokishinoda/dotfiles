local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- theme
config.color_scheme = 'iceberg-dark'

-- basic settings
config.automatically_reload_config = true 
config.window_close_confirmation = "NeverPrompt"
config.default_cursor_style = "BlinkingBar"

-- font settings
config.font = wezterm.font("JetBrainsMono Nerd Font", { weight = "Bold" })
config.font_size = 15

-- window settings
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.75
config.macos_window_background_blur = 10

wezterm.on("gui-startup", function()
    local _, _, window = mux.spawn_window({})
    --window:gui_window():maximize()
    window:gui_window():toggle_fullscreen()
end)

-- tab settings
config.show_new_tab_button_in_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = true
config.tab_max_width = 5
-- only nightly
-- config.show_close_tab_button_in_tabs = false

-- tab boader is null
config.colors = {
  tab_bar = {
    inactive_tab_edge = "none",
  },
}


-- window frame
config.window_frame = {
    inactive_titlebar_bg = "none",
    active_titlebar_bg = "none",
}

return config