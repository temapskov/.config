-- Назначение <leader>
vim.g.mapleader = ","

-- Убрать подсветку поисковой фразы
vim.keymap.set('n', '<leader><space>', ':nohlsearch<CR>')

-- Переключение tab на H и L
vim.keymap.set('n', 'H', 'gT')
vim.keymap.set('n', 'L', 'gt')

-- Переключение между окнами
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

