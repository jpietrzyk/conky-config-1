--[[

TEXT
^^^^
***** HEY! Conky Manager! Please see this config file!
***** Yep this is my awesome hack for Conky Manager.
***** Now this file (new config lua format) is available on the widgets list.

]]

conky.config = {
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

  own_window = true,
  own_window_type = 'desktop',
  own_window_transparent = true,
  own_window_hints = 'undecorate,sticky,skip_taskbar,skip_pager,below',

  border_inner_margin = 0,
  border_outer_margin = 0,

  minimum_width = 230,
  minimum_height = 100,
  maximum_width = 230,

  alignment = 'top_left',
  gap_x = 640,
  gap_y = 490,

-- -- Graphics settings -- #
  draw_shades = false,
  draw_outline = false,
  draw_borders = false,
  draw_graph_borders = false,

-- -- Text settings -- #
  use_xft = true,
  font = 'Kalimati:size=10',
  xftalpha = 0.8,

  uppercase = false,

  default_color = '#888A85',
  color1 = '#555753', -- darker
  color2 = '#D3D7CF', -- lighter
  color3 = '#888A85', -- middle

  own_window_argb_value = 0,
  own_window_argb_visual = false,
  own_window_colour = 000000,
};

conky.text = [[
${font Advent Pro:size=14}NET ${alignr}${addr enp2s0}${font}
${font Kalimati:size=10}${stippled_hr}${font}
GW Interface: ${alignr}$gw_iface
GW IP: ${alignr}$gw_ip

Curr download: ${alignr}${downspeed enp2s0}
Curr upload: ${alignr}${upspeed enp2s0}
Ping (onet.pl) ${alignr}${tcp_ping onet.pl}

Total download ${alignr}${totaldown enp2s0}
Total upload ${alignr}${totalup enp2s0}
]];
