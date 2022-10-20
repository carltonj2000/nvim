return require('packer').startup(function(use)

  use 'wbthomason/packer.nvim'
 
  use 'lewis6991/impatient.nvim'
 
  use 'folke/tokyonight.nvim'
 
 
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {
   'akinsho/bufferline.nvim',
   tag = "v3.*",
   requires = 'kyazdani42/nvim-web-devicons'
  }
  
  use {
    'nvim-tree/nvim-tree.lua',
    requires = { 'kyazdani42/nvim-web-devicons' },
  }
  
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use 'windwp/nvim-ts-autotag'
  use 'p00f/nvim-ts-rainbow'
  use 'windwp/nvim-autopairs'

  use 'folke/which-key.nvim'
  
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

end)
