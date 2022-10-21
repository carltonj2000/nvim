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

  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/vim-vsnip'
  use 'onsails/lspkind.nvim'
  -- sinppet install
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'rafamadriz/friendly-snippets'

  use 'norcalli/nvim-colorizer.lua'

  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup{
        current_line_blame = true 
      }
    end
  }

end)
