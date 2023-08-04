return {
  -- override plugin definition options
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
  ["williamboman/mason.nvim"] = {
    event = "CmdLineEnter",
    branch = "static-registry",
    override_options = {
      ensure_installed =
        require "custom.plugins.override.mason-setup",
    },
  },
  ["nvim-treesitter/nvim-treesitter"] = {
    event = "CmdLineEnter",
    tags = "v0.8.1",
    override_options = {
      ensure_installed =
        require "custom.plugins.override.treesitter-setup"
    }
  },
  ["neovim/nvim-lspconfig"] = false,
  -- 開いたときにドラゴンを表示させる！
  ["goolord/alpha-nvim"] = {
    disable = false,
  },
}
