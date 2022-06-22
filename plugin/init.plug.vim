
call plug#begin('~/.config/nvim/plugged')
	" ~< LSP & Syntax HL >~"
	Plug 'nvim-treesitter/nvim-treesitter'
	Plug 'williamboman/nvim-lsp-installer'
	Plug 'neovim/nvim-lspconfig'

	" ~< Telescope >~ "
	Plug 'nvim-telescope/telescope-fzy-native.nvim'
	Plug 'nvim-telescope/telescope-symbols.nvim'
	Plug 'nvim-telescope/telescope.nvim'
	Plug 'ryanoasis/vim-devicons'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-lua/popup.nvim'

	" ~< Nvim-tree >~ "
	Plug 'kyazdani42/nvim-tree.lua'
	Plug 'kyazdani42/nvim-web-devicons'

	" ~< Code-related >~ "
	Plug 'ray-x/lsp_signature.nvim'
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-commentary'
	Plug 'windwp/nvim-ts-autotag'

	" ~< Rust >~ "
	Plug 'simrat39/rust-tools.nvim'

	" ~< Code-completion >~ "
	Plug 'hrsh7th/cmp-nvim-lsp'
	Plug 'hrsh7th/cmp-buffer'
	Plug 'hrsh7th/cmp-path'
	Plug 'hrsh7th/cmp-cmdline'
	Plug 'hrsh7th/nvim-cmp'
	Plug 'hrsh7th/cmp-vsnip'
	Plug 'hrsh7th/vim-vsnip'
	Plug 'hrsh7th/vim-vsnip-integ'
	Plug 'rafamadriz/friendly-snippets'

	" ~< Diagnostics >~ "
	Plug 'dstein64/vim-startuptime'

	" ~< Themes >~ "
	Plug 'KabbAmine/yowish.vim'
	Plug 'tyrannicaltoucan/vim-quantum'
	Plug 'sainnhe/sonokai'
	Plug 'joshdick/onedark.vim'
	Plug 'ghifarit53/tokyonight-vim'
	Plug 'rafalbromirski/vim-aurora'
	Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }

	" ~< Other >~ "
	Plug 'mhinz/vim-startify'
	Plug 'nvim-lualine/lualine.nvim'
	Plug 'sheerun/vim-polyglot'
	Plug 'AndrewRadev/splitjoin.vim'
	Plug 'folke/which-key.nvim'
	Plug 'lukas-reineke/indent-blankline.nvim'
	Plug 'NvChad/nvterm'
    Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }
	" ~< Unused >~ "
	" Plug 'mfussenegger/nvim-dap'
	" Plug 'vim-scripts/tComment'
	" Plug 'voldikss/vim-browser-search'
	" Plug 'tpope/vim-fugitive'
	" Plug 'alvan/vim-closetag'
call plug#end()
