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
  	update_interval = 15,

  	minimum_width = 800,
    maximum_width = 800,
    minimum_height = 150,
    maximum_height = 400,

    gap_x = 50,
    gap_y = 60,

  	font = 'Advent Pro:size=10',
  }
)

conky.text = [[
${font Ubuntu Condensed:size=14}TO-DO LIST${alignr}${font Ubuntu Condensed:size=12}(${lines ./.cache/TODO.txt} notes)${font}
${stippled_hr}
${voffset 10}${execpi 300 ./viewnotes.sh}
${stippled_hr 1}
]];
