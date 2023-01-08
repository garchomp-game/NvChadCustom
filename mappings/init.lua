local M = {}

--      文字		モード	~
--     <Space>		ノーマル、ビジュアル、選択、オペレータ待機
-- n		ノーマル
-- v		ビジュアル、選択
-- s		選択
-- x		ビジュアル
-- o		オペレータ待機
-- !		挿入、コマンドライン
-- i		挿入
-- l		挿入、コマンドライン、Lang-Argでの ":lmap" マップ
-- c		コマンドライン
-- t		端末ジョブ

M.custom = {
  n = {
    ["<M-o>"] = {
      ':CodeActionMenu<CR>',
      "open code action menu",
      opts = { silent = true },
    },
		["<M-s>"] = {
			':mksession! mysession.vim<CR>'
        .. ':wviminfo! mysession.viminfo<CR>',
			"create session",
      opts = { silent = true },
		},
    ["<C-n>"] = {
      ":NERDTreeToggle<CR>",
      "toggle nerdtree",
      opts = { silent = true },
    },
    ["<C-space>"] = {
      ":Buffers<CR>",
      "toggle buffer menu",
      opts = { silent = true },
    },
    ["<A-p>"] = {
      ":Lines<CR>",
      "search keyword menu",
      opts = { silent = true },
    },
    ["<C-p>"] = {
      ":Files<CR>",
      "open fzf files",
      opts = { silent = true },
    },
    ["<leader>k"] = {
      ":TagbarToggle<CR>",
      "tagbar toggle",
      opts = { silent = true },
    },
  },
  t = {
    ["<C-q>"] = {
      "<C-\\><C-n>",
      "quit terminal mode"
    }
  }
}
return M
