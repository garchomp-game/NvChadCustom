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
      ': :CodeActionMenu<CR>',
      "open code action menu"
    },
		["<M-s>"] = {
			': :mksession! mysession.vim<CR>'
        .. ':wviminfo! mysession.viminfo<CR>',
			"create session"
		},
    ["<C-n>"] = {
      ":NERDTreeToggle<CR>",
      "toggle nerdtree"
    },
    ["<C-j>"] = {
      "<Plug>(edgemotion-j)",
      "jump up block"
    },
    ["<C-k>"] = {
      "<Plug>(edgemotion-k)",
      "jump down block"
    },
    ["<C-Space>"] = {
      ":CtrlSpace<CR>",
      "open buffer list"
    },
    ["*"] = {"<Plug>(asterisk-*)"},
    ["#"] = {"<Plug>(asterisk-#)"},
    ["g*"] = {"<Plug>(asterisk-g*)"},
    ["g#"] = {"<Plug>(asterisk-g#)"},
    ["z*"] = {"<Plug>(asterisk-z*)"},
    ["gz*"] = {"<Plug>(asterisk-gz*)"},
    ["z#"] = {"<Plug>(asterisk-z#)"},
    ["gz#"] = {"<Plug>(asterisk-gz#)"},
  }
}
return M
-- map <C-j> <Plug>(edgemotion-j)
-- map <C-k> <Plug>(edgemotion-k)
