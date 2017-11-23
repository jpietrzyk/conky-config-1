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

    minimum_width = 230,
    minimum_height = 100,
    maximum_width = 230,

    gap_x = 640,
    gap_y = 510,
  }
)

conky.text = [[
${font Advent Pro:size=14}NET ${alignr}${addr enp2s0}${font}
${font Kalimati:size=10}${stippled_hr}${font}
GW Interface: ${alignr}$gw_iface
GW IP: ${alignr}$gw_ip

Curr download: ${alignr}${downspeed enp2s0}
Curr upload: ${alignr}${upspeed enp2s0}
Total download ${alignr}${totaldown enp2s0}
Total upload ${alignr}${totalup enp2s0}
]];
