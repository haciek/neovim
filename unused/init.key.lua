

vim.g.mapleader=";"

local function remap (mode, shortcut, command)
	vim.api.nvim_set_keymap(
		mode, shortcut, command,
		{ noremap = true }
		)
end

local function map (mode, shortcut, command)
	vim.api.nvim_set_keymap(
		mode, shortcut, command,
		{ noremap = false }
		)
end

-- lsp
remap('n', 'gd', ':lua vim.lsp.buf.definition()<cr>')
remap('n', 'gD', ':lua vim.lsp.buf.declaration()<cr>')
remap('n', 'gi', ':lua vim.lsp.buf.implementation()<cr>')
remap('n', 'gw', ':lua vim.lsp.buf.document_symbol()<cr>')
-- remap('n', 'gw', ':lua vim.lsp.buf.workspace_symbol()<cr>')
remap('n', 'gr', ':lua vim.lsp.buf.references()<cr>')
remap('n', 'gt', ':lua vim.lsp.buf.type_definition()<cr>')
remap('n', 'K', ':lua vim.lsp.buf.hover()<cr>')
remap('n', 'gk', ':lua vim.lsp.buf.signature_help()<cr>')
remap('n', '<leader>af', ':lua vim.lsp.buf.code_action()<cr>')
remap('n', '<leader>rn', ':lua vim.lsp.buf.rename()<cr>')

remap("", "<C-s>", ":Startify<CR>")
remap("", "<C-t>", ":NERDTreeToggle<CR>")
remap("", "<C-c>", ":NERDTreeCWD<CR>")

remap("n", "<silent><Leader>s", "<Plug>SearchNormal")
remap("v", "<silent><Leader>s", "<Plug>SearchVisual")

remap("", "<Up>", "<Nop>")
remap("", "<Down>", "<Nop>")
remap("", "<Left>", "<Nop>")
remap("", "<Right>", "<Nop>")

remap("n", "<C-h>", "<C-w><C-h>")
remap("n", "<C-j>", "<C-w><C-j>")
remap("n", "<C-k>", "<C-w><C-k>")
remap("n", "<C-l>", "<C-w><C-l>")

remap("i", "<C-h>", "<C-\\><C-N><C-w>h")
remap("i", "<C-j>", "<C-\\><C-N><C-w>j")
remap("i", "<C-k>", "<C-\\><C-N><C-w>k")
remap("i", "<C-l>", "<C-\\><C-N><C-w>l")

remap("t", "<C-h>", "<C-\\><C-N><C-w>h")
remap("t", "<C-j>", "<C-\\><C-N><C-w>j")
remap("t", "<C-k>", "<C-\\><C-N><C-w>k")
remap("t", "<C-l>", "<C-\\><C-N><C-w>l")

remap("t", "<leader><Esc>", "<C-\\><C-n>")
remap("t", "<Esc>", "<C-q>")

remap("", "gf", ":e <cfile><cr>")

remap("v", "J", ":m '>+1<CR>gv=gv")
remap("v", "K", ":m '>-2<CR>gv=gv")

remap("n", "J", "mmJ`m;")

remap("v", ">", ">gv")
remap("v", "<", "<gv")

map("n", "y\"", "ysiw\"")
map("n", "y'", "ysiw'")
map("n", "y`", "ysiw`")
map("n", "y(", "ysiw(")
map("n", "y[", "ysiw[")
map("n", "y{", "ysiw{")

map("n", "c\"", "cs\"")
map("n", "c'", "cs'")
map("n", "c`","cs`")
map("n", "c(", "cs(")
map("n", "c[", "cs[")
map("n", "c{", "cs{")

map("n", "d\"", "ds\"")
map("n", "d'", "ds'")
map("n", "d`", "ds`")
map("n", "d(", "ds(")
map("n", "d[", "ds[")
map("n", "d{", "ds{")

remap("n", "<leader>;", "<Esc>mmA;<Esc>`m")

remap("n", "<leader>p", '"0p')
remap("n", "<leader>P", '"0P')

remap("n", "<leader>w", ":up<CR>")
remap("n", "<leader>q", ":wq<CR>")
remap("n", "<leader>Q", ":q!<CR>")

remap("t", "<leader>l", "<Enter>clear<CR>")

remap("n", "<leader>r", ":Reload<CR>")
remap("n", "<leader>R", ":CocRestart<CR>")

remap("n", "<leader>z", ":!zathura $(echo % \\| sed 's/\\..*$/.pdf/')& disown<CR>")

remap("n", "<leader>f", ":Files<CR>")
remap("n", "<leader>F", ":Buffers<CR>")
remap("n", "<leader>W", ":W<CR>")

remap("n", "<leader>t", ":vsplit<Enter>:terminal<CR>")

remap("n", "<leader>H", ":split<Space>")
remap("n", "<leader>h", ":vsplit<Space>")

remap("n", "<A-j>", "<C-w>J")
remap("n", "<A-k>", "<C-w>K")
remap("n", "<A-h>", "<C-w>H")
remap("n", "<A-l>", "<C-w>L")

remap("n", "<A-,>", ":winc <<CR>")
remap("n", "<A-.>", ":winc ><CR>")
remap("n", "<A-=>", ":winc =<CR>")

remap("n", "<A-->", ":winc -<CR>")
remap("n", "<A-+>", ":winc +<CR>")

remap("n", "<space><space>", "<Esc>/<++><Enter>\"_c4l")

remap("i", ".", ".<C-g>u")
remap("i", ",", ",<C-g>u")
remap("i", "?", "?<C-g>u")
remap("i", "!", "!<C-g>u")

-- autocmd FileType ms noremap .p :norm o.PP<CR>o
-- autocmd FileType ms noremap .h :norm o.NH<CR>o
-- autocmd FileType ms noremap .e :norm o.EQ<CR>o<CR>.EN<CR><Up><Up>
-- autocmd FileType ms noremap .r :norm o.RS<CR>o<CR>.RE<CR><Up><Up>
-- autocmd FileType ms noremap .b :norm o.B ""<CR>i
-- autocmd FileType ms noremap .i :norm o.I ""<CR>i
-- autocmd FileType ms noremap .u :norm o.UL ""<CR>i
-- autocmd FileType ms noremap .l :norm o.IP \(bu 2<CR>o
-- autocmd FileType ms noremap .P :norm o.PSPIC -L ""<CR>i;


-- inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
-- 		\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

-- map("n", "<silent> [g", "<Plug>(coc-diagnostic-prev)")
-- map("n", "<silent> ]g", "<Plug>(coc-diagnostic-next)")
--
-- map("n", "<silent> gd", "<Plug>(coc-definition)")
-- map("n", "<silent> gy", "<Plug>(coc-type-definition)")
-- map("n", "<silent> gi", "<Plug>(coc-implementation)")
-- map("n", "<silent> gr", "<Plug>(coc-references)")

map("n", "[g", "<Plug>(coc-diagnostic-prev)")
map("n", "]g", "<Plug>(coc-diagnostic-next)")

map("n", "gd", "<Plug>(coc-definition)")
map("n", "gy", "<Plug>(coc-type-definition)")
map("n", "gi", "<Plug>(coc-implementation)")
map("n", "gr", "<Plug>(coc-references)")

map("n", "<leader>rn", "<Plug>(coc-rename)")

map("x", "<leader>a", "<Plug>(coc-codeaction-selected)")
map("n", "<leader>a", "<Plug>(coc-codeaction-selected)")

map("n", "<leader>ac", "<Plug>(coc-codeaction)")

map("n", "<leader>qf", "<Plug>(coc-fix-current)")

-- function! s:check_back_space() abort
-- 	let col = col('.') - 1
-- 	return !col || getline('.')[col - 1]  =~# '\s'
-- endfunction
--
--
-- inoremap <silent><expr> <TAB>
-- 		\ pumvisible() ? "\<C-n>" :
-- 		\ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
-- 		\ <SID>check_back_space() ? "\<TAB>" :
-- 		\ coc#refresh()
-- inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
