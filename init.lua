vim.opt.sessionoptions:append({"resize"})

local cnk = vim.fn.getftype("mysession.viminfo")
if cnk ~= "" then
  vim.cmd('rviminfo! mysession.viminfo')
end

local home = vim.env.HOME
local lombok = "/.local/share/nvim/mason/packages/jdtls/lombok.jar"

if vim.fn.filereadable(home .. lombok) then
  vim.env.JDTLS_JVM_ARGS="-javaagent:"
  .. home
  .. lombok
end

vim.opt.helplang = "ja,en"
vim.opt.mouse = ""
vim.opt.ruler = false
vim.opt.cursorline = ""
vim.opt.relativenumber = ""
vim.opt.cursorcolumn = ""
vim.g.ctrlp_use_migemo = 1
vim.g.laststatus = 2
vim.g.fzf_history_dir = '~/.local/share/fzf-history'
