local status, bufferline = pcall(require, 'bufferline')
if (not status) then return end

bufferline.setup {
  options = {
    mode = 'tabs',
    separator_style = 'slant',
    always_show_bufferline = true,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true,
  },
  highlights = {
    separator = {
      fg = '#000000', -- Inative triangle separator
      bg = '#000000'  -- Inative triangle buffer
    },
    separator_selected = {
      fg = '#000000', -- Triangle separator
      bg = '#000000'
    },
    background = {
      fg = '#B88D11', -- Inative buffer foreground Text
      bg = '#000000'  -- Inative buffer background
    },
    buffer_selected = {
      fg = '#ffbd00', -- Active buffer name Text
      bg = '#000000'  -- Tab background (active buffer)
    },
    fill = {
      bg = '#000000', -- Complete line background
      fg = '#000000'
    }
  }
}

vim.api.nvim_set_keymap('n', '<Tab>', '<cmd>BufferLineCycleNext<cr>', {})
vim.api.nvim_set_keymap('n', '<S-Tab>', '<cmd>BufferLineCyclePrev<cr>', {})
