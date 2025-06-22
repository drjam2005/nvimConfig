return -- Using lazy.nvim
{
    "metalelf0/black-metal-theme-neovim",
    lazy = false,
    priority = 1000,
    config = function()
	require("black-metal").setup({
	    highlights = {
		Normal = { bg = "#151515" },
		NormalNC = { bg = "#151515" },
		NormalFloat = { bg = "#151515" },
		Pmenu = { bg = "#151515" },
		VertSplit = { bg = "#151515" },
		StatusLine = { bg = "#151515" },
		SignColumn = { bg = "#151515" },
		LineNr = { bg = "#151515" },
		CursorLineNr = { bg = "#151515" },
		TelescopeNormal = { bg = "#151515" },
		FloatBorder = { bg = "#151515" },
		-- other stuff
		DiagnosticUnderlineError = { sp = "#856666"},
		DiagnosticError = { fg = "#856666"},
		Error = { fg = "#856666"},
		ErrorMsg = { fg = "#856666"},
		String = { fg = "#99b699" },
		Number = { fg = "#5c7585" },
		cppFloat = { fg = "#527776" },
		Conditional = { fg = "#674f50" },
		cRepeat = { fg = "#876f70"},
		["@property"] = { fg = "#645f5c" },
		["@function"] = { fg = "#846369" },
		["@lsp.typemod.macro.globalScope.cpp"] = { fg = "#a58395" },
		["@lsp.typemod.variable.functionScope.cpp"] = { fg = "#856375" },
	    }
	})
	require("black-metal").load()
	vim.cmd("colorscheme gorgoroth")
    end,
}
