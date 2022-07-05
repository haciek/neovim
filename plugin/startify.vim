
let g:startify_lists = [
	\{ 'type': 'bookmarks', 'header': ['   Bookmarks'] },
	\{ 'type': 'files', 	'header': ['   Files'] },
	\{ 'type': 'sessions',	'header': ['   Sessions'] },
	\{ 'type': 'commands',	'header': ['   Commands'] },
	\]

let g:startify_bookmarks = [
	\{ 'v'  : '~/.config/nvim/init.lua' },
	\{ 'z'  : '~/.config/zsh/.zshrc' },
	\{ 'zz'  : '~/.config/zsh/.zshenv' },
	\{ 'c'  : '~/code/' },
	\{ 'cc' : '~/.config/' },
	\{ 'a'  : '~/.config/awesome/rc.lua' },
	\]

let g:startify_custom_header = [
	\"   ______              ___ ___ __            ",
	\"  |   _  \\.-----.-----|   Y   |__|--------. ",
	\"  |.  |   |  -__|  _  |.  |   |  |        |  ",
	\"  |.  |   |_____|_____|.  |   |__|__|__|__|  ",
	\"  |:  |   |           |:  1   |              ",
	\"  |::.|   |            \\:.. ./              ",
	\"  `--- ---'             `---'                ",
	\ ]


function! StartifyEntryFormat()
	return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction

noremap <leader>s :Startify<CR>

