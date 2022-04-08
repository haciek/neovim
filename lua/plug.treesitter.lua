
local configs = require'nvim-treesitter.configs'
configs.setup {
	ensure_installed = "maintained", -- Only use parsers that are maintained
	autotag = {
		enable = true,
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
