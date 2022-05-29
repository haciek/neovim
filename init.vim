" ~< Plugin List >~ "
source $XDG_CONFIG_HOME/nvim/plugin/init.plug.vim

" ~< General Settings >~ "
source $XDG_CONFIG_HOME/nvim/viml/init.cmd.vim
source $XDG_CONFIG_HOME/nvim/viml/init.set.vim
source $XDG_CONFIG_HOME/nvim/viml/init.key.vim
source $XDG_CONFIG_HOME/nvim/viml/init.theme.vim

" ~< Templates >~ "
source $XDG_CONFIG_HOME/nvim/viml/init.templates.vim

" ~< Plugin Settings >~ "
luafile $XDG_CONFIG_HOME/nvim/plugin/treesitter.lua
luafile $XDG_CONFIG_HOME/nvim/plugin/lsp-signature.lua
luafile $XDG_CONFIG_HOME/nvim/plugin/lualine.lua
luafile $XDG_CONFIG_HOME/nvim/plugin/nvim-cmp.lua
luafile $XDG_CONFIG_HOME/nvim/plugin/rust-tools.lua

luafile $XDG_CONFIG_HOME/nvim/plugin/lsp.lua
source $XDG_CONFIG_HOME/nvim/plugin/lsp.vim

luafile $XDG_CONFIG_HOME/nvim/plugin/nvim-tree.lua

luafile $XDG_CONFIG_HOME/nvim/plugin/telescope.lua
source $XDG_CONFIG_HOME/nvim/plugin/telescope.vim

source $XDG_CONFIG_HOME/nvim/plugin/startify.vim
source $XDG_CONFIG_HOME/nvim/plugin/surround.vim

" ~< Unused >~ "
" source $XDG_CONFIG_HOME/nvim/plugin/plug.coc.vim
" source $XDG_CONFIG_HOME/nvim/plugin/plug.coq.vim
" source $XDG_CONFIG_HOME/nvim/plugin/plug.easy-align.vim
" source $XDG_CONFIG_HOME/nvim/viml/plug.completion.vim
" source $XDG_CONFIG_HOME/nvim/viml/plug.godot.vim
" luafile $XDG_CONFIG_HOME/nvim/lua/init.plug.lua
" silent luafile $XDG_CONFIG_HOME/nvim/lua/plug.nvim-cmp.lua
" luafile $XDG_CONFIG_HOME/nvim/lua/init.key.lua
" luafile $XDG_CONFIG_HOME/nvim/lua/init.set.lua
" source $XDG_CONFIG_HOME/nvim/viml/settings.groff.vim
" ./plugin runtime! lua/*.lua
