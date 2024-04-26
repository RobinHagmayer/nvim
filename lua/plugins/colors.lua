return {
  {
    'folke/tokyonight.nvim',
    -- priority = 1000,
    -- init = function()
    --   vim.cmd.colorscheme 'tokyonight-night'
    -- end,
  },
  {
    'HoNamDuong/hybrid.nvim',
    priority = 1000,
    init = function()
      vim.cmd.colorscheme 'hybrid'
    end,
    opts = {},
  },
}
