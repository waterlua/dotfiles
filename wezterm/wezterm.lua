local wezterm = require 'wezterm'

return {
  -- Font
  font = wezterm.font 'FiraCode Nerd Font',
  font_size = 20,
  adjust_window_size_when_changing_font_size = false,

  -- Colors
  color_scheme = "tokyonight",

  -- Tabs
  use_fancy_tab_bar = false,
  tab_bar_at_bottom = true,
  hide_tab_bar_if_only_one_tab = true,

  -- Windows
  window_decorations = "RESIZE",
  window_background_opacity = 0.90,
}
