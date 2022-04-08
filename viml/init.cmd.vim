
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

" noexpandtab doesn't work properly in rust files
autocmd! BufRead,BufNewFile *.rs silent setlocal noexpandtab

" autoclosing HTML tags
autocmd! FileType html set omnifunc=htmlcomplete#CompleteTags

command! Reload :so $XDG_CONFIG_HOME/nvim/init.vim

" opens a pdf (for latex and groff)
command! PreviewPdf !zathura $(echo % | sed 's/\..*$/.pdf/')& disown

