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
    -- Window specifications --

    minimum_height = 200,
    minimum_width = 200,
    maximum_width = 280,

    gap_x = 100,
    gap_y = 530
  }
)

conky.text = [[
${font Advent Pro:size=14}CPU ${alignr}$cpu%${font}
${font Kalimati:size=10}${stippled_hr}${font}
Load: ${alignr}${loadavg 1}

Processes: ${alignr}${running_processes}/${processes}
${top name 1} ${alignr}${top cpu 1}
${top name 2} ${alignr}${top cpu 2}
${top name 3} ${alignr}${top cpu 3}
${top name 4} ${alignr}${top cpu 4}
]];
