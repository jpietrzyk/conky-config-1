shared = {}

shared.config = {
  background = false,

  update_interval = 3,

  cpu_avg_samples = 2,
  net_avg_samples = 2,

  override_utf8_locale = true,

  double_buffer = true,
  no_buffers = true,

  text_buffer_size = 2048,
  imlib_cache_size = 0,

  -- -- Window specifications -- #
  alignment = 'top_left',

  own_window = true,
  own_window_type = 'desktop',
  own_window_transparent = true,
  own_window_hints = 'undecorated,sticky,skip_taskbar,skip_pager,below',
  own_window_argb_value = 0,
  own_window_argb_visual = false,
  own_window_colour = '000000',

  border_inner_margin = 0,
  border_outer_margin = 0,

  -- Graphics settings --

  draw_shades = false,
  draw_outline = false,
  draw_borders = false,
  draw_graph_borders = false,

  -- Text settings --

  use_xft = true,
  xftalpha = 0.8,

  font = 'Kalimati:size=10',

  uppercase = false,

  default_color = '#888A85',
  color1 = '#555753', -- darker
  color2 = '#D3D7CF', -- lighter
  color3 = '#888A85' -- middle
};
