local custom = "custom"
return {
  -- Override plugin definition options
  ["goolord/alpha-nvim"] = {
    disable = false,
  },
  ["neovim/nvim-lspconfig"] = {
    config = function()
      local lspconfig = "plugins.configs.lspconfig"
      require(lspconfig)
      require(custom .. lspconfig)
    end,
  },
  ["vim-jp/vimdoc-ja"] = {},
  ["weilbith/nvim-code-action-menu"] = {
    cmd = "CodeActionMenu"
  },
  ["williamboman/mason.nvim"] = {
    override_options = {
      ensure_installed = {
        "typescript-language-server",
        "css-lsp",
        "html-lsp",
        "json-lsp",
        "lua-language-server",
        "stylua",
        "shellcheck",
        "shfmt",
        "bash-debug-adapter",
        "bash-language-server",
        "gradle-language-server",
        "groovy-language-server",
        "java-debug-adapter",
        "java-test",
        "jdtls",
        "js-debug-adapter",
        "vim-language-server",
      },
    },
  }
}
