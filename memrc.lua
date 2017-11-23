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
  	minimum_width = 180,
    minimum_height = 100,
  	maximum_width = 200,

  	gap_x = 380,
  	gap_y = 500,
  }
)

conky.text = [[
${font Advent Pro:size=14}RAM ${alignr}$memperc%${font}
${font Kalimati:size=10}${stippled_hr}${font}
${top_mem name 1} ${alignr}${top_mem mem 1}
${top_mem name 2} ${alignr}${top_mem mem 2}
${top_mem name 3} ${alignr}${top_mem mem 3}
${top_mem name 4} ${alignr}${top_mem mem 4}
]];
