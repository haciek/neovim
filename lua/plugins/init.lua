return {
   'tpope/vim-surround',
   'tpope/vim-commentary',
   'windwp/nvim-ts-autotag',
   'lukas-reineke/indent-blankline.nvim',
   -- -- " ~< Themes >~ "
   {
      --"folke/tokyonight.nvim",
      "catppuccin/nvim",
      name = "catppuccin",
      --lazy = false, -- make sure we load this during startup if it is your main colorscheme
      priority = 1000, -- make sure to load this before all the other start plugins
      config = function()
         vim.cmd("syntax on")
         vim.cmd("highlight CursorColumn ctermbg=black")
         vim.cmd("highlight CursorLine ctermbg=black")
         vim.o.termguicolors = true
         --vim.g.tokyonight_enable_italic = 1
         -- vim.cmd([[colorscheme tokyonight-night]])
         vim.cmd([[colorscheme catppuccin-mocha]])
      end,
   },
   'KabbAmine/yowish.vim',
   'tyrannicaltoucan/vim-quantum',
   'sainnhe/sonokai',
   'joshdick/onedark.vim',
   'rafalbromirski/vim-aurora',
   -- {
   --    "iamcco/markdown-preview.nvim",
   --    build = function() vim.fn["mkdp#util#install"]() end,
   -- },
}

