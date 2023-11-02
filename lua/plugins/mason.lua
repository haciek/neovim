-- return {
--    "williamboman/mason.nvim"

--    lazy=false,
--    config = function()
--       require("mason").setup()
--    end
-- }
return {
   "williamboman/mason.nvim",
   "williamboman/mason-lspconfig.nvim",
   "neovim/nvim-lspconfig",

   config=function()
      require("mason").setup()
      require("mason-lspconfig").setup {
         ensure_installed = { "lua_ls", "rust_analyzer", "pyright", "clangd" },
      }
      require("nvim-lspconfig").setup()

      -- -- After setting up mason-lspconfig you may set up servers via lspconfig
      -- require("lspconfig").lua_ls.setup {}
      -- require("lspconfig").rust_analyzer.setup {}
      -- require("lspconfig").clangd.setup {}
      -- require("lspconfig").pyright.setup {}
      -- -- ...
   end,
}

-- return {
--    "williamboman/mason.nvim",
--    "williamboman/mason-lspconfig.nvim",
--    "neovim/nvim-lspconfig",
--    config=function()
--       local lsp_cmds = vim.api.nvim_create_augroup('lsp_cmds', {clear = true})

--       vim.api.nvim_create_autocmd('LspAttach', {
--          group = lsp_cmds,
--          desc = 'LSP actions',
--          callback = function()
--             local bufmap = function(mode, lhs, rhs)
--                vim.keymap.set(mode, lhs, rhs, {buffer = true})
--             end

--             bufmap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>')
--             bufmap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>')
--             bufmap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>')
--             bufmap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>')
--             bufmap('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>')
--             bufmap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>')
--             bufmap('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>')
--             bufmap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<cr>')
--             bufmap({'n', 'x'}, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>')
--             bufmap('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>')
--             bufmap('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>')
--             bufmap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>')
--             bufmap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>')
--          end
--       })

--       local lspconfig = require('lspconfig')
--       local lsp_defaults = lspconfig.util.default_config

--       lsp_defaults.capabilities = vim.tbl_deep_extend(
--       'force',
--       lsp_defaults.capabilities,
--       require('cmp_nvim_lsp').default_capabilities()
--       )

--       require('mason').setup({})
--       require('mason-lspconfig').setup({
--          ensure_installed = {
--             'tsserver',
--             'rust_analyzer',
--             'clangd',
--             'pylsp',
--             'eslint',
--             'html',
--             'cssls'
--          },
--          handlers = {
--             function(server)
--                lspconfig[server].setup({})
--             end,
--             ['tsserver'] = function()
--                lspconfig.tsserver.setup({
--                   settings = {
--                      completions = {
--                         completeFunctionCalls = true
--                      }
--                   }
--                })
--             end
--          }
--       })
--    end

-- }
