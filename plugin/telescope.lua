local actions = require('telescope.actions')
require('telescope').load_extension('fzy_native')
require('telescope').setup{

	defaults = {
		preview = false,
		layout_strategy = 'bottom_pane',
		layout_config = { height = 0.3 },
		file_sorter = require('telescope.sorters').get_fzy_sorter,
		prompt_prefix = '🔍 ',
		find_command='rg,--ignore,--hidden,--files',
		color_devicons = true,
		file_previewer = require('telescope.previewers').vim_buffer_cat.new,
		grep_previewer = require('telescope.previewers').vim_buffer_vimgrep.new,
		qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,
		mappings = {
			i = {
				["<C-q>"] = actions.send_to_qflist,
			},
		}
	},
	pickers = {
	},
	extensions = {
		fzy_native = {
			override_generic_sorter = true,
			override_file_sorter = true,
		}
	}
}

