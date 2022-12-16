vim.opt.sessionoptions:append({"resize"})
local cnk = vim.fn.getftype("mysession.viminfo")
if cnk ~= "" then
  vim.cmd('rviminfo! mysession.viminfo')
end

vim.opt.helplang = "ja,en"
vim.opt.mouse = ""
vim.opt.ruler = false
vim.opt.cursorline = ""
vim.opt.relativenumber = ""
vim.opt.cursorcolumn = ""
vim.g.ctrlp_use_migemo = 1
vim.g.laststatus = 2
