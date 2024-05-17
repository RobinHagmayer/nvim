-- Highlight when yanking (copying) text
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Set the height of the help window to 75% of the total window height
vim.api.nvim_create_autocmd('BufWinEnter', {
  pattern = '*',
  callback = function()
    if vim.bo.filetype == 'help' then
      local win_id = vim.api.nvim_get_current_win()
      local current_win_height = vim.api.nvim_win_get_height(win_id)
      local new_win_height = math.floor(current_win_height * 1.5)
      vim.api.nvim_win_set_height(win_id, new_win_height)
    end
  end,
})
