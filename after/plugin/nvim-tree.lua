vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

require 'nvim-tree'.setup {
	git = {
		ignore = false,
	},
	update_focused_file = {
		enable = true,
	},
	renderer = {
		indent_markers = {
			enable = true,
		},
		add_trailing = true
	},
	view = {
		adaptive_size = true
	},
}
