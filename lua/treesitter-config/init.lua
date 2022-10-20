require'nvim-treesitter.configs'.setup {
  ensure_installed = { "css", "html", "lua", "rust", "javascript", "tsx" },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
