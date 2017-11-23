local M = {}

-- Append table content to conky config. Creates new config if not exist.
-- In case of conflict override existing params!
-- @param settings_table Table with settings to add/change
-------------------------------------
function M.add_settings(settings)
  if conky.config == nil then
    conky.config = {}
  end

  for k,v in pairs(settings) do
    conky.config[k] = v
  end
end


-- Initialize conky config and fill it with given module .settings table
-- @param SM module with common settings
-------------------------------------
function M.init(SM)
  conky.config = {}
  if SM.settings then
    M.add_settings(SM.settings)
  end
end

return M
