local opt = vim.opt
local o = vim.o

opt.clipboard:append( "unnamedplus" )
opt.shortmess:append( "c" )
opt.formatoptions:append( "cro" )

o.completeopt      = "menu,menuone,noselect"
o.wildmode         = "longest,full"
o.winbar           = "%m %f"
o.listchars        = "tab:│ "
o.encoding         = "utf-8"
o.spelllang        = "en_us"

o.updatetime       = 300
o.numberwidth      = 5
o.tabstop          = 3
o.softtabstop      = 3
o.shiftwidth       = 3
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
o.undofile         = true

o.wrap             = false
o.hlsearch         = false
o.expandtab        = false
o.writebackup      = false
o.backup           = false
