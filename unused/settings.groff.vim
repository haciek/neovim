
" formating groff to pdf
autocmd BufWritePost *.ms silent !pdfroff -K utf8 -e -ms % > $(echo % | sed 's/.ms$/.pdf/')

" inserting templates to a new file
autocmd BufNewFile *.ms 0r ~/.config/nvim/templates/template.ms
" auto spellchecking
autocmd BufEnter *.ms silent setlocal spell

" groff macros
autocmd FileType ms noremap .p :norm o.PP<CR>o
autocmd FileType ms noremap .h :norm o.NH<CR>o
autocmd FileType ms noremap .e :norm o.EQ<CR>o<CR>.EN<CR><Up><Up>
autocmd FileType ms noremap .r :norm o.RS<CR>o<CR>.RE<CR><Up><Up>
autocmd FileType ms noremap .b :norm o.B ""<CR>i
autocmd FileType ms noremap .i :norm o.I ""<CR>i
autocmd FileType ms noremap .u :norm o.UL ""<CR>i
autocmd FileType ms noremap .l :norm o.IP \(bu 2<CR>o
autocmd FileType ms noremap .P :norm o.PSPIC -L ""<CR>i
