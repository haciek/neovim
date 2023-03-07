local cmd = vim.cmd
local fn = vim.fn
local g = vim.g
local opt = vim.opt

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
noremap("n", "<leader>v", ":vsplit<CR>")
noremap("n", "<leader><Tab>", ":exec \"!$TERMINAL &\"<CR>")

noremap("n", "zi", "zizz")
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


noremap("n", "<leader>j", "<cmd>AnyJump<CR>")
noremap("x", "<leader>j", "<cmd>AnyJumpVisual<CR>")
noremap("n", "<leader>jb", "<cmd>AnyJumpBack<CR>")
noremap("n", "<leader>l", "<cmd>AnyJumpLastResults<CR>")
