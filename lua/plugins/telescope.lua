return {
  'nvim-telescope/telescope.nvim',
  event = 'VimEnter',
  branch = '0.1.x',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local builtin = require 'telescope.builtin'

    vim.keymap.set('n', '<leader>u', function()
      builtin.colorscheme { enable_preview = true }
    end, { desc = 'Select Color Scheme' })
  end,
}
