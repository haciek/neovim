local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
-- My plugins here
  use "wbthomason/packer.nvim" -- Have packer manage itself

  -- " ~< LSP & Syntax HL >~ "
  use 'nvim-treesitter/nvim-treesitter'
  use 'williamboman/nvim-lsp-installer'
  use 'neovim/nvim-lspconfig'

  -- " ~< Telescope >~ "
  use 'nvim-telescope/telescope-fzy-native.nvim'
  use 'nvim-telescope/telescope-symbols.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'ryanoasis/vim-devicons'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/popup.nvim'

  -- " ~< Nvim-tree >~ "
  use 'kyazdani42/nvim-tree.lua'
  use 'kyazdani42/nvim-web-devicons'

  -- " ~< Code-related >~ "
  use 'ray-x/lsp_signature.nvim'
  use 'tpope/vim-surround'
  use 'tpope/vim-commentary'
  use 'windwp/nvim-ts-autotag'

  -- " ~< Rust >~ "
  use 'simrat39/rust-tools.nvim'

  -- " ~< Code-completion >~ "
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'
  use 'rafamadriz/friendly-snippets'

  -- " ~< Diagnostics >~ "
  use 'dstein64/vim-startuptime'

  -- " ~< Themes >~ "
  use 'KabbAmine/yowish.vim'
  use 'tyrannicaltoucan/vim-quantum'
  use 'sainnhe/sonokai'
  use 'joshdick/onedark.vim'
  use 'ghifarit53/tokyonight-vim'
  use 'rafalbromirski/vim-aurora'

  -- " ~< Other >~ "
  use 'mhinz/vim-startify'
  use 'nvim-lualine/lualine.nvim'
  use 'sheerun/vim-polyglot'
  use 'AndrewRadev/splitjoin.vim'
  use 'folke/which-key.nvim'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'NvChad/nvterm'

  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
