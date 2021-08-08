
require('lualine').setup {
	options = {theme = "tokyonight"},
}

require('bufferline').setup {
	options = {
		view = "default",
		show_buffer_close_icons = true,
		show_close_icon = true,
		show_tab_indicators = true,
		persist_buffer_sort = true,
		separator_style = "slant",
		tab_size = 23,
	}
}

-- Theme config
vim.g.tokyonight_style = "storm"
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }
vim.g.tokyonight_italic_comments = true
vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }
vim.g.tokyonight_lualine_bold = true

-- Load the colorscheme
vim.cmd[[colorscheme tokyonight]]
