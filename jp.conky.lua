jp = {}
jp.conky = {}

function conky_update_conf()
  print(conky_config)
end

-- Appends to conky.config content of other table
-- It is useful when have some widgets with same config for example
-- fonts or colors
--
function jp.conky.update_config(vars)
  for key,value in pairs(tbl) do
    conky.config[key] = value
  end
end
