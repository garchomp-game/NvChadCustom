local M = {}
M.custom = {
  n = {
    ["<M-o>"] = {
      '<cmd> :CodeActionMenu<CR>',
      "open code action menu"
    },
  }
}
return M
