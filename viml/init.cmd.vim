" ~< autocomads >~

" recompiling dwm & dwmblocks
autocmd! BufWritePost config.def.h !rm -f $(pwd)/config.h && sudo make install
autocmd! BufWritePost blocks.def.h !rm -f $(pwd)/blocks.h && sudo make install && pkill -x dwmblocks && dwmblocks & disown
" restarting sxhkd after changing it
autocmd! BufWritePost sxhkdrc !pkill -x sxhkd && sxhkd & disown
" center on insert
autocmd! InsertEnter * norm zz
" remove trailing whitespaces
autocmd! BufWritePost * %s/\s\+$//e
" auto cd
autocmd! BufEnter * silent! lcd %:p:h
" formating latex to pdf
autocmd! BufWritePost *.tex silent !/usr/bin/pdflatex %
" html tag completion
autocmd! FileType html,rust,typescript,javascript set omnifunc=htmlcomplete#CompleteTags

autocmd! FileType python set expandtab shiftwidth=4 tabstop=4 softtabstop=4 nolist
autocmd! FileType lua set expandtab shiftwidth=3 tabstop=4 softtabstop=3 nolist
autocmd! FileType vim set expandtab shiftwidth=4 tabstop=4 softtabstop=4 nolist
autocmd! FileType rust set noexpandtab shiftwidth=3 tabstop=3 softtabstop=3

" ~< commads >~
command! Reload :so $XDG_CONFIG_HOME/nvim/init.vim
" opens a pdf (for latex and groff)
command! PreviewPdf !zathura $(echo % | sed 's/\..*$/.pdf/')& disown
