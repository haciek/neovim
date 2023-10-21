return {
   'neovim/nvim-lspconfig',
   dependencies = {
      'williamboman/nvim-lsp-installer',
   },
   keys = {
      { "gh",         "<cmd>lua vim.lsp.buf.signature_help()<CR>" },
      { "gd",         "<cmd>lua vim.lsp.buf.definition()<CR>"     },
      { "gD",         "<cmd>lua vim.lsp.buf.declaration()<CR>"    },
      { "gr",         "<cmd>lua vim.lsp.buf.references()<CR>"     },
      { "gi",         "<cmd>lua vim.lsp.buf.implementation()<CR>" },
      { "K" ,         "<cmd>lua vim.lsp.buf.hover()<CR>"          },
      { "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>"         },
   },
   config = function()
      local map = vim.api.nvim_set_keymap
      map("n", "gh", "<cmd>lua vim.lsp.buf.signature_help()<CR>", { silent = true })
      map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>",     { noremap = true, silent = true })
      map("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>",    { noremap = true, silent = true })
      map("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>",     { noremap = true, silent = true })
      map("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", { noremap = true, silent = true })
      map("n", "K" , "<cmd>lua vim.lsp.buf.hover()<CR>",          { noremap = true, silent = true })
      map("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", { noremap = true, silent = true })
      local lsp_installer = require("nvim-lsp-installer")
      lsp_installer.on_server_ready(function(server)
         local opts = {}

         if server.name == "lua_ls" or server.name == "sumeko_lua" then
            opts = {
               settings = {
                  Lua = {
                     diagnostics = {
                        globals = { 'vim' }
                     },
                     workspace = {
                        -- Make the server aware of Neovim runtime files
                        -- library = {[vim.fn.expand('$VIMRUNTIME/lua')] = true, [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true}
                     }
                  }
               }

            }
         end
         server:setup(opts)
      end)

   end,
}
