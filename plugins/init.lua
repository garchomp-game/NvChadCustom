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
    setup = function()
      require("core.lazy_load").on_file_open "nvim-gtd"
    end,
    config = function()
      require "custom.plugins.configs.nvim-gtd"
    end,
  },
  ["Shougo/dein.vim"] = {},
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
  ["monaqa/dial.nvim"] = {},
  ["monaqa/dps-dial.vim"] = {},
}
