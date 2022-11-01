vim.g.mapleader = " "
local map = vim.api.nvim_set_keymap

map("n", "<C-h>", "<C-w>h", { noremap = true, silent = false })
map("n", "<C-l>", "<C-w>l", { noremap = true, silent = false })
map("n", "<C-j>", "<C-w>j", { noremap = true, silent = false })
map("n", "<C-k>", "<C-w>k", { noremap = true, silent = false })

map("i", "jk", "<ESC>", { noremap = true, silent = false })
map("i", "kj", "<ESC>", { noremap = true, silent = false })

map("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

map("v", "<", "<gv", { noremap = true, silent = false })
map("v", ">", ">gv", { noremap = true, silent = false })

map("t", "<C-H>", "<c-\\><c-n><c-w>h", { noremap = true })
map("t", "<C-J>", "<c-\\><c-n><c-w>j", { noremap = true })
map("t", "<C-K>", "<c-\\><c-n><c-w>k", { noremap = true })
map("t", "<C-L>", "<c-\\><c-n><c-w>l", { noremap = true })
map("t", "jk", "<c-\\><c-n>", { noremap = true })
map("t", "kj", "<c-\\><c-n>", { noremap = true })

--[[
-- used for my own developed plugin at
-- https://github.com/carltonj2000/neovim_plugin_ex1
map("n", "vx ", ':lua require"treesitter-unit".select()<CR>', { noremap = true })
map("n", "dx ", ':lua require"treesitter-unit".delete()<CR>', { noremap = true })
map("n", "cx ", ':lua require"treesitter-unit".change()<CR>', { noremap = true })
--]]
