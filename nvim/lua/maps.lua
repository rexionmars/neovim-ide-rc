local keymap = vim.keymap

-- Do not yank with x
keymap.set('n', 'x', '"_x')

-- File explorer
keymap.set('n', 'fl', ':NvimTreeToggle<Return>', {silent = true})

-- Float terminal
keymap.set('n', '<C-m>', ':FloatermNew<Return>', {silent = true})

-- Trunble
keymap.set('n', '<C-t>', ':Trouble<Return>', {silent = true})

-- Increment/Decremente
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Select All
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- New tab
keymap.set('n', 'te', ':tabedit<Return>', { silent = true })
-- Split Window
keymap.set('n', 'ss', ':split<Return><C-w>w', { silent = true })
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })

--Move Window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 's<left>', '<C-w>h')
keymap.set('', 's<up>', '<C-w>k')
keymap.set('', 's<down>', '<C-w>j')
keymap.set('', 's<right>','<C-w>l')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>j')

--Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')
