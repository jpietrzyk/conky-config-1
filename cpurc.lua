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

  minimum_height = 200,
  minimum_width = 200,
	maximum_width = 280,

	alignment = 'top_left',
	gap_x = 100,
	gap_y = 530,

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

};

conky.text = [[
${font Advent Pro:size=14}CPU ${alignr}$cpu%${font}
${font Kalimati:size=10}${stippled_hr}${font}
Load: ${alignr}${loadavg 1}

Processes: ${alignr}${running_processes}/${processes}
${top name 1} ${alignr}${top cpu 1}
${top name 2} ${alignr}${top cpu 2}
${top name 3} ${alignr}${top cpu 3}
${top name 4} ${alignr}${top cpu 4}
${top name 4} ${alignr}${top cpu 4}
${top name 4} ${alignr}${top cpu 5}
${top name 4} ${alignr}${top cpu 6}
]];
