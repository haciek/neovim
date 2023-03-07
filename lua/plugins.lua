local fn = vim.fn

-- Automatically install packer
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
   vim.fn.system({
      "git",
      "clone",
      "--filter=blob:none",
      "https://github.com/folke/lazy.nvim.git",
      "--branch=stable", -- latest stable release
      lazypath,
   })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = ' ' -- Make sure to set `mapleader` before lazy so your mappings are correct
vim.g.maplocalleader = ' '

require('lazy').setup('plugins')

-- return packer.startup(function(use)
--   -- My plugins here
--   use "wbthomason/packer.nvim" -- Have packer manage itself

--   -- " ~< LSP & Syntax HL >~ "
--   use 'nvim-treesitter/nvim-treesitter'
--   use 'williamboman/nvim-lsp-installer'
--   use 'neovim/nvim-lspconfig'

--   -- " ~< Telescope >~ "
--   use 'nvim-telescope/telescope-fzy-native.nvim'
--   use 'nvim-telescope/telescope-symbols.nvim'
--   use 'nvim-telescope/telescope.nvim'
--   -- use 'ryanoasis/vim-devicons'
--   use 'nvim-lua/plenary.nvim'
--   use 'nvim-lua/popup.nvim'

--   -- " ~< Nvim-tree >~ "
--   use 'kyazdani42/nvim-tree.lua'
--   use 'kyazdani42/nvim-web-devicons'

--   -- " ~< Code-related >~ "
--   use 'ray-x/lsp_signature.nvim'
--   use 'tpope/vim-surround'
--   use 'tpope/vim-commentary'
--   use 'windwp/nvim-ts-autotag'
--   use 'pechorin/any-jump.vim'
--   use 'rhysd/vim-clang-format'
--   -- " ~< Rust >~ "
--   use 'simrat39/rust-tools.nvim'
--   use 'jose-elias-alvarez/typescript.nvim'
--   -- " ~< Code-completion >~ "
--   use 'hrsh7th/cmp-nvim-lsp'
--   use 'hrsh7th/cmp-buffer'
--   use 'hrsh7th/cmp-path'
--   use 'hrsh7th/cmp-cmdline'
--   use 'hrsh7th/nvim-cmp'
--   use 'hrsh7th/cmp-vsnip'
--   use 'hrsh7th/vim-vsnip'
--   use 'hrsh7th/vim-vsnip-integ'
--   use 'rafamadriz/friendly-snippets'

--   -- " ~< Diagnostics >~ "
--   use 'dstein64/vim-startuptime'

--   -- " ~< Other >~ "
--   -- use 'mhinz/vim-startify'
--   use { 'goolord/alpha-nvim',
--     requires = { 'kyazdani42/nvim-web-devicons' },
--     config = function () require'alpha'.setup(require'alpha.themes.dashboard'.config) end
--   }
--   -- install without yarn or npm
--   use({
--       "iamcco/markdown-preview.nvim",
--       run = function() vim.fn["mkdp#util#install"]() end,
--   })
--   -- use { 'euclio/vim-markdown-composer',
--   --     run = 'cargo build --release',
--   --     config = function ()
--   --         vim.g.markdown_composer_external_renderer='pandoc -f markdown -t html'
--   --         vim.g.markdown_composer_autostart = 0
--   --     end
--   -- }


--   -- use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
--   use 'nvim-lualine/lualine.nvim'
--   use 'sheerun/vim-polyglot'
--   -- use 'AndrewRadev/splitjoin.vim'
--   -- use 'folke/which-key.nvim'
--   use 'lukas-reineke/indent-blankline.nvim'
--   -- use 'NvChad/nvterm'

--   -- " ~< Themes >~ "
--   use 'ghifarit53/tokyonight-vim'
--   use 'KabbAmine/yowish.vim'
--   use 'tyrannicaltoucan/vim-quantum'
--   use 'sainnhe/sonokai'
--   use 'joshdick/onedark.vim'
--   use 'rafalbromirski/vim-aurora'

--   if PACKER_BOOTSTRAP then
--     require("packer").sync()
--   end
-- end)
