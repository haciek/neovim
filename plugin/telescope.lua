local actions = require('telescope.actions')
require('telescope').load_extension('fzy_native')
-- local builtin = require('telescope.builtin')
-- local themes = require('telescope.themes')
-- builtin.find_files(themes.get_ivy())
-- builtin.find_files(themes.get_dropdown())
-- builtin.lsp_references(themes.get_cursor())
require('telescope').setup{

	defaults = {
		preview = false,
		layout_strategy = 'bottom_pane',
		layout_config = { height = 0.3 },
		file_sorter = require('telescope.sorters').get_fzy_sorter,
		prompt_prefix = '$',
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

