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
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.configs.lspconfig"
    end,
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
  -- 開いたときにドラゴンを表示させる！
  ["goolord/alpha-nvim"] = {
    disable = false,
  },
  -- コードアクションメニューを開く
  ["weilbith/nvim-code-action-menu"] = {
    cmd = "CodeActionMenu"
  },
  -- ヘルプの日本語化
  ["vim-jp/vimdoc-ja"] = {},
  -- バッファ検索 <c-space>
  ["vim-ctrlspace/vim-ctrlspace"] = {},
  -- cdでtcdしてくれるやつ
  ["kana/vim-tabpagecd"] = {},
  -- nvim-treeの無効化
  ["kyazdani42/nvim-tree.lua"] = false,
  -- ファイラー、ツリー表示も可能。
  ["preservim/nerdtree"] = {},
  -- nerdtreeとかにアイコン追加してくれるやつ
  ["ryanoasis/vim-devicons"] = {},
  -- fuzzy finderが使える
  ["junegunn/fzf"] = {},
  -- files等の拡張コマンド提供
  ["junegunn/fzf.vim"] = {},
  -- markdownとかのプレビューをしてくれるやつ
  ["previm/previm"] = {},
  -- markdownのテーブルを一瞬で作ってくれるやつ。
  -- csvみたいにカンマ区切りで指定するだけなので楽ちん
  -- marktableで通常のテーブル、marktable!で一行目をタイトルにする
  ["mattn/vim-maketable"] = {},
  -- 置換の選択範囲や置換文字がリアルタイムで変更されるのでわかりやすい
  ["markonm/traces.vim"] = {},
  -- ビジュアルモードで選択したものに対して:translateでできる。
  ["skanehira/translate.vim"] = {},
  -- 全プラグインの中で一番人気のあるgitのプラグインみたいだけど
  -- 使い方よくわからん。
  ["tpope/vim-fugitive"] = {},
  -- f移動やt移動がすごくしやすくなるやつ。
  -- ハイライトしている所めがけて移動すると最短で行ける。すごい
  ["unblevable/quick-scope"] = {},
  -- ファイル名の検索を動的にしてくれるやつ。
  -- いわゆるfzfのfilesの動的バージョン
  ["kien/ctrlp.vim"] = {},
  -- 色々なアスタリスク検索ができる。
  -- シャープにすると逆になる。
  ["haya14busa/vim-asterisk"] = {},
  -- :tabularize / {pattern}で良い感じにインデントを揃えてくれるやつ。
  -- 表形式のやつ作ってるときに便利かも
  ["godlygeek/tabular"] = {},
  -- /検索をしたときに、全体の要素数と、現在何個目なのかを
  -- 表示してくれる。
  ["google/vim-searchindex"] = {},
  ["vim-scripts/grep.vim"] = {},
}
