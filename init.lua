local cnk = getftype("myusession.viminfo")
if cnk != "" then
  vim.cmd('rviminfo! mysession.viminfo')
end
vim.opt.helplang = "ja,en"
vim.opt.cursorline = ""
vim.opt.relativenumber = ""
vim.opt.cursorcolumn = ""
vim.g.ctrlp_use_migemo = 1
vim.opt.sessionoptions:append({resize})
vim.opt.mouse = ""
