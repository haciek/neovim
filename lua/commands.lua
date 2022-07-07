local autocmd = vim.api.nvim_create_autocmd
local cmd = vim.api.nvim_create_user_command

cmd("Reload", "so $XDG_CONFIG_HOME/nvim/init.lua",                      { bang = true })
cmd("PreviewPdf", "!zathura $(echo % | sed 's/\\..*$/.pdf/')& disown",  { bang = true })
cmd("Format", "lua vim.lsp.buf.format(nil, 100)",                       { bang = true })

autocmd("InsertEnter",							    { command = "norm zz" })
autocmd("BufWritePost",								{ command = "%s/\\s\\+$//e" })
autocmd("BufEnter",									{ command = "silent! lcd %:p:h" })
autocmd("BufWritePost *.tex",						{ command = "silent !/usr/bin/pdflatex %" })
autocmd("FileType html,rust,typescript,javascript",	{ command = "setlocal omnifunc=htmlcomplete#CompleteTags" })
autocmd("FileType rust",							{ command = "setlocal noexpandtab shiftwidth=3 tabstop=3 softtabstop=3" })
autocmd("FileType python",							{ command = "setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4 nolist" })
autocmd("FileType lua",								{ command = "setlocal expandtab shiftwidth=3 tabstop=4 softtabstop=3 nolist" })
autocmd("FileType vim",								{ command = "setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4 nolist" })

autocmd("BufNewFile *.cpp",    { command = "0r $XDG_CONFIG_HOME/nvim/templates/template.cpp" })
autocmd("BufNewFile *.c$",     { command = "0r $XDG_CONFIG_HOME/nvim/templates/template.c" })
autocmd("BufNewFile *.h",      { command = "0r $XDG_CONFIG_HOME/nvim/templates/template.h" })
autocmd("BufNewFile Makefile", { command = "0r $XDG_CONFIG_HOME/nvim/templates/Makefile" })
autocmd("BufNewFile *.html",   { command = "0r $XDG_CONFIG_HOME/nvim/templates/template.html" })
autocmd("BufNewFile *.tex",    { command = "0r $XDG_CONFIG_HOME/nvim/templates/template.tex" })
