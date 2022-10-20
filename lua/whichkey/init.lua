local wk = require("which-key")
local mappings = {
  q = {":q<CR>", "Quit"},
  Q = {":wq<CR>", "Save And Quit"},
  w = {":w<CR>", "Save"},
  x = {":bdelete<CR>", "Close Buffer"},
  f = {":Telescope find_files<CR>", "Find Files"},
  g = {":Telescope live_grep<CR>", "Find Words"}
}
local opts = {
  prefix = '<leader>'
}
wk.register(mappings, opts)
