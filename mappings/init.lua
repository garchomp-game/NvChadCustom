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
      '<cmd> :CodeActionMenu<CR>',
      "open code action menu"
    },
		["<M-s>"] = {
			'<cmd> :mksession! mysession.vim<CR>'
        .. ':wviminfo! mysession.viminfo<CR>',
			"create session"
		},
  }
}
return M
