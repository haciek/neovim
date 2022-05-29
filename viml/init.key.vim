" key leader
let mapleader=";"

" disable arrow-keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" window navigation
noremap <A-h> <C-w>h
noremap <A-j> <C-w>j
noremap <A-k> <C-w>k
noremap <A-l> <C-w>l

" goes to a file even if it doesn't exist
noremap gf :e <cfile><CR>

" moving whole lines
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '>-2<CR>gv=gv

" less annoying line concatenation
nnoremap J mmJ`m;

" re-highlighting visual selection
vnoremap > >gv
vnoremap < <gv

" puts characters at the end of the line
noremap <leader>; <Esc>mmA;<Esc>`m
noremap ,, <Esc>mmA,<Esc>`m

" indent everything
noremap <leader>= <Esc>mmgg=G<Esc>`m

" pasting the last yanked text
nnoremap <leader>p "0p
nnoremap <leader>P "0P

" easier basic file operations
nnoremap <leader>w :up<CR>
nnoremap <leader>q :wq<CR>
nnoremap <leader>Q :q!<CR>

" reloading current vim instance
nnoremap <leader>r :Reload<CR><CR>

" opens a pdf (for latex and groff)
nnoremap <leader>z :!zathura $(echo % \| sed 's/\..*$/.pdf/')& disown<CR>

" Tabs
" nnoremap <leader>t :tabnew<CR>

" opens horizontal/vertical split
nnoremap <leader>H :split<CR>
nnoremap <leader>h :vsplit<CR>

" moving window splits
nnoremap <C-j> <C-w>J
nnoremap <C-k> <C-w>K
nnoremap <C-h> <C-w>H
nnoremap <C-l> <C-w>L

" resizing splits
nnoremap <A-,> :winc <<CR>
nnoremap <A-.> :winc ><CR>
nnoremap <A-+> :winc =<CR>
nnoremap <A--> :winc -<CR>
nnoremap <A-=> :winc +<CR>

" breakpoints for undo.
inoremap . .<C-g>u
inoremap , ,<C-g>u
inoremap ? ?<C-g>u
inoremap ! !<C-g>u

" repeating the `find` action
noremap \ ;<left><right>
noremap <leader><Tab> :exec "!$TERMINAL &"<CR>

" autoclose
inoremap " ""<left>
inoremap ' ''<left>
inoremap ` ``<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap < <><left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {; {<CR>};<ESC>O
