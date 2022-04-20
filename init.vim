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
" ./plugin
runtime! lua/*.lua

function PlugSource()
	runtime $XDG_CONFIG_HOME/nvim/lua/plug.treesitter.lua
	runtime $XDG_CONFIG_HOME/nvim/lua/plug.lsp-signature.lua
	runtime $XDG_CONFIG_HOME/nvim/lua/plug.lsp.lua
	runtime $XDG_CONFIG_HOME/nvim/lua/plug.lualine.lua
	runtime $XDG_CONFIG_HOME/nvim/lua/plug.nvim-tree.lua
	runtime $XDG_CONFIG_HOME/nvim/lua/plug.telescope.lua
	source $XDG_CONFIG_HOME/nvim/plugin/plug.lsp.vim
	source $XDG_CONFIG_HOME/nvim/plugin/plug.coq.vim
	source $XDG_CONFIG_HOME/nvim/plugin/plug.nvim-tree.vim
	source $XDG_CONFIG_HOME/nvim/plugin/plug.startify.vim
	source $XDG_CONFIG_HOME/nvim/plugin/plug.surround.vim
	source $XDG_CONFIG_HOME/nvim/plugin/plug.telescope.vim
	source $XDG_CONFIG_HOME/nvim/plugin/plug.chtsh.vim
endfunction

" ~< Unused >~ "
" source $XDG_CONFIG_HOME/nvim/plugin/plug.coc.vim
" source $XDG_CONFIG_HOME/nvim/plugin/plug.easy-align.vim
" source $XDG_CONFIG_HOME/nvim/viml/plug.completion.vim
" source $XDG_CONFIG_HOME/nvim/viml/plug.godot.vim
" luafile $XDG_CONFIG_HOME/nvim/lua/init.plug.lua
" silent luafile $XDG_CONFIG_HOME/nvim/lua/plug.nvim-cmp.lua
" luafile $XDG_CONFIG_HOME/nvim/lua/init.key.lua
" luafile $XDG_CONFIG_HOME/nvim/lua/init.set.lua
" source $XDG_CONFIG_HOME/nvim/viml/settings.groff.vim
