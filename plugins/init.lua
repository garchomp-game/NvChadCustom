-- @a = lazy_load挿入
-- @b = on_file_openに適応するものを変える。
return {
  -- コードアクションメニューを開く
  ["weilbith/nvim-code-action-menu"] = {
    setup = function()
      require("core.lazy_load").on_file_open "nvim-code-action-menu"
    end,
    cmd = "CodeActionMenu"
  },
  -- ヘルプの日本語化
  ["vim-jp/vimdoc-ja"] = {
    setup = function()
      require("core.lazy_load").on_file_open "vimdoc-ja"
    end,
  },
  -- cdでtcdしてくれるやつ
  ["kana/vim-tabpagecd"] = {
    setup = function()
      require("core.lazy_load").on_file_open "vim-tabpagecd"
    end,
  },
  -- ファイラー、ツリー表示も可能。
  ["preservim/nerdtree"] = {
    setup = function()
      require("core.lazy_load").on_file_open "nerdtree"
    end,
  },
  -- fuzzy finderが使える
  ["junegunn/fzf"] = {
    setup = function()
      require("core.lazy_load").on_file_open "fzf"
    end,
  },
  -- files等の拡張コマンド提供
  ["junegunn/fzf.vim"] = {
    setup = function()
      require("core.lazy_load").on_file_open "fzf.vim"
    end,
  },
  -- markdownのテーブルを一瞬で作ってくれるやつ。
  -- csvみたいにカンマ区切りで指定するだけなので楽ちん
  -- marktableで通常のテーブル、marktable!で一行目をタイトルにする
  ["mattn/vim-maketable"] = {
    setup = function()
      require("core.lazy_load").on_file_open "vim-maketable"
    end,
  },
  -- 置換の選択範囲や置換文字がリアルタイムで変更されるのでわかりやすい
  ["markonm/traces.vim"] = {
    setup = function()
      require("core.lazy_load").on_file_open "traces.vim"
    end,
  },
  -- ビジュアルモードで選択したものに対して:translateでできる。
  ["skanehira/translate.vim"] = {
    setup = function()
      require("core.lazy_load").on_file_open "translate.vim"
    end,
  },
  -- f移動やt移動がすごくしやすくなるやつ。
  -- ハイライトしている所めがけて移動すると最短で行ける。すごい
  ["unblevable/quick-scope"] = {
    setup = function()
      require("core.lazy_load").on_file_open "quick-scope"
    end,
  },
  -- :tabularize / {pattern}で良い感じにインデントを揃えてくれるやつ。
  -- 表形式のやつ作ってるときに便利かも
  ["godlygeek/tabular"] = {
    setup = function()
      require("core.lazy_load").on_file_open "tabular"
    end,
  },
  -- /検索をしたときに、全体の要素数と、現在何個目なのかを
  -- 表示してくれる。
  ["google/vim-searchindex"] = {
    setup = function()
      require("core.lazy_load").on_file_open "vim-searchindex"
    end,
  },
  ["deris/vim-duzzle"] = {
    setup = function()
      require("core.lazy_load").on_file_open "vim-duzzle"
    end,
  },
  ["hrsh7th/nvim-gtd"] = {
    setup = function()
      require("core.lazy_load").on_file_open "nvim-gtd"
    end,
    config = function()
      require "custom.plugins.configs.nvim-gtd"
    end,
  },
  ["folke/neodev.nvim"] = {
    setup = function()
      require("core.lazy_load").on_file_open "neodev.nvim"
    end,
    after = "nvim-lspconfig",
    library = {
      enabled = true,
      runtime = true,
      plugins = true,
    },
    setup_jsonls = true,
    lspconfig = true,
  },
  ["monaqa/dial.nvim"] = {
    setup = function()
      require("core.lazy_load").on_file_open "dial.nvim"
    end,
  },
  ["monaqa/dps-dial.vim"] = {
    setup = function()
      require("core.lazy_load").on_file_open "dps-dial.vim"
    end,
  },
}
