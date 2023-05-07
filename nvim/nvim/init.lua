require('base')
require('highlights')
require('maps')
require('plugins')

--vim.cmd('color ofirkai')
vim.cmd('color fluoromachine')

vim.cmd('set nocursorline')
vim.cmd('set t_Co=256')
vim.cmd('set colorcolumn=100')
vim.cmd('highlight CursorColumn guibg=#FF0050')
vim.diagnostic.config({ virtual_lines = true })
