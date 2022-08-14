local wezterm = require 'wezterm'

return {
  -- Font
  font = wezterm.font 'FiraCode Nerd Font',
  font_size = 20,
  adjust_window_size_when_changing_font_size = false,

  -- Colors
  color_scheme = "tokyonight",

  -- Tabs
  hide_tab_bar_if_only_one_tab = true,
  tab_bar_at_bottom = true,
  use_fancy_tab_bar = false,

  -- Windows
  window_background_opacity = 0.95,
  window_decorations = "RESIZE",
  window_padding = {
    left = 10,
    right = 10,
    top = 20,
    bottom = 0,
  },
}
