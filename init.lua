vim.cmd('luafile ~/.config/nvim/bindings.lua')
vim.pack.add({
    { src = "https://github.com/folke/trouble.nvim" },
    { src = "https://github.com/neovim/nvim-lspconfig" },
    { src = "https://github.com/nvim-lua/plenary.nvim" },
    { src = "https://github.com/nvim-treesitter/nvim-treesitter" },
    { src = "https://github.com/mikavilpas/yazi.nvim", },
    { src = "https://github.com/lervag/vimtex" },
    { src = "https://github.com/akinsho/toggleterm.nvim", },
    { src = "https://github.com/folke/zen-mode.nvim", },
    { src = "https://github.com/mbbill/undotree", },
    { src = "https://github.com/echasnovski/mini.move", },
    { src = "https://github.com/mason-org/mason.nvim", },
    { src = "https://github.com/NStefan002/screenkey.nvim", },
    { src = "https://github.com/OXY2DEV/markview.nvim", },
	{ src = "https://github.com/rose-pine/neovim" },
	{ src = "https://github.com/vague2k/vague.nvim" },
    { src = "https://github.com/ficd0/ashen.nvim", },
    { src = "https://github.com/slugbyte/lackluster.nvim", },
	{ src = "https://github.com/Thiago4532/mdmath.nvim", },
    { src = "https://github.com/sahaj-b/brainrot.nvim", },
    { src = "https://github.com/3rd/image.nvim", },
})

-- treesitter
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "cpp" },
  highlight = { enable = true },
}

-- lspconfig
local lspconfig = require('lspconfig')

lspconfig.pyright.setup({
  on_attach = function(client, bufnr)
    -- basic keymaps
    local opts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
  end,
})

vim.lsp.config["tinymist"] = {
    cmd = { "tinymist" },
    filetypes = { "typst" },
    settings = {
    }
}
lspconfig.clangd.setup({
  cmd = {
    "clangd",
    "--header-insertion=never",
    "--query-driver=/usr/bin/g++",
  },
  on_attach = function(client, bufnr)
    local opts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
  end,
})

-- yazi
require("yazi").setup({
    open_for_directories = true,
})

require("brainrot").setup( {
		disable_phonk = true,
		phonk_time = 2.5,
		block_input = true,    -- block input during phonk/overlay
		dim_level = 60,        -- phonk overlay darkness 0..100

		sound_enabled = true,  -- enable sounds
		image_enabled = true,  -- enable images (needs image.nvim)

		--boom_volume = 50,      -- volume for vine boom sound (0..100)
		boom_volume = 0,      -- volume for vine boom sound (0..100)
		phonk_volume = 50,     -- volume for phonk sound (0..100)

		boom_sound = nil,      -- custom boom sound path (e.g., "~/sounds/boom.ogg")
		phonk_dir = nil,       -- custom phonk folder path (e.g., "~/sounds/phonks")
		image_dir = nil,       -- custom image folder path (e.g., "~/memes/images")
	}
)
-- trouble
require("trouble").setup({
    cmd = "Trouble",
})


-- treesitter
require("nvim-treesitter.configs").setup({
  ensure_installed = { "lua", "c", "cpp", "python", "javascript" }, -- parsers
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
})

-- mini.move
require("mini.move").setup({ })

-- mason
require("mason").setup({})

local toggleterm = require("toggleterm")
local isTerm = false
toggleterm.setup({
      on_open = function()
	isTerm = true
      end, -- function to run when the terminal opens
      on_close = function()
	isTerm = false
      end, -- function to run when the terminal closes
})
-- zen-mode
require("zen-mode").setup({
    window = {
	backdrop = 0.5,
	width = 0.7
    },
    on_open = function(win)
	if(isTerm) then
	    toggleterm.toggle(1)
	end
	toggleterm.setup({
	    start_in_insert = false,
	    direction = 'float',
	})
    end,
    on_close = function()
	toggleterm.setup({
	    start_in_insert = false,
	    direction = 'horizontal',
	})
    end,
})

require("image").setup()

-- screenkey
require("screenkey").setup({
    win_opts = {
        row = vim.o.lines - vim.o.cmdheight - 1,
        col = vim.o.columns - 1,
        relative = "editor",
        anchor = "SE",
        width = 40,
        height = 3,
        border = "single",
        title = "Screenkey",
        title_pos = "center",
        style = "minimal",
        focusable = false,
        noautocmd = true,
    },
})

-- vimtex
vim.g.vimtex_view_method = 'zathura'
vim.g.vimtex_view_forward_search_on_start = 0
vim.g.vimtex_compiler_latexmk = { aux_dir = '/home/james/.texfiles', build_dir = 'out'}

vim.keymap.set('n', '<leader>t', "<cmd>Yazi<cr>")
vim.keymap.set('i', '<C-Space>', "<C-x><C-o>", { noremap = true})
vim.keymap.set('n', '<A-t>', "<CMD>ToggleTerm<CR>")
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], {noremap = true })

vim.lsp.enable({
    "lua_ls",
    "texlab",
    "clangd",
    "jdtls",
    "biome",
    "ts_ls",
    "pyright",
    "tinymist",
})


-- vim.cmd("colorscheme lackluster-dark")
-- vim.cmd("colorscheme ashen")
vim.cmd("colorscheme retrobox")
if vim.env.TERM == "linux" then
    vim.cmd("colorscheme slate")
end
if vim.env.TERM == "tmux_256color" then
    vim.cmd("colorscheme slate")
end
vim.cmd("hi Normal guibg=NONE")
vim.cmd("hi SignColumn guibg=NONE")
vim.cmd("set guicursor=n-v-c-sm:block")
