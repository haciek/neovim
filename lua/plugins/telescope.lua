return {
   'nvim-telescope/telescope.nvim',
   lazy = true,
   cmd = {
      'Telescope',
   },
   keys = {
      { '<leader>.', '<cmd>Telescope oldfiles<CR>',                  desc = 'Telescope'},
      { '<leader>f', '<cmd>Telescope find_files<CR>',                desc = 'Telescope'},
      { '<leader>b', '<cmd>Telescope buffers<CR>',                   desc = 'Telescope'},
      { '<leader>g', '<cmd>Telescope current_buffer_fuzzy_find<CR>', desc = 'Telescope'},
      { '<leader>m', '<cmd>Telescope man_pages<CR>',                 desc = 'Telescope'},
      { '<leader>s', '<cmd>Telescope symbols<CR>',                   desc = 'Telescope'},
   },
   dependencies = {
      'kyazdani42/nvim-web-devicons',
      'nvim-telescope/telescope-fzy-native.nvim',
      'nvim-telescope/telescope-symbols.nvim',
      'nvim-lua/plenary.nvim',
      'nvim-lua/popup.nvim',
   },
   config = function()
      local map = vim.api.nvim_set_keymap
      map('n', '<leader>.', '<cmd>Telescope oldfiles<CR>',                  {noremap = true})
      map('n', '<leader>f', '<cmd>Telescope find_files<CR>',                {noremap = true})
      map('n', '<leader>b', '<cmd>Telescope buffers<CR>',                   {noremap = true})
      map('n', '<leader>g', '<cmd>Telescope current_buffer_fuzzy_find<CR>', {noremap = true})
      map('n', '<leader>m', '<cmd>Telescope man_pages<CR>',                 {noremap = true})
      map('n', '<leader>s', '<cmd>Telescope symbols<CR>',                   {noremap = true})

      local actions = require('telescope.actions')
      require('telescope').load_extension('fzy_native')
      require('telescope').setup{

         defaults = {
            preview = true,
            -- layout_strategy = 'bottom_pane',
            -- layout_config = { height = 0.35 },
            layout_strategy = 'horizontal',
            layout_config = { height = 0.9 },
            file_sorter = require('telescope.sorters').get_fzy_sorter,
            prompt_prefix = ' 🔍:',
            find_command='rg,--ignore,--hidden,--files',
            color_devicons = true,
            file_previewer = require('telescope.previewers').vim_buffer_cat.new,
            grep_previewer = require('telescope.previewers').vim_buffer_vimgrep.new,
            qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,
            mappings = {
               i = {
                  ["<C-q>"] = actions.send_to_qflist,
               },
            }
         },
         pickers = {
         },
         extensions = {
            fzy_native = {
               override_generic_sorter = true,
               override_file_sorter = true,
            }
         }
      }
   end,
}


