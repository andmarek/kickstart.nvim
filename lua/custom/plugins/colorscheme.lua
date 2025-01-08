return {
  {
    'catppuccin/nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('catppuccin').setup {
        integrations = {
          cmp = true,
          gitsigns = true,
          harpoon = true,
          treesitter = true,
          telescope = true,
          native_lsp = { enabled = true },
          mason = true,
        },
      }
      vim.cmd.colorscheme 'catppuccin-mocha'
    end,
  },
}
