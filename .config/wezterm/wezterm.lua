local wezterm = require("wezterm")

config = wezterm.config_builder()

config = {
  automatically_reload_config = true,
  enable_tab_bar = false,
  window_close_confirmation = "NeverPrompt",
  window_decorations = "RESIZE",
  default_cursor_style = "BlinkingBar",
  color_scheme = "Gruvbox Material (Gogh)",
  font_size = 10.5,
  background = {
    {
      source = {
        File = "~/Pictures/w11.png",
      },
      hsb = {
        hue = 1.0,
        saturation = 1.02,
        brightness = 0.25,
      },
      width = "100%",
      height = "100%",
    },
    {
      source = {
        Color = "#282c35"
      },
      width = "100%",
      height = "100%",
      opacity = 0.5,
    },
  },
  window_padding = {
    left = 3,
    right = 3,
    top = 0,
    bottom = 0,
  },
}

return config
