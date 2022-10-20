local t = require('telescope.builtin');

vim.keymap.set('n', 'ff', t.find_files, {})

local map = vim.api.nvim_set_keymap

-- map('n', '<leader>ff', 'require
