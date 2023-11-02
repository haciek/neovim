
return {
   'hrsh7th/nvim-cmp',
   dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'hrsh7th/cmp-vsnip',
      'hrsh7th/vim-vsnip',
      'hrsh7th/vim-vsnip-integ',
      'rafamadriz/friendly-snippets',
   },
   config = function()
      local has_words_before = function()
         local line, col = unpack(vim.api.nvim_win_get_cursor(0))
         return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
      end

      local feedkey = function(key, mode)
         vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
      end

      local cmp = require'cmp'

      cmp.setup({
         formatting = {
            format = function(entry, vim_item)
               vim_item.menu = entry:get_completion_item().detail
               return vim_item
            end
         },
         snippet = {
            -- REQUIRED - you must specify a snippet engine
            expand = function(args)
               vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
               -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
               -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
               -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
            end,
         },
         window = {
            completion = cmp.config.window.bordered(),
            documentation = cmp.config.window.bordered(),
         },
         mapping = {
            ["<Tab>"] = cmp.mapping(function(fallback)
               if cmp.visible() then
                  cmp.select_next_item()
               elseif vim.fn["vsnip#available"](1) == 1 then
                  feedkey("<Plug>(vsnip-expand-or-jump)", "")
               elseif has_words_before() then
                  cmp.complete()
               else
                  fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
               end
            end, { "i", "s" }),

            ["<S-Tab>"] = cmp.mapping(function()
               if cmp.visible() then
                  cmp.select_prev_item()
               elseif vim.fn["vsnip#jumpable"](-1) == 1 then
                  feedkey("<Plug>(vsnip-jump-prev)", "")
               end
            end, { "i", "s" }),
            ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
            ['<C-Space>'] = cmp.mapping.complete(),
         },
         sources = cmp.config.sources({
            { name = 'nvim_lsp' },
            { name = 'vsnip' }, -- For vsnip users.
            { name = 'luasnip' }, -- For luasnip users.
            -- { name = 'ultisnips' }, -- For ultisnips users.
            -- { name = 'snippy' }, -- For snippy users.
         }, {
            { name = 'buffer' },
         })
      })

      -- Set configuration for specific filetype.
      cmp.setup.filetype('gitcommit', {
         sources = cmp.config.sources({
            { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
         }, {
            { name = 'buffer' },
         })
      })

      -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
      cmp.setup.cmdline('/', {
         mapping = cmp.mapping.preset.cmdline(),
         sources = {
            { name = 'buffer' }
         }
      })

      -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
      cmp.setup.cmdline(':', {
         mapping = cmp.mapping.preset.cmdline(),
         sources = cmp.config.sources({
            { name = 'path' }
         }, {
            { name = 'cmdline' }
         })
      })

      -- Setup lspconfig.
      local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
      -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
      require('lspconfig')['rust_analyzer'].setup {
         capabilities = capabilities
      }
      require('lspconfig')['clangd'].setup {
         capabilities = capabilities
      }
      require('lspconfig')['tsserver'].setup {
         capabilities = capabilities
      }
      require('lspconfig')['pyright'].setup {
         capabilities = capabilities
      }

      require('lspconfig')['html'].setup {
         capabilities = capabilities
      }
      require('lspconfig')['eslint'].setup {
         capabilities = capabilities
      }
   end
}