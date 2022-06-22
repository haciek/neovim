
local configs = require'nvim-treesitter.configs'
configs.setup {
	ensure_installed = "all", -- Only use parsers that are maintained
	autotag = {
		enable = true,
		filetypes = {
			'html', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact', 'svelte', 'vue', 'tsx', 'jsx', 'rescript',
			'xml',
			'php',
			'markdown',
			'glimmer','handlebars','hbs',
			'rust',
		}
	},
	highlight = { -- enable highlighting
		enable = true,
		additional_vim_regex_highlighting = true,
	},
	indent = {
		enable = true, -- default is disabled anyways
	}
}

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
