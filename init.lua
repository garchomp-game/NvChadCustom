vim.opt.mouse = ""
vim.opt.helplang = "ja,en"
vim.opt.cursorline = ""
vim.opt.relativenumber = ""
vim.opt.cursorcolumn = ""
vim.g.ctrlp_use_migemo = 1
vim.g.laststatus = 2
vim.opt.sessionoptions:append({resize})
local cnk = getftype("myusession.viminfo")
if cnk ~= "" then
  vim.cmd('rviminfo! mysession.viminfo')
end
