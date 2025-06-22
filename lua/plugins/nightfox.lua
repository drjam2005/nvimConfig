return {
  "EdenEast/nightfox.nvim",
  config = function()
    require('nightfox').setup({
      options = {
	styles = {               -- Style to be applied to different syntax groups
	  comments = "NONE",     -- Value is any valid attr-list value `:help attr-list`
	  conditionals = "NONE",
	  constants = "NONE",
	  functions = "NONE",
	  keywords = "NONE",
	  numbers = "NONE",
	  operators = "NONE",
	  strings = "NONE",
	  types = "NONE",
	  variables = "NONE",
	},
	inverse = {             -- Inverse highlight for different types
	  match_paren = false,
	  visual = false,
	  search = false,
	},
	modules = {             -- List of various plugins and additional options
	  -- ...
	},
      },
      palettes = {
	  nordfox = {
	      bg1 = "#262626",
	      bg2 = "#262626",
	  },
      },
      specs = {},
      groups = {
	  nordfox = {
	      Normal = { bg = "#151515", },
	      NormalNC = { bg = "#151515", },
	      NormalFloat = { bg = "#151515", },
	      NeoTreeNormal = { bg = "#202020", },
	      NeoTreeNormalNC = { bg = "#202020", },
	      NeoTreeNormalFloat = { bg = "#202020", },
	      NeoTreePopup = { bg = "#202020", },
	      NeoTreeFloatBorder = { bg = "#202020", },
	      NeoTreeOpenedFolderName = { style = "italic" },
	      NeoTreeDirectoryIcon = { fg = "#808083"},
	      WinSeparator = { bg = "#151515", fg="#151515" },
	      CursorLine = { bg = "#313131" },
	      Visual = { bg = "#343434" },
	      Comment = { fg = "#454545" },

	      -- lualine shit
	      LuaLineBNormal = { bg = "#151515"},
	      LuaLineAInsert = { fg = "#151515"},
	      StatusLineNC = { bg = "#151515", fg = "#151515" },
	      StatusLine = { bg = "#151515", fg = "#151515" },

	  },
      },
    })

    -- setup must be called before loading
  end
} -- lazy
