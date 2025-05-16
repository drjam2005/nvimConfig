vim.cmd("set shiftwidth=4")
vim.cmd("set relativenumber")
vim.cmd("set number")
vim.g.mapleader = " "

vim.keymap.set('n', '<C-h>', '<C-w><C-h>')
vim.keymap.set('n', '<C-j>', '<C-w><C-j>')
vim.keymap.set('n', '<C-k>', '<C-w><C-k>')
vim.keymap.set('n', '<C-l>', '<C-w><C-l>')

vim.keymap.set('i', '<C-h>', '<C-Left')
vim.keymap.set('i', '<C-j>', '<Down>')
vim.keymap.set('i', '<C-k>', '<Up>')
vim.keymap.set('i', '<C-l>', '<C-Right')

vim.opt.wrap = false
vim.keymap.set('n', 'L', 'zl')
vim.keymap.set('n', 'H', 'zh')


vim.cmd("set scrolloff=5")
