" luafile $XDG_CONFIG_HOME/nvim/lua/plug.nvim-tree.lua

let g:nvim_tree_quit_on_open=1
let g:nvim_tree_indent_markers=1
let g:nvim_tree_git_hl=1
let g:nvim_tree_highlight_opened_files = 1
let g:nvim_tree_root_folder_modifier = ':~'
let g:nvim_tree_add_trailing = 1
let g:nvim_tree_group_empty = 1
let g:nvim_tree_disable_window_picker = 1
let g:nvim_tree_icon_padding = ' '
let g:nvim_tree_symlink_arrow = ' >> '
let g:nvim_tree_respect_buf_cwd = 1
let g:nvim_tree_create_in_closed_folder = 0
let g:nvim_tree_refresh_wait = 500
let g:nvim_tree_window_picker_exclude = {
			\	'filetype': [
			\		'notify',
			\		'packer',
			\		'qf'
			\	],
			\	'buftype': [
			\		 'terminal'
			\	]
			\ }


let g:nvim_tree_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1 } " List of filenames that gets highlighted with NvimTreeSpecialFile
let g:nvim_tree_show_icons = {
			\ 'git': 1,
			\ 'folders': 0,
			\ 'files': 0,
			\ 'folder_arrows': 0,
			\ }


let g:nvim_tree_icons = {
			\ 'default': '',
			\ 'symlink': '',
			\ 'git': {
				\	'unstaged': "✗",
				\	'staged': "✓",
				\	'unmerged': "",
				\	'renamed': "➜",
				\	'untracked': "★",
				\	'deleted': "",
				\	'ignored': "◌"
				\	},
				\ 'folder': {
					\	'arrow_open': "",
					\	'arrow_closed': "",
					\	'default': "",
					\	'open': "",
					\	'empty': "",
					\	'empty_open': "",
					\	'symlink': "",
					\	'symlink_open': "",
					\	}
					\ }

nnoremap <leader>t :NvimTreeToggle<CR>
nnoremap <leader>tr :NvimTreeRefresh<CR>

" set termguicolors " this variable must be enabled for colors to be applied properly
" " a list of groups can be found at `:help nvim_tree_highlight`
" highlight NvimTreeFolderIcon ctermbg=red
