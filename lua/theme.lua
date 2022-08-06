local cmd = vim.cmd
local o   = vim.o
local g   = vim.g

cmd("syntax on")
cmd("highlight CursorColumn ctermbg=black")
cmd("highlight CursorLine ctermbg=black")

o.termguicolors = true
o.background    = "dark"

g.tokyonight_style = 'night'
g.tokyonight_enable_italic = 1

cmd("colorscheme tokyonight")

cmd("highlight WinSeparator guibg=None")
