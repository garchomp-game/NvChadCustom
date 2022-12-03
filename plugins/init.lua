return {
  -- Override plugin definition options
  ["goolord/alpha-nvim"] = {
    disable = false,
  },
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.configs.lspconfig"
    end,
  },
  ["vim-jp/vimdoc-ja"] = {},
  ["weilbith/nvim-code-action-menu"] = {
    cmd = "CodeActionMenu"
  },
  ["williamboman/mason.nvim"] = {
    override_options = {
      ensure_installed =
        require "custom.plugins.override.mason-setup",
    },
  },
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = {
      ensure_installed =
        require "custom.plugins.override.treesitter-setup"
    }
  },
  ["ctrlpvim/ctrlp.vim"] = {},
  ['vim-scripts/grep.vim'] = {},
  ["kana/vim-tabpagecd"] = {},
  ["kyazdani42/nvim-tree.lua"] = false,
  ["preservim/nerdtree"] = {},
  ["NvChad/ui"] = {
    override_options = {
      statusline = {
        separator_style = "round",
        overriden_modules = function()
          return require "custom.plugins.override.statusline"
        end,
      },
    },
  },
}
