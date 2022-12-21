-- IMPORTANT: make sure to setup neodev BEFORE lspconfig
require("neodev").setup({
  -- add any options here, or leave empty to use the default settings
})

-- then setup your lsp server as usual
local lspconfig = require('lspconfig')
-- ---@param plugins string[]
-- ---@return string[]
-- local function library(plugins)
--   local paths = {}
--   for _, plugin in ipairs(plugins) do
--     local path = vim.fn["dein#get"](plugin).path
--     if vim.bool_fn.isdirectory(path .. "/lua") then
--       table.insert(paths, path)
--     end
--   end
--   table.insert(paths, vim.fn.stdpath("config"))
--   return paths
-- end

-- example to setup sumneko and enable call snippets
lspconfig.sumneko_lua.setup({
  settings = {
    Lua = {
      format = {
        enable = false,
      },
      diagnostics = {
        globals = { "vim", "describe", "it" },
      },
      runtime = {
        version = "LuaJIT",
        path = { "lua/?.lua", "lua/?/init.lua" },
      },
      -- workspace = {
      --   library = library({ "plenary.nvim", "nvim-cmp", "sqlite.lua" }),
      --   checkThirdParty = false,
      -- },
    },
  },
})
