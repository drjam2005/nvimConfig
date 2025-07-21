return -- Using lazy.nvim
{
    "metalelf0/black-metal-theme-neovim",
    lazy = false,
    priority = 1000,
    config = function()
	require("black-metal").setup({
	    highlights = {
		Normal = { bg = "#101010" },
		NormalNC = { bg = "#101010" },
		NormalFloat = { bg = "#101010" },
		Pmenu = { bg = "#101010" },
		VertSplit = { bg = "#101010" },
		StatusLine = { bg = "#101010" },
		SignColumn = { bg = "#101010" },
		LineNr = { bg = "#101010" },
		CursorLineNr = { bg = "#101010" },
		TelescopeNormal = { bg = "#101010" },
		FloatBorder = { bg = "#101010" },
		-- other stuff
		DiagnosticUnderlineError = { sp = "#856666"},
		DiagnosticError = { fg = "#856666"},
		Error = { fg = "#856666"},
		ErrorMsg = { fg = "#856666"},
		String = { fg = "#99b699" },
		Number = { fg = "#5c7585" },
		cppFloat = { fg = "#527776" },
		cppConstant = { fg = "#99aacc" },
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
