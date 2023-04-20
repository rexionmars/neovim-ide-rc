local status, saga = pcall(require, 'lspsaga')
if (not status) then return end

saga.setup({
  ui = {
    winblend = 10,
    border = 'rounded',
    colors = {
      normal_bg = '#002b36'
    }
  }
})

local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<C-j>', '<cmd>Lspsaga diagnostic_jump_next<cr>', opts)
vim.keymap.set('n', 'K', '<cmd>Lspsaga hover_doc<cr>', opts)
vim.keymap.set('n', 'gd', '<cmd>Lspsaga lsp_finder<cr>', opts)
vim.keymap.set('i', '<C-k>', '<cmd>Lspsaga signature_help<cr>', opts)
vim.keymap.set('n', 'gp', '<cmd>Lspsaga peek_definition<cr>', opts)
vim.keymap.set('n', 'gr', '<cmd>Lspsaga rename<cr>', opts)
