require('base')
require('highlights')
require('maps')
require('plugins')

-- Hidden Status Line
vim.cmd('set laststatus=0')

-- Themes
vim.cmd('color fluoromachine')

vim.cmd('set nocursorline')
vim.cmd('set nocursorcolumn')
vim.cmd('set t_Co=256')
--vim.cmd('set colorcolumn=100')
vim.cmd('set termguicolors')
