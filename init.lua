vim.cmd('luafile ~/.config/nvim/bindings.lua')
vim.pack.add({
    { src = "https://github.com/rose-pine/neovim" },
    { src = "https://github.com/neovim/nvim-lspconfig" },
    { src = "https://github.com/nvim-lua/plenary.nvim" },
    { src = "https://github.com/mikavilpas/yazi.nvim", },
    { src = "https://github.com/lervag/vimtex" },
    { src = "https://github.com/akinsho/toggleterm.nvim", },
})

-- yazi
require("yazi").setup({
    open_for_directories = true,
})

-- alt term
require("toggleterm").setup({
    direction = 'horizontal',
})

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
    "ast-grep",
    "biome",
})

vim.cmd("colorscheme rose-pine")
vim.cmd("hi Normal guibg=NONE")
