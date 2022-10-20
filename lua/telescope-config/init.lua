local actions = require('telescope.actions');

require('telescope').setup{
  defaults = {
    mappings = {
      i = { ["<C-h>"] = "which_key" }
    }
  },
  pickers = { },
  extensions = { }
}

