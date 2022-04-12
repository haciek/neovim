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
" window navigation (terminal)
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l

" fast clear for the terminal
tnoremap <leader>l <Enter>clear<CR>

" remap escape (terminal)
tnoremap <leader><Esc> <C-\><C-n>

" goes to a file even if it doesn't exist
noremap gf :e <cfile><cr>

" moving whole lines
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '>-2<CR>gv=gv

" better (less annoying) line concatenation
nnoremap J mmJ`m;

" re-highlighting visual selection
vnoremap > >gv
vnoremap < <gv

" puts ; at the end of the line
noremap <leader>; <Esc>mmA;<Esc>`m

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
nnoremap <A-y> <C-w>J
nnoremap <A-u> <C-w>K
nnoremap <A-i> <C-w>H
nnoremap <A-o> <C-w>L

" vertical split resizing
nnoremap <A-,> :winc <<CR>
nnoremap <A-.> :winc ><CR>
nnoremap <A-+> :winc =<CR>
" split resizing
nnoremap <A--> :winc -<CR>
nnoremap <A-=> :winc +<CR>

" find and insert at <++> (useful for macros)
" nnoremap <space><space> <Esc>/<++><Enter>"_c4l

" breakpoints for undo.
inoremap . .<C-g>u
inoremap , ,<C-g>u
inoremap ? ?<C-g>u
inoremap ! !<C-g>u

" repeating the `find` action
noremap \ ;<left><right>

inoremap < <><left>

" folding
noremap <A-[> :foldopen<CR>
noremap <A-]> :foldclose<CR>
