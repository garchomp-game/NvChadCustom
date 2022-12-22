---@diagnostic disable: undefined-global

-- The `findup` and `lsp` source are enabled by default (at the moment).
require('gtd').setup({
  sources = {
    { name = 'lsp' },
    { name = 'findfile' },
    {
      name = 'walk',
      option = {
        ignore_patterns = {
          '/node_modules',
          '/.git',
          '/vendor'
        }
      }
    },
  },
  get_buffer_path = function()
    return vim.fn['vimrc#get_buffer_path']()
  end,
  on_location = function(context, location)
    local row = location.targetSelectionRange.start.line + 1
    local col = location.targetSelectionRange.start.character + 1
    if row == 1 and col == 1 then
---@diagnostic disable-next-line: cast-local-type
      row = nil
---@diagnostic disable-next-line: cast-local-type
      col = nil
    end
    vim.fn['vimrc#open'](context.command, {
      filename = vim.uri_to_fname(location.targetUri),
      lnum = row,
      col = col
    }, vim.fn.winnr())
  end,
  on_locations = function(context, locations)
    local items = {}
    for i, location in ipairs(locations) do
      table.insert(items, {
        id = i,
        title = vim.uri_to_fname(location.targetUri),
        filename = vim.uri_to_fname(location.targetUri),
        lnum = location.targetSelectionRange.start.line + 1,
        col = location.targetSelectionRange.start.character + 1,
      })
    end
    vim.fn['candle#start']({ item = items, }, {
      action = {
        default = 'edit'
      }
    })
  end
})
vim.keymap.set('n', 'gf<CR>', function()
  require('gtd').exec({ command = 'edit' })
end)
vim.keymap.set('n', 'gfs', function()
  require('gtd').exec({ command = 'split' })
end)
vim.keymap.set('n', 'gfv', function()
  require('gtd').exec({ command = 'vsplit' })
end)
