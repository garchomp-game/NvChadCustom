-- custom.plugins.lspconfig
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local _, lspconfig = pcall(require, "lspconfig")
local servers = {
  "html",
  "cssls",
  "eslint",
  "jdtls",
  "tsserver",
  "bashls",
  "vimls",
  "sumneko_lua",
  "remark_ls",
  "emmet_ls",
  "sqlls",
  "vimls",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end


--   bash-language-server
--   bash-debug-adapter
--   vim-language-server
--   lua-language-server
--   gradle-language-server
--   groovy-language-server
--   java-debug-adapter
--   java-test
--   jdtls
--   js-debug-adapter
--   json-lsp
--   typescript-language-server
