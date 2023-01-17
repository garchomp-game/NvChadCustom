vim.opt.sessionoptions:append({"resize"})

local home = vim.env.HOME
local lombok = "/.local/share/nvim/mason/packages/jdtls/lombok.jar"
local viminfo = "mysession.viminfo"

if vim.fn.getftype(viminfo) ~= "" then
  vim.cmd("rviminfo! " .. viminfo)
end

if vim.fn.filereadable(home .. lombok) then
  vim.env.JDTLS_JVM_ARGS="-javaagent:"
  .. home
  .. lombok
end

vim.opt.helplang = "ja,en"
vim.opt.number = true
vim.opt.mouse = ""
vim.opt.ruler = false
vim.opt.cursorline = ""
vim.opt.relativenumber = ""
vim.opt.cursorcolumn = ""
vim.opt.spelloptions:append({"camel"})
vim.opt.expandtab = false
vim.opt.tabstop = 2
vim.g.ctrlp_use_migemo = 1
vim.g.laststatus = 2
vim.g.fzf_history_dir = '~/.local/share/fzf-history'
