-- joint tables.
---@diagnostic disable-next-line: lowercase-global
function jointTable(M, table)
  for key, value in pairs(require(table)) do
    M[key] = value
  end
  return M
end
