local cmd = vim.cmd
local fn = vim.fn
local g = vim.g
local opt = vim.opt

g.mapleader = ' '

local function map(mode, shortcut, command, opts)
   local options = {noremap = true}

   if opts then options = vim.tbl_extend('force', options, opts) end
   vim.api.nvim_set_keymap(mode, shortcut, command, options)
end

map("n", "h", "h")
map("x", "h", "h")
map("o", "h", "h")
map("n", "t", "j")
map("x", "t", "j")
map("o", "t", "j")
map("n", "n", "k")
map("x", "n", "k")
map("o", "n", "k")
map("n", "s", "l")
map("x", "s", "l")
map("o", "s", "l")
map("n", "T", "J")
map("x", "T", "J")
map("o", "T", "J")
map("n", "N", "K")
map("x", "N", "K")
map("o", "N", "K")

map("n", "<A-h>", "<C-w>h")
map("n", "<A-t>", "<C-w>j")
map("n", "<A-n>", "<C-w>k")
map("n", "<A-s>", "<C-w>l")

map("n", "<C-h>", "<C-w>H")
map("n", "<C-t>", "<C-w>J")
map("n", "<C-n>", "<C-w>K")
map("n", "<C-s>", "<C-w>L")

map("n", "<A-,>", ":winc <<CR>")
map("n", "<A-.>", ":winc ><CR>")
map("n", "<A-=>", ":winc =<CR>")
map("n", "<A-->", ":winc -<CR>")
map("n", "<A-+>", ":winc +<CR>")

map("n", "<leader>c", "gcc", { noremap = false })
map("v", "<leader>c", "gcc", { noremap = false })

map("n", "<leader>`", ":e <cfile><CR>")
map("n", "<leader>=", "<Esc>mmgg=G<Esc>`m")
map("n", "<leader>i", "zi")
map("n", "<leader>p", "\"0p")
map("n", "<leader>P", "\"0P")
map("n", "<leader>w", ":up<CR>")
map("n", "<leader>q", ":wq<CR>")
map("n", "<leader>Q", ":q!<CR>")
map("n", "<leader>r", ":Reload<CR><CR>")
map("n", "<leader>H", ":split<CR>")
map("n", "<leader>h", ":vsplit<CR>")
map("n", "<leader><Tab>", ":exec \"!$TERMINAL &\"<CR>")

map("v", "J",  ":m '>+1<CR>gv=gv")
map("v", "K",  ":m '>-2<CR>gv=gv")
map("n", "J",  "mmJ`m;")
map("v", ">",  ">gv")
map("v", "<",  "<gv")
map("n", ";;", "<Esc>mmA;<Esc>`m")
map("n", ",,", "<Esc>mmA,<Esc>`m")
map("i", ".",  ".<C-g>u")
map("i", ",",  ",<C-g>u")
map("i", "?",  "?<C-g>u")
map("i", "!",  "!<C-g>u")
map("n", "\\", ";<left><right>")

-- " autoclose
map("i", "\"", "\"\"<left>")
map("i", "\'", "\'\'<left>")
map("i", "`",  "``<left>")
map("i", "(",  "()<left>")
map("i", "[",  "[]<left>")
map("i", "{",  "{}<left>")
map("i", "{<CR>", "{<CR>}<ESC>O")

-- " add (around the word)
map("n", "y\"", "ysiW\"",  { noremap = false })
map("n", "y\'", "ysiW\'",  { noremap = false })
map("n", "y`", "ysiW`",    { noremap = false })
map("n", "y(", "ysiW(",    { noremap = false })
map("n", "y[", "ysiW[",    { noremap = false })
map("n", "y{", "ysiW{",    { noremap = false })
map("n", "y<", "ysiW<",    { noremap = false })
map("n", "c\"", "cs\"",    { noremap = false })
map("n", "c\'", "cs\'",    { noremap = false })
map("n", "c`", "cs`",      { noremap = false })
map("n", "c(", "cs(",      { noremap = false })
map("n", "c[", "cs[",      { noremap = false })
map("n", "c{", "cs{",      { noremap = false })
map("n", "c<", "cs<",      { noremap = false })
map("n", "d\"", "ds\"",    { noremap = false })
map("n", "d'", "ds'",      { noremap = false })
map("n", "d`", "ds`",      { noremap = false })
map("n", "d(", "ds(",      { noremap = false })
map("n", "d[", "ds[",      { noremap = false })
map("n", "d{", "ds{",      { noremap = false })
map("n", "d<", "ds<",      { noremap = false })

--  ~< LSP >~
map("n", "<C-\\>",      "<cmd>lua vim.lsp.buf.signature_help()<CR>",   { silent = true, noremap = false })
map("n", "gd",          "<cmd>lua vim.lsp.buf.definition()<CR>",       { silent = true })
map("n", "gD",          "<cmd>lua vim.lsp.buf.declaration()<CR>",      { silent = true })
map("n", "gr",          "<cmd>lua vim.lsp.buf.references()<CR>",       { silent = true })
map("n", "gi",          "<cmd>lua vim.lsp.buf.implementation()<CR>",   { silent = true })
map("n", "K" ,          "<cmd>lua vim.lsp.buf.hover()<CR>",            { silent = true })
map("n", "<leader>rn",  "<cmd>lua vim.lsp.buf.rename()<CR>")

--  ~< Telescope >~
map("n", "<leader>\'",  ":Telescope find_files<CR>")
map("n", "<leader>,",   ":Telescope buffers<CR>")
map("n", "<leader>.",   ":Telescope live_grep<CR>")
map("n", "<leader>;",   ":Telescope <CR>")

map("n", "<leader>a",   ":Alpha <CR>")
