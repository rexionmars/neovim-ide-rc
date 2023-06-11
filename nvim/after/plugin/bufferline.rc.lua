local status, bufferline = pcall(require, 'bufferline')
if (not status) then return end

bufferline.setup {
  options = {
    mode = 'tabs',
    separator_style = 'slant',
    always_show_bufferline = false,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true,
  },
  highlights = {
    separator = {
      fg = '#2d333b', -- Inative triangle separator
      bg = '#202020'  -- Inative triangle buffer
    },
    separator_selected = {
      fg = '#2d333b', -- Triangle separator
      bg = '#22272E'
    },
    background = {
      fg = '#B88D11', -- Inative buffer foreground Text
      bg = '#202020'  -- Inative buffer background
    },
    buffer_selected = {
      fg = '#ffbd00', -- Active buffer name Text
      bg = '#22272E'  -- Tab background (active buffer)
    },
    fill = {
      bg = '#2d333b', -- Complete line background
      fg = '#FF0000'
    }
  }
}

vim.api.nvim_set_keymap('n', '<Tab>', '<cmd>BufferLineCycleNext<cr>', {})
vim.api.nvim_set_keymap('n', '<S-Tab>', '<cmd>BufferLineCyclePrev<cr>', {})
