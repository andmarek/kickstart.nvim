-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.keymap.set('n', ']q', '<cmd>cnext<CR>', { desc = 'Next quickfix item' })
vim.keymap.set('n', '[q', '<cmd>cprev<CR>', { desc = 'Previous quickfix item' })

-- Open Oil
-- requires oil plugin and opens float
-- vim.keymap.set('n', '<leader>o', ':Oil<CR>', { desc = 'Open Oil' })

-- nnoremap("<leader>e", function()
-- 	require("oil").toggle_float()
-- end)
vim.keymap.set('n', '<leader>o', require('oil').toggle_float, { desc = 'Open Oil' })

-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
