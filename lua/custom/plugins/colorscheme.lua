return {
  -- Colorscheme plugins
  {
    'ellisonleao/gruvbox.nvim',
    priority = 1000,
  },
  {
    'folke/tokyonight.nvim',
    priority = 1000,
  },
  {
    'EdenEast/nightfox.nvim',
    priority = 1000,
  },
  {
    'catppuccin/nvim',
    config = function()
      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles
      vim.cmd.colorscheme 'catppuccin-mocha'
      -- Configure highlights
      vim.cmd.hi 'Comment gui=none'
    end,
    name = 'catppuccin',
    priority = 1000,
  },
  {
    'rebelot/kanagawa.nvim',
    priority = 1000,
  },
}
