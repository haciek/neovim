" ~< Plugin List >~ "
source $XDG_CONFIG_HOME/nvim/plugin/init.plug.vim

" ~< General Settings >~ "
source $XDG_CONFIG_HOME/nvim/viml/init.cmd.vim
source $XDG_CONFIG_HOME/nvim/viml/init.set.vim
source $XDG_CONFIG_HOME/nvim/viml/init.key.vim
source $XDG_CONFIG_HOME/nvim/viml/init.theme.vim
source $XDG_CONFIG_HOME/nvim/viml/init.templates.vim

" ~< Plugin Settings >~ "
luafile $XDG_CONFIG_HOME/nvim/plugin/treesitter.lua
luafile $XDG_CONFIG_HOME/nvim/plugin/lsp-signature.lua
luafile $XDG_CONFIG_HOME/nvim/plugin/lualine.lua
luafile $XDG_CONFIG_HOME/nvim/plugin/nvim-cmp.lua
luafile $XDG_CONFIG_HOME/nvim/plugin/rust-tools.lua
luafile $XDG_CONFIG_HOME/nvim/plugin/nvterm.lua
luafile $XDG_CONFIG_HOME/nvim/plugin/bufferline.lua
luafile $XDG_CONFIG_HOME/nvim/plugin/lsp.lua
luafile $XDG_CONFIG_HOME/nvim/plugin/telescope.lua
source $XDG_CONFIG_HOME/nvim/plugin/startify.vim
