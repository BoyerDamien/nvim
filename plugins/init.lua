
-- Plugins manager
require('packer').startup(function ()

	-- Packer package manager
	use 'wbthomason/packer.nvim'

	-- File explorer
	use {
		{'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons'},
		'kevinhwang91/rnvimr'
	}

	-- Telescope
	use {
		'nvim-telescope/telescope.nvim',
		requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
	}

	-- Terminal
	use {
		"akinsho/nvim-toggleterm.lua"
	}

	-- LspConfig
	use {
		'neovim/nvim-lspconfig',
		'windwp/nvim-autopairs',
		'hrsh7th/nvim-compe',
		'hrsh7th/vim-vsnip',
		'hrsh7th/vim-vsnip-integ',
		'ray-x/lsp_signature.nvim',
	}

	-- Comments
	use {
		'terrortylor/nvim-comment'
	}

	-- UI
	use {
		'hoob3rt/lualine.nvim',
		'ryanoasis/vim-devicons',
		'akinsho/nvim-bufferline.lua',
		{'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'},
		'folke/tokyonight.nvim',
		'norcalli/nvim-colorizer.lua'
	}

	-- 42
	use {
		'pbondoer/vim-42header'
	}

	-- Debugging
	use {
		"rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"}
	}


end)

-- Plugins settings
require("plugins/setup")

