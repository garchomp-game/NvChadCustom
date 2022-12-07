-- joint tables.
---@diagnostic disable-next-line: lowercase-global
function addTable(M, val)
  local table = require("custom."..val)
  for key, value in pairs(table) do
    M[key] = value
  end
  return M
end
