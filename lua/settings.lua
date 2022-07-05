local opt = vim.opt
local o = vim.o

opt.clipboard      = opt.clipboard + "unnamedplus"
opt.shortmess      = opt.shortmess + "c"

o.completeopt      = "menu,menuone,noselect"
o.wildmode         = "longest,full"
o.winbar           = "%=%m %f"
o.listchars        = "tab:│ "
o.encoding         = "utf-8"
o.spelllang        = "en_us"

o.updatetime       = 300
o.numberwidth      = 5
o.tabstop          = 4
o.softtabstop      = 4
o.shiftwidth       = 4
o.sidescrolloff    = 4
o.scrolloff        = 4
o.laststatus       = 3
o.cmdheight        = 2

o.list             = true
o.hidden           = true
o.number           = true
o.relativenumber   = true
o.splitbelow       = true
o.splitright       = true
o.autoindent       = true
o.smartindent      = true
o.ignorecase       = true
o.smartcase        = true
o.incsearch        = true
o.wrap             = true
o.hlsearch         = false
o.expandtab        = false
o.writebackup      = false
o.backup           = false

