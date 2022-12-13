require("custom.script")

local M = {}
M.plugins = require "custom.plugins"
M.plugins = jointTable(M.plugins, require("custom.plugins.override"))
M.plugins = jointTable(M.plugins, require("custom.plugins.removeCorePlugins"))
M.mappings = require "custom.mappings"
M.ui = require "custom.ui"
return M
