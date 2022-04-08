
set hidden
set encoding=utf-8
set updatetime=300
set shortmess+=c
set spelllang=en_us
set clipboard+=unnamedplus
set wildmode=longest,full
set number relativenumber numberwidth=5
set noexpandtab tabstop=3 softtabstop=3 shiftwidth=3
set sidescrolloff=4 scrolloff=4
set cmdheight=2
set nowritebackup nobackup
set splitbelow splitright
set autoindent
set smartindent
" set cursorline
" set cursorcolumn
set ignorecase
set smartcase
set nohlsearch
set incsearch
set nowrap
" set list listchars=tab:\ \ ,space:· lcs=tab:\ \ ,space:·,
" set list listchars=tab:»\ , lcs=tab:»\ ,
" set list listchars=tab:│\ ,space:· lcs=tab:│\ ,space:·
"
" autocmd! InsertEnter * set list listchars=tab:\ \ ,space: lcs=tab:\ \ ,space=\ ,
" autocmd! InsertLeave * set list listchars=tab:│\ ,space:· lcs=tab:│\ ,space:·
autocmd! InsertEnter * set nocursorline nocursorcolumn
autocmd! InsertLeave * set cursorline 
autocmd! BufEnter *.py setlocal noexpandtab tabstop=4 softtabstop=4 shiftwidth=4
