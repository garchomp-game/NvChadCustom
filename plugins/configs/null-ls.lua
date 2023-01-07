local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {
  -- format html and markdown
  b.formatting.prettierd.with { filetypes = { "html", "yaml", "markdown" } },
  -- markdown diagnostic
  b.diagnostics.markdownlint,
  -- Lua formatting
  b.formatting.stylua,
}

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local on_attach = function(client, bufnr)
  if client.supports_method "textDocument/formatting" then
    vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
  end
end

null_ls.setup {
  debug = true,
  sources = sources,
  on_attach = on_attach,
}
