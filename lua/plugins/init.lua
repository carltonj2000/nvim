return require('packer').startup(function(use)

  use 'wbthomason/packer.nvim'
  use 'lewis6991/impatient.nvim'
  use 'folke/tokyonight.nvim'
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'folke/which-key.nvim'

end)
