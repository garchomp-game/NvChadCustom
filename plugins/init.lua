-- @a = lazy_load挿入
-- @b = on_file_openに適応するものを変える。
return {
  -- コードアクションメニューを開く
  ["weilbith/nvim-code-action-menu"] = {
    event = "CmdLineEnter",
    setup = function()
      require("core.lazy_load").on_file_open "nvim-code-action-menu"
    end,
    cmd = "CodeActionMenu"
  },
  -- ヘルプの日本語化
  ["vim-jp/vimdoc-ja"] = {
    event = "CmdLineEnter",
    setup = function()
      require("core.lazy_load").on_file_open "vimdoc-ja"
    end,
  },
  -- cdでtcdしてくれるやつ
  ["kana/vim-tabpagecd"] = {
    event = "CmdLineEnter",
    setup = function()
      require("core.lazy_load").on_file_open "vim-tabpagecd"
    end,
  },
  -- fuzzy finderが使える
  ["junegunn/fzf"] = {
    event = "CmdLineEnter",
    setup = function()
      require("core.lazy_load").on_file_open "fzf"
    end,
  },
  -- files等の拡張コマンド提供
  ["junegunn/fzf.vim"] = {
    event = "CmdLineEnter",
    setup = function()
      require("core.lazy_load").on_file_open "fzf.vim"
    end,
    after = "fzf",
  },
  -- markdownのテーブルを一瞬で作ってくれるやつ。
  -- csvみたいにカンマ区切りで指定するだけなので楽ちん
  -- marktableで通常のテーブル、marktable!で一行目をタイトルにする
  ["mattn/vim-maketable"] = {
    event = "CmdLineEnter",
    setup = function()
      require("core.lazy_load").on_file_open "vim-maketable"
    end,
  },
  -- ビジュアルモードで選択したものに対して:translateでできる。
  ["skanehira/translate.vim"] = {
    event = "CmdLineEnter",
    setup = function()
      require("core.lazy_load").on_file_open "translate.vim"
    end,
  },
  -- f移動やt移動がすごくしやすくなるやつ。
  -- ハイライトしている所めがけて移動すると最短で行ける。すごい
  ["unblevable/quick-scope"] = {
    event = "CmdLineEnter",
    setup = function()
      require("core.lazy_load").on_file_open "quick-scope"
    end,
  },
  -- :tabularize / {pattern}で良い感じにインデントを揃えてくれるやつ。
  -- 表形式のやつ作ってるときに便利かも
  ["godlygeek/tabular"] = {
    event = "CmdLineEnter",
    setup = function()
      require("core.lazy_load").on_file_open "tabular"
    end,
  },
  -- /検索をしたときに、全体の要素数と、現在何個目なのかを
  -- 表示してくれる。
  ["google/vim-searchindex"] = {
    event = "CmdLineEnter",
    setup = function()
      require("core.lazy_load").on_file_open "vim-searchindex"
    end,
  },
  ["deris/vim-duzzle"] = {
    event = "CmdLineEnter",
    setup = function()
      require("core.lazy_load").on_file_open "vim-duzzle"
    end,
  },
  ["monaqa/dial.nvim"] = {
    event = "CmdLineEnter",
    setup = function()
      require("core.lazy_load").on_file_open "dial.nvim"
    end,
  },
  ["monaqa/dps-dial.vim"] = {
    event = "CmdLineEnter",
    setup = function()
      require("core.lazy_load").on_file_open "dps-dial.vim"
    end,
  },
  -- ["ryanoasis/vim-devicons"] = {
  --   event = "CmdLineEnter",
  --   setup = function()
  --     require("core.lazy_load").on_file_open "vim-devicons"
  --   end,
  -- },
  ["dstein64/vim-startuptime"] = {
    event = "CmdLineEnter",
    setup = function()
      require("core.lazy_load").on_file_open "vim-startuptime"
    end,
  },
	["williamboman/mason-lspconfig.nvim"] = {
		event = "CmdLineEnter",
		after = "nvim-lspconfig",
		setup = function()
			require("custom.pligins.configs.mason-lspconfig")
		end,
	},
  ["MunifTanjim/prettier.nvim"] = {
    event = "CmdLineEnter",
    after = "nvim-lspconfig",
    setup = function()
      require("core.lazy_load").on_file_open "prettier.nvim"
    end,
  },
  ["preservim/tagbar"] = {
    event = "CmdLineEnter",
    setup = function()
      require("core.lazy_load").on_file_open "tagbar"
    end,
  },
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    event = "CmdLineEnter",
    config = function()
      require("custom.plugins.configs.null-ls")
    end,
  },
  ["willelz/nvim-lua-guide-ja"] = {
    event = "CmdLineEnter",
    setup = function()
      require("core.lazy_load").on_file_open "nvim-lua-guide-ja"
    end,
  },
  ["cohama/lexima.vim"] = {
    setup = function()
      require("core.lazy_load").on_file_open "lexima.vim"
    end,
  },
  ["atusy/gh-fzf"] = {
    setup = function()
      require("core.lazy_load").on_file_open "gh-fzf"
    end,
  },
  ["hashue/gh-fuzzyclone"] = {
    setup = function()
      require("core.lazy_load").on_file_open "gh-fuzzyclone"
    end,
  },
  ["nvim-treesitter/playground"] = {
    after = "nvim-treesitter",
    event = "CmdLineEnter",
    setup = function()
      require("core.lazy_load").on_file_open "playground"
    end,
  }
}
