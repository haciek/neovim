local cmd = vim.cmd
local fn = vim.fn
local g = vim.g
local opt = vim.opt

g.mapleader = ' '

local function map(mode, shortcut, command, opts)
   local options = { noremap = false }

   if opts then options = vim.tbl_extend('force', options, opts) end
   vim.api.nvim_set_keymap(mode, shortcut, command, options)
end

local function noremap(mode, shortcut, command, opts)
   local options = { noremap = true }

   if opts then options = vim.tbl_extend('force', options, opts) end
   vim.api.nvim_set_keymap(mode, shortcut, command, options)
end

noremap("n", "h", "h")
noremap("x", "h", "h")
noremap("o", "h", "h")
noremap("n", "t", "j")
noremap("x", "t", "j")
noremap("o", "t", "j")
noremap("n", "n", "k")
noremap("x", "n", "k")
noremap("o", "n", "k")
noremap("n", "s", "l")
noremap("x", "s", "l")
noremap("o", "s", "l")
noremap("n", "T", "J")
noremap("x", "T", "J")
noremap("o", "T", "J")
noremap("n", "N", "K")
noremap("x", "N", "K")
noremap("o", "N", "K")

noremap("n", "<A-h>", "<C-w>h")
noremap("n", "<A-t>", "<C-w>j")
noremap("n", "<A-n>", "<C-w>k")
noremap("n", "<A-s>", "<C-w>l")

noremap("n", "<C-h>", "<C-w>H")
noremap("n", "<C-t>", "<C-w>J")
noremap("n", "<C-n>", "<C-w>K")
noremap("n", "<C-s>", "<C-w>L")

noremap("n", "<A-,>", ":winc <<CR>")
noremap("n", "<A-.>", ":winc ><CR>")
noremap("n", "<A-=>", ":winc =<CR>")
noremap("n", "<A-->", ":winc -<CR>")
noremap("n", "<A-+>", ":winc +<CR>")

map("n", "<leader>c", "gcc")
map("v", "<leader>c", "gcc")

noremap("n", "<leader>`", ":e <cfile><CR>")
noremap("n", "<leader>=", "<Esc>mmgg=G<Esc>`m")
noremap("n", "<leader>i", "zi")
noremap("n", "<leader>p", "\"0p")
noremap("n", "<leader>P", "\"0P")
noremap("n", "<leader>w", ":up<CR>")
noremap("n", "<leader>q", ":wq<CR>")
noremap("n", "<leader>Q", ":q!<CR>")
noremap("n", "<leader>r", ":Reload<CR><CR>")
noremap("n", "<leader>H", ":split<CR>")
noremap("n", "<leader>h", ":vsplit<CR>")
noremap("n", "<leader><Tab>", ":exec \"!$TERMINAL &\"<CR>")

noremap("v", "J", ":m '>+1<CR>gv=gv")
noremap("v", "K", ":m '>-2<CR>gv=gv")
noremap("n", "J", "mmJ`m;")
noremap("v", ">", ">gv")
noremap("v", "<", "<gv")
noremap("n", ";;", "<Esc>mmA;<Esc>`m")
noremap("n", ",,", "<Esc>mmA,<Esc>`m")
noremap("i", ".", ".<C-g>u")
noremap("i", ",", ",<C-g>u")
noremap("i", "?", "?<C-g>u")
noremap("i", "!", "!<C-g>u")
noremap("n", "\\", ";<left><right>")

-- " autoclose
noremap("i", "\"", "\"\"<left>")
noremap("i", "\'", "\'\'<left>")
noremap("i", "`", "``<left>")
noremap("i", "(", "()<left>")
noremap("i", "[", "[]<left>")
noremap("i", "{", "{}<left>")
noremap("i", "{<CR>", "{<CR>}<ESC>O")

-- " add (around the word)
map("n", "y\"", "ysiW\"")
map("n", "y\'", "ysiW\'")
map("n", "y`", "ysiW`")
map("n", "y(", "ysiW(")
map("n", "y[", "ysiW[")
map("n", "y{", "ysiW{")
map("n", "y<", "ysiW<")
map("n", "c\"", "cs\"")
map("n", "c\'", "cs\'")
map("n", "c`", "cs`")
map("n", "c(", "cs(")
map("n", "c[", "cs[")
map("n", "c{", "cs{")
map("n", "c<", "cs<")
map("n", "d\"", "ds\"")
map("n", "d'", "ds'")
map("n", "d`", "ds`")
map("n", "d(", "ds(")
map("n", "d[", "ds[")
map("n", "d{", "ds{")
map("n", "d<", "ds<")

--  ~< LSP >~
map("n", "<C-\\>", "<cmd>lua vim.lsp.buf.signature_help()<CR>",   { silent = true })
noremap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>",       { silent = true })
noremap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>",      { silent = true })
noremap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>",       { silent = true })
noremap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>",   { silent = true })
noremap("n", "K" , "<cmd>lua vim.lsp.buf.hover()<CR>",            { silent = true })
noremap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>")

--  ~< Telescope >~
noremap("n", "<leader>.", "<cmd>Telescope oldfiles<CR>")
noremap("n", "<leader>f", "<cmd>Telescope find_files<CR>")
noremap("n", "<leader>b", "<cmd>Telescope buffers<CR>")
noremap("n", "<leader>g", "<cmd>Telescope current_buffer_fuzzy_find<CR>")
noremap("n", "<leader>m", "<cmd>Telescope man_pages<CR>")

noremap("n", "<leader>a", "<cmd>Alpha <CR>")

noremap("n", "<leader>j", "<cmd>AnyJump<CR>")
noremap("x", "<leader>j", "<cmd>AnyJumpVisual<CR>")
noremap("n", "<leader>b", "<cmd>AnyJumpBack<CR>")
noremap("n", "<leader>l", "<cmd>AnyJumpLastResults<CR>")
