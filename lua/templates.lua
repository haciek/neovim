vim.cmd([[
   autocmd! BufNewFile *.cpp 0r $XDG_CONFIG_HOME/nvim/templates/template.cpp
   autocmd! BufNewFile *.c$ 0r $XDG_CONFIG_HOME/nvim/templates/template.c
   autocmd! BufNewFile *.h 0r $XDG_CONFIG_HOME/nvim/templates/template.h
   autocmd! BufNewFile Makefile 0r $XDG_CONFIG_HOME/nvim/templates/Makefile
   autocmd! BufNewFile *.html 0r $XDG_CONFIG_HOME/nvim/templates/template.html
   autocmd! BufNewFile *.tex 0r $XDG_CONFIG_HOME/nvim/templates/template.tex
]])
