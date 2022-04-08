
call plug#begin('~/.config/nvim/plugged')

	" ~< LSP & Syntax HL >~"
	Plug 'nvim-treesitter/nvim-treesitter'
	Plug 'williamboman/nvim-lsp-installer'
	Plug 'neovim/nvim-lspconfig'

	" ~< Telescope >~ "
	Plug 'nvim-telescope/telescope.nvim'
	Plug 'nvim-telescope/telescope-symbols.nvim'
	Plug 'nvim-telescope/telescope-fzy-native.nvim'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-lua/popup.nvim'
	Plug 'ryanoasis/vim-devicons'

	" ~< Nvim-tree >~ "
	Plug 'kyazdani42/nvim-tree.lua'
	Plug 'kyazdani42/nvim-web-devicons'
	" Plug 'vifm/vifm.vim'

	" ~< Code-related >~ "
	Plug 'jiangmiao/auto-pairs'
	Plug 'ray-x/lsp_signature.nvim'
	Plug 'windwp/nvim-ts-autotag'
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-commentary'
	Plug 'alvan/vim-closetag'
	Plug 'honza/vim-snippets'

	" ~< Code-completion >~ "
	Plug 'ms-jpq/coq_nvim',			{'branch': 'coq'}
	Plug 'ms-jpq/coq.artifacts',	{'branch': 'artifacts'}
	Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}

	" ~< Other >~ "
	Plug 'nvim-lualine/lualine.nvim'
	Plug 'sheerun/vim-polyglot'
	Plug 'mhinz/vim-startify'
	Plug 'dstein64/vim-startuptime'
	Plug 'dbeniamine/cheat.sh-vim'
	Plug 'AndrewRadev/splitjoin.vim'

	" ~< Themes >~ "
	Plug 'tyrannicaltoucan/vim-quantum'
	Plug 'sainnhe/gruvbox-material'
	Plug 'sainnhe/sonokai'
	Plug 'joshdick/onedark.vim'
	Plug 'ghifarit53/tokyonight-vim'
	Plug 'rafalbromirski/vim-aurora'

	" ~< Unused >~ "
	" Plug 'neoclide/coc.nvim', { 'branch' : 'release'}
	" Plug 'neoclide/coc-highlight'
	" Plug 'junegunn/vim-easy-align'
	" Plug 'vim-scripts/tComment'
	" Plug 'habamax/vim-godot'
	" Plug 'hrsh7th/cmp-nvim-lsp'
	" Plug 'hrsh7th/cmp-buffer'
	" Plug 'hrsh7th/cmp-path'
	" Plug 'hrsh7th/cmp-cmdline'
	" Plug 'hrsh7th/nvim-cmp'
	" Plug 'hrsh7th/cmp-vsnip'
	" Plug 'hrsh7th/vim-vsnip'
	" Plug 'nvim-lua/completion-nvim'
	" Plug 'preservim/nerdtree'
	" Plug 'tpope/vim-sensible'
	" Plug 'svermeulen/vimpeccable'
	" Plug 'euclidianAce/BetterLua.vim'
	" Plug 'octol/vim-cpp-enhanced-highlight'
	" Plug 'voldikss/vim-browser-search'
	" Plug 'tpope/vim-fugitive'
	" Plug 'vim-airline/vim-airline'
call plug#end()

let g:lua_subversion = 1
