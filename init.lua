vim.cmd('luafile ~/.config/nvim/bindings.lua')
vim.pack.add({
    { src = "https://github.com/rose-pine/neovim" },
    { src = "https://github.com/folke/trouble.nvim" },
    { src = "https://github.com/neovim/nvim-lspconfig" },
    { src = "https://github.com/vague2k/vague.nvim" },
    { src = "https://github.com/nvim-lua/plenary.nvim" },
    { src = "https://github.com/nvim-treesitter/nvim-treesitter" },
    { src = "https://github.com/mikavilpas/yazi.nvim", },
    { src = "https://github.com/lervag/vimtex" },
    { src = "https://github.com/akinsho/toggleterm.nvim", },
    { src = "https://github.com/folke/zen-mode.nvim", },
    { src = "https://github.com/mbbill/undotree", },
    { src = "https://github.com/echasnovski/mini.move", },
})

-- treesitter
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "cpp" },
  highlight = { enable = true },
}

-- lspconfig
local lspconfig = require('lspconfig')
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

-- trouble
require("trouble").setup({
    cmd = "Trouble",
})

-- alt term
require("toggleterm").setup({
    direction = 'horizontal',
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

-- vimtex
vim.g.vimtex_view_method = 'zathura'
vim.g.vimtex_view_forward_search_on_start = 0
vim.g.vimtex_compiler_latexmk = { aux_dir = '/home/james/.texfiles', build_dir = 'out'}

vim.keymap.set('n', '<leader>t', "<cmd>Yazi<cr>")
vim.keymap.set("n", "<A-t>", "<cmd>ToggleTerm<CR>", { desc = "Toggle Terminal" })
vim.keymap.set('i', '<C-Space>', "<C-x><C-o>", { noremap = true})
vim.lsp.enable({
    "lua_ls",
    "texlab",
    "clangd",
    "pylsp",
    "jdtls",
    "biome",
    "ts_ls",
    "pyright",
})

vim.cmd("colorscheme vague")
vim.cmd("hi Normal guibg=NONE")
vim.cmd("hi SignColumn guibg=NONE")
vim.cmd("set guicursor=n-v-c-sm:block")
