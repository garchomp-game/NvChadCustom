return {
  -- コードアクションメニューを開く
  ["weilbith/nvim-code-action-menu"] = {
    cmd = "CodeActionMenu"
  },
  -- ヘルプの日本語化
  ["vim-jp/vimdoc-ja"] = {},
  -- cdでtcdしてくれるやつ
  ["kana/vim-tabpagecd"] = {},
  -- ファイラー、ツリー表示も可能。
  ["preservim/nerdtree"] = {},
  -- fuzzy finderが使える
  ["junegunn/fzf"] = {},
  -- files等の拡張コマンド提供
  ["junegunn/fzf.vim"] = {},
  -- markdownのテーブルを一瞬で作ってくれるやつ。
  -- csvみたいにカンマ区切りで指定するだけなので楽ちん
  -- marktableで通常のテーブル、marktable!で一行目をタイトルにする
  ["mattn/vim-maketable"] = {},
  -- 置換の選択範囲や置換文字がリアルタイムで変更されるのでわかりやすい
  ["markonm/traces.vim"] = {},
  -- ビジュアルモードで選択したものに対して:translateでできる。
  ["skanehira/translate.vim"] = {},
  -- f移動やt移動がすごくしやすくなるやつ。
  -- ハイライトしている所めがけて移動すると最短で行ける。すごい
  ["unblevable/quick-scope"] = {},
  -- :tabularize / {pattern}で良い感じにインデントを揃えてくれるやつ。
  -- 表形式のやつ作ってるときに便利かも
  ["godlygeek/tabular"] = {},
  -- /検索をしたときに、全体の要素数と、現在何個目なのかを
  -- 表示してくれる。
  ["google/vim-searchindex"] = {},
  ["deris/vim-duzzle"] = {},
  ["hrsh7th/nvim-gtd"] = {
    config = function()
      require "custom.plugins.configs.nvim-gtd"
    end,
  },
  ["Shougo/dein.vim"] = {},
  ["folke/neodev.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.configs.neodev-nvim"
    end,
    library = {
      enabled = true, -- when not enabled, neodev will not change any settings to the LSP server
      -- these settings will be used for your Neovim config directory
      runtime = true, -- runtime path
      types = true, -- full signature, docs and completion of vim.api, vim.treesitter, vim.lsp and others
      plugins = true, -- installed opt or start plugins in packpath
      -- you can also specify the list of plugins to make available as a workspace library
      -- plugins = { "nvim-treesitter", "plenary.nvim", "telescope.nvim" },
    },
    setup_jsonls = true, -- configures jsonls to provide completion for project specific .luarc.json files
    -- for your Neovim config directory, the config.library settings will be used as is
    -- for plugin directories (root_dirs having a /lua directory), config.library.plugins will be disabled
    -- for any other directory, config.library.enabled will be set to false
    -- With lspconfig, Neodev will automatically setup your lua-language-server
    -- If you disable this, then you have to set {before_init=require("neodev.lsp").before_init}
    -- in your lsp start options
    lspconfig = true,
  },
}
