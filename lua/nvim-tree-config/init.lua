require('nvim-tree').setup({
  open_on_setup = true,
  view = {
    side = "left"
  },
  actions = {
    open_file = {
      quit_on_open = true
    }
  },
  filters = {
    custom = { "^.git$" }
  },
  renderer = {
    indent_markers = {
      enable = true,
      inline_arrows = true,
      icons = {
        corner = "└",
        edge = "│",
        item = "│",
        bottom = "─",
        none = " ",
      },
    }
  }
})

