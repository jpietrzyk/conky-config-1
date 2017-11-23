--[[

TEXT
^^^^
***** HEY! Conky Manager! Please see this config file!
***** Yep this is my awesome hack for Conky Manager.
***** Now this file (new config lua format) is available on the widgets list.

]]

local Conf = require "jp.conky.utils.config"
local Common = require 'common'

Conf.init(Common)
Conf.add_settings(
  {
  	update_interval = 1,

  	minimum_width = 700,
    minimum_height = 250,
  	maximum_width = 1600,

    alignment = 'middle_left',
    gap_x = 100,
    gap_y = 150,

  	font = 'Advent Pro:size=18',

    -- Lua Load --

    lua_load = './clock_rings.lua',
    lua_draw_hook_pre = 'clock_rings'
  }
)

conky.text = [[
  ${font Kalimati:size=10}  Root   ${fs_used /}/${fs_size /}                Home   ${fs_used /home}/${fs_size /home}$font
  ${voffset 90}${goto 115}${font Advent Pro:size=30}${time %H:%M}${voffset -10}${font Kalimati:size=10}${font}
  ${voffset -28}${goto 268}${color2}${hr 2}
  ${voffset -72}${goto 278}${cpugraph 50,455 D3D7CF 888A85} #${voffset -18} ${alignr}
  ${voffset 60}${goto 285}${font Advent Pro:size=30}${color3}${time %A, %d %B %Y}${font}
  ${font Kalimati:size=14}${voffset -120}${goto 300}
]];
