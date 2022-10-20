local wk = require("which-key")
local mappings = {
  q = {":q<CR>", "Quit"},
  Q = {":wq<CR>", "Save And Quit"},
  w = {":w<CR>", "Save"},
  x = {":bdelete<CR>", "Close Buffer"}
}
local opts = {
  prefix = '<leader>'
}
wk.register(mappings, opts)
