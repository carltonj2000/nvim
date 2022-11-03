local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	use("lewis6991/impatient.nvim")

	use({
		"folke/tokyonight.nvim",
		config = "vim.cmd([[colorscheme tokyonight]])",
	})

	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
		event = "BufWinEnter",
		config = "require('lualine-config')",
	})

	use({
		"akinsho/bufferline.nvim",
		tag = "v3.*",
		requires = "kyazdani42/nvim-web-devicons",
		event = "BufWinEnter",
		config = "require('bufferline-config')",
	})

	use({
		"nvim-tree/nvim-tree.lua",
		requires = { "kyazdani42/nvim-web-devicons" },
		cmd = "NvimTreeToggle",
		config = "require('nvim-tree-config')",
	})

	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
		event = "BufWinEnter",
		config = "require('treesitter-config')",
	})

	use({
		"windwp/nvim-ts-autotag",
		event = "InsertEnter",
		after = "nvim-treesitter",
	})

	use({
		"p00f/nvim-ts-rainbow",
		after = "nvim-treesitter",
	})

	use({
		"windwp/nvim-autopairs",
		config = "require('autopairs-config')",
		after = "nvim-cmp",
	})

	use({
		"nvim-treesitter/playground",
		after = "nvim-treesitter",
	})

	use({
		"folke/which-key.nvim",
		event = "BufWinEnter",
		config = "require('whichkey-config')",
	})

	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
		cmd = "Telescope",
		config = "require('telescope-config')",
	})

	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	})
	use({ "neovim/nvim-lspconfig", config = "require('lsp')" })
	use({ "hrsh7th/cmp-nvim-lsp" })
	use({ "hrsh7th/cmp-buffer" })
	use({ "hrsh7th/cmp-path" })
	use({ "hrsh7th/cmp-cmdline" })
	use({ "hrsh7th/nvim-cmp" })
	use({ "hrsh7th/vim-vsnip" })
	use({ "onsails/lspkind.nvim" })
	-- sinppet install
	use("L3MON4D3/LuaSnip")
	use({ "saadparwaiz1/cmp_luasnip" })
	use("rafamadriz/friendly-snippets")

	use({
		"norcalli/nvim-colorizer.lua",
		config = "require('colorizer-config')",
		event = "BufRead",
	})

	use({
		"lewis6991/gitsigns.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
		config = function()
			require("gitsigns").setup()
			--require("gitsigns").setup({current_line_blame = true})
		end,
	})

	use({
		"lukas-reineke/indent-blankline.nvim",
		config = "require('blankline-config')",
		event = "BufRead",
	})
	use({
		"jose-elias-alvarez/null-ls.nvim",
		config = "require('null-ls-config')",
	})

	use({
		"akinsho/toggleterm.nvim",
		config = "require('toggleterm-config')",
	})
	use({
		"terrortylor/nvim-comment",
		config = "require('comment-config')",
		cmd = "CommentToggle",
	})
  
  if packer_bootstrap then
    require('packer').sync()
  end

end)
