vim.cmd("set shiftwidth=4")
vim.cmd("set tabstop=4")
vim.cmd("set relativenumber")
vim.cmd("set number")
vim.cmd("command W w")
vim.g.mapleader = " "

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', opts)
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', opts)
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', opts)
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', opts)
vim.keymap.set('n', '<c-m-h>', '<c-w><s-h>', opts)
vim.keymap.set('n', '<c-m-j>', '<c-w><s-j>', opts)
vim.keymap.set('n', '<c-m-k>', '<c-w><s-k>', opts)
vim.keymap.set('n', '<c-m-l>', '<c-w><s-l>', opts)
vim.keymap.set('n', '<Esc>', '<Esc>:noh<cr>', opts)

vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-S-d>', '<C-u>zz', opts)

vim.keymap.set('i', '<C-h>', '<C-Left>', opts)
vim.keymap.set('i', '<C-j>', '<Down>', opts)
vim.keymap.set('i', '<C-k>', '<Up>', opts)
vim.keymap.set('i', '<C-l>', '<C-Right>', opts)

vim.keymap.set('t', '<C-h>', '<C-\\><C-n><C-w><C-h><C-w><C-h>', opts)
vim.keymap.set('t', '<C-j>', '<C-\\><C-n><C-w><C-h><C-w><C-j>', opts)
vim.keymap.set('t', '<C-k>', '<C-\\><C-n><C-w><C-h><C-w><C-k>', opts)
vim.keymap.set('t', '<C-l>', '<C-\\><C-n><C-w><C-h><C-w><C-l>', opts)

vim.o.wrap = false
vim.o.signcolumn = "yes"
vim.keymap.set('n', 'L', 'zlzlzl', opts)
vim.keymap.set('n', 'H', 'zhzhzh', opts)

vim.keymap.set('n', '<C-c>', '"+y')
vim.keymap.set('v', '<C-c>', '"+y')
vim.cmd("set scrolloff=5")
