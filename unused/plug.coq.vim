let g:coq_settings = { "keymap.recommended": v:false }

ino <silent><expr> <Esc>   pumvisible() ? "\<C-e><Esc>" : "\<Esc>"
ino <silent><expr> <C-c>   pumvisible() ? "\<C-e><C-c>" : "\<C-c>"
ino <silent><expr> <BS>    pumvisible() ? "\<C-e><BS>"  : "\<BS>"
ino <silent><expr> <CR>    pumvisible() ? (complete_info().selected == -1 ? "\<C-e><CR>" : "\<C-y>") : "\<CR>"
ino <silent><expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
ino <silent><expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<BS>"
noremap <silent> ;c :COQnow<CR>

" autocmd BufEnter *.cpp COQnow
" autocmd BufEnter *.c COQnow
" autocmd BufEnter *.py COQnow
" autocmd BufEnter *.rs COQnow
