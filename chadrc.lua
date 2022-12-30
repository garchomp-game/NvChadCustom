require("custom.script")

local M = {}

M.plugins = require "custom.plugins"
-- M.plugins = table.insert(M.plugins, require("custom.plugins.ovverride"))
-- M.plugins = table.insert(M.plugins, require("custom.plugins.removeCorePlugins"))
M.plugins = jointTable(M.plugins, "custom.plugins.override")
M.plugins = jointTable(M.plugins, "custom.plugins.removeCorePlugins")
M.mappings = require "custom.mappings"
M.ui = require "custom.ui"

return M
