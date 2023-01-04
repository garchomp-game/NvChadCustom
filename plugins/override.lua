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
    override_options = {
      ensure_installed =
        require "custom.plugins.override.mason-setup",
    },
  },
  ["nvim-treesitter/nvim-treesitter"] = {
    event = "CmdLineEnter",
    override_options = {
      ensure_installed =
        require "custom.plugins.override.treesitter-setup"
    }
  },
  ["neovim/nvim-lspconfig"] = {
    event = "CmdLineEnter",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.configs.lspconfig"
    end,
  },
  -- 開いたときにドラゴンを表示させる！
  ["goolord/alpha-nvim"] = {
    disable = false,
  },
}
