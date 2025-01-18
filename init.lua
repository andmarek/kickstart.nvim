-- nvim/init.lua

-- Set leader keys early
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Global settings
vim.g.have_nerd_font = true

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.uv.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    '--branch=stable',
    'https://github.com/folke/lazy.nvim.git',
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
-- See: https://lazy.folke.io/configuration for the defaults
require('lazy').setup({
  spec = { import = 'plugins' }, -- imports lua/plugins/init.lua
}, {
  ui = {
    -- If no nerd font, use ascii icons
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
  change_detection = {
    -- Automatically check for config file changes
    enabled = true,
    notify = false, -- don't show notification when config changes
  },
  performance = {
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        'gzip',
        'matchit',
        'matchparen',
        'netrwPlugin',
        'tarPlugin',
        'tohtml',
        'tutor',
        'zipPlugin',
      },
    },
  },
})

-- Load core configurations
require 'core.options' -- lua/core/options.lua
require 'core.keymaps' -- lua/core/keymaps.lua
require 'core.autocmds' -- lua/core/autocmds.lua
