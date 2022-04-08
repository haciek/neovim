local set = vim.opt
local api = vim.api

set.hidden = true
set.encoding = "utf-8"
set.updatetime = 300
set.spelllang = "en_us"
set.wildmode = "longest,full"
set.number = true
set.relativenumber = true
set.numberwidth = 5
set.expandtab = false
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
set.list = true
set.listchars = "tab:│ ,space:·"
set.lcs = "tab:│ ,space:·"
set.sidescrolloff = 4
set.scrolloff = 4
set.cmdheight = 4
set.writebackup = false
set.backup = false
set.splitbelow = true
set.splitright = true
set.autoindent = true
set.cursorline = true
set.cursorcolumn = true
set.ignorecase = true
set.smartcase = true
set.hlsearch = false
set.incsearch = true
set.wrap = false

api.nvim_command('\
	set shortmess+=c\
	set clipboard+=unnamedplus\
	')
