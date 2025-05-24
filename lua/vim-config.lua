vim.cmd("set shiftwidth=4")
vim.cmd("set relativenumber")
vim.cmd("set number")
vim.g.mapleader = " "

local opts = { noremap = true, silent = true }

-- Window navigation
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', opts)
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', opts)
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', opts)
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', opts)
vim.keymap.set('n', '<Esc>', '<Esc>:noh<cr>', opts)

vim.keymap.set('n', '<C-D>', '<C-u>')
vim.keymap.set('n', '<C-d>', '<C-d>')

-- Insert mode movement
vim.keymap.set('i', '<C-h>', '<C-Left>', opts)
vim.keymap.set('i', '<C-j>', '<Down>', opts)
vim.keymap.set('i', '<C-k>', '<Up>', opts)
vim.keymap.set('i', '<C-l>', '<C-Right>', opts)

-- Line wrapping
vim.opt.wrap = false
vim.keymap.set('n', 'L', 'zl', opts)
vim.keymap.set('n', 'H', 'zh', opts)


vim.cmd("set scrolloff=5")
