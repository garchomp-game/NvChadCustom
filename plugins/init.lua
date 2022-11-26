return {
  -- Override plugin definition options
  ["goolord/alpha-nvim"] = {
    disable = false,
  },
  ["neovim/nvim-lspconfig"] = {
      config = function()
        require "plugins.configs.lspconfig"
        require "custom.plugins.lspconfig"
      end,
  },
  ["vim-jp/vimdoc-ja"] = {},
  ["weilbith/nvim-code-action-menu"] = {
    cmd = "CodeActionMenu"
  }
}
