-- Setup nvim-cmp.
local cmp = require('cmp')

cmp.setup({
completion = {
	autocomplete = false, -- disable auto-completion.
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
mapping = {
['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
['<C-`>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
['<C-e>'] = cmp.mapping({
		i = cmp.mapping.abort(),
		c = cmp.mapping.close(),
	  }),
['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
},
sources = cmp.config.sources({
	  { name = 'nvim_lsp' },
	  { name = 'vsnip' }, -- For vsnip users.
	  -- { name = 'luasnip' }, -- For luasnip users.
	  -- { name = 'ultisnips' }, -- For ultisnips users.
	  -- { name = 'snippy' }, -- For snippy users.
	}, {
	  { name = 'buffer' },
	})
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
	sources = {
	  { name = 'buffer' }
	}
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
	sources = cmp.config.sources({
	  { name = 'path' }
	}, {
	  { name = 'cmdline' }
	})
})

_G.vimrc = _G.vimrc or {}
_G.vimrc.cmp = _G.vimrc.cmp or {}
_G.vimrc.cmp.on_text_changed = function()
	local cursor = vim.api.nvim_win_get_cursor(0)
	local line = vim.api.nvim_get_current_line()
	local before = string.sub(line, 1, cursor[2] + 1)
	if before:match('%s*$') then
		cmp.complete() -- Trigger completion only if the cursor is placed at the end of line.
		end
end
vim.cmd([[
augroup vimrc
autocmd
autocmd TextChanged,TextChangedI,TextChangedP * call luaeval('vimrc.cmp.on_text_changed()')
augroup END
]])
-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
require('lspconfig')['lspconfig'].setup {
	capabilities = capabilities
  }
