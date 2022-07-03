" key leader
let mapleader=" "

nnoremap h h|xnoremap h h|onoremap h h
nnoremap t j|xnoremap t j|onoremap t j
nnoremap n k|xnoremap n k|onoremap n k
nnoremap s l|xnoremap s l|onoremap s l
nnoremap T J|xnoremap T J|onoremap T J
nnoremap N K|xnoremap N K|onoremap N K

noremap <A-h> <C-w>h
noremap <A-t> <C-w>j
noremap <A-n> <C-w>k
noremap <A-s> <C-w>l

" moving window splits
nnoremap <C-h> <C-w>H
nnoremap <C-t> <C-w>J
nnoremap <C-n> <C-w>K
nnoremap <C-s> <C-w>L

" resizing splits
nnoremap <A-,> :winc <<CR>
nnoremap <A-.> :winc ><CR>
nnoremap <A-=> :winc =<CR>
nnoremap <A--> :winc -<CR>
nnoremap <A-+> :winc +<CR>

nmap <leader>c gcc
vmap <leader>c gcc

noremap <leader>` :e <cfile><CR>
noremap <leader>= <Esc>mmgg=G<Esc>`m
nnoremap <leader>i zi
nnoremap <leader>p "0p
nnoremap <leader>P "0P
nnoremap <leader>w :up<CR>
nnoremap <leader>q :wq<CR>
nnoremap <leader>Q :q!<CR>
nnoremap <leader>r :Reload<CR><CR>
nnoremap <leader>H :split<CR>
nnoremap <leader>h :vsplit<CR>

noremap <leader><Tab> :exec "!$TERMINAL &"<CR>

" moving whole lines
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '>-2<CR>gv=gv

" less annoying line concatenation
nnoremap J mmJ`m;

" re-highlighting visual selection
vnoremap > >gv
vnoremap < <gv

" puts characters at the end of the line
noremap ;; <Esc>mmA;<Esc>`m
noremap ,, <Esc>mmA,<Esc>`m


" breakpoints for undo.
inoremap . .<C-g>u
inoremap , ,<C-g>u
inoremap ? ?<C-g>u
inoremap ! !<C-g>u

" repeating the `find` action
noremap \ ;<left><right>

" autoclose
inoremap " ""<left>
inoremap ' ''<left>
inoremap ` ``<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
" inoremap < <><left>
" inoremap {; {<CR>};<ESC>O

" add (around the word)
nmap y" ysiW"
nmap y' ysiW'
nmap y` ysiW`
nmap y( ysiW(
nmap y[ ysiW[
nmap y{ ysiW{
nmap y< ysiW<
nmap c" cs"
nmap c' cs'
nmap c` cs`
nmap c( cs(
nmap c[ cs[
nmap c{ cs{
nmap c< cs<
nmap d" ds"
nmap d' ds'
nmap d` ds`
nmap d( ds(
nmap d[ ds[
nmap d{ ds{
nmap d< ds<

" ~< LSP >~ "
nnoremap <silent>gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent>gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent>gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent>gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent>K <cmd>lua vim.lsp.buf.hover()<CR>
nmap <silent><C-\> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <leader>rn <cmd>lua vim.lsp.buf.rename()<CR>

" ~< Telescope >~ "
nnoremap <leader>' :Telescope find_files<CR>
nnoremap <leader>, :Telescope buffers<CR>
nnoremap <leader>. :Telescope current_buffer_fuzzy_find<CR>
