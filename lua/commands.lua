vim.cmd([[
   autocmd! InsertEnter * norm zz
   autocmd! BufWritePost * %s/\s\+$//e
   autocmd! BufEnter * silent! lcd %:p:h
   autocmd! BufWritePost *.tex silent !/usr/bin/pdflatex %
   autocmd! FileType html,rust,typescript,javascript set omnifunc=htmlcomplete#CompleteTags
   autocmd! FileType python set expandtab shiftwidth=4 tabstop=4 softtabstop=4 nolist
   autocmd! FileType lua set expandtab shiftwidth=3 tabstop=4 softtabstop=3 nolist
   autocmd! FileType vim set expandtab shiftwidth=4 tabstop=4 softtabstop=4 nolist
   autocmd! FileType rust set noexpandtab shiftwidth=3 tabstop=3 softtabstop=3


   command! Reload :so $XDG_CONFIG_HOME/nvim/init.lua
   command! PreviewPdf !zathura $(echo % | sed 's/\..*$/.pdf/')& disown
   command! Format lua vim.lsp.buf.format(nil, 100)
]])
