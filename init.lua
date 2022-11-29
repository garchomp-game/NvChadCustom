vim.opt.helplang = "ja,en"
vim.opt.mouse = ""
vim.opt.cursorline = ""
vim.opt.relativenumber = ""
vim.opt.cursorcolumn = ""
vim.opt.sessionoptions:append({resize})
local cnk = getftype("myusession.viminfo")
if cnk != "" then
  vim.cmd('rviminfo! mysession.viminfo')
end
