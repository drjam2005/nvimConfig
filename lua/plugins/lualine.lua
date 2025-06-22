return {
    "nvim-lualine/lualine.nvim",
    priority = 1000,
    config = function()
	local customCD = require'lualine.themes.codedark'
	customCD.normal.c.bg = '#151515'
	customCD.insert.c.bg = '#151515'

	customCD.normal.a.bg = '#555555'
	customCD.insert.a.bg = '#555555'

	customCD.normal.a.fg = '#151515'
	customCD.insert.a.fg = '#151515'

	customCD.normal.b.fg = '#555555'
	customCD.insert.b.fg = '#555555'

	customCD.visual.a.bg = '#555555'
	customCD.visual.b.fg = '#757575'

	require("lualine").setup({
	    options = {
		theme = customCD,
		globalstatus = true,
	    },
	})
    end,
}
