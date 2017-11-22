--[[

TEXT
^^^^
***** HEY! Conky Manager! Please see this config file!
***** Yep this is my awesome hack for Conky Manager.
***** Now this file (new config lua format) is available on the widgets list.

]]

conky.config = {
	background = false,
	update_interval = 1,

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
  own_window_argb_value = 0,
  own_window_argb_visual = false,
  own_window_colour = 000000,

	border_inner_margin = 0,
	border_outer_margin = 0,

	minimum_width = 1000,
  minimum_height = 250,
	maximum_width = 1600,

  alignment = 'middle_left',
  gap_x = 100,
  gap_y = 150,

-- -- Graphics settings -- #
	draw_shades = false,
	draw_outline = false,
	draw_borders = false,
	draw_graph_borders = false,

-- -- Text settings -- #
	use_xft = true,
	font = 'Advent Pro:size=18',
	xftalpha = 0.8,

	uppercase = false,

	default_color = '#888A85',
  color1 = '#555753', -- darker
  color2 = '#D3D7CF', -- lighter
  color3 = '#888A85', -- middle

  -- Lua Load -- #
  lua_load = './clock_rings.lua',
  lua_draw_hook_pre = 'clock_rings',
};

conky.text = [[
  ${font Kalimati:size=10}  Root   ${fs_used /}/${fs_size /}                Home   ${fs_used /home}/${fs_size /home}$font
  ${voffset 90}${goto 115}${font Advent Pro:size=30}${time %H:%M}${voffset -10}${font Kalimati:size=10}${font}
  ${voffset -28}${goto 268}${color2}${hr 2}
  ${voffset -70}${goto 278}${cpugraph 50,380 D3D7CF 888A85} #${voffset -18} ${alignr}
  ${voffset 60}${goto 285}${font Advent Pro:size=30}${color3}${time %A, %d %B %Y}${font}
  ${font Kalimati:size=14}${voffset -120}${goto 300}
]];
