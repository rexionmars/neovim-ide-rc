local status, ts = pcall(require , 'nvim-treesitter.configs')
if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    'bash',
    'arduino',
    'c',
    'cpp',
    'cmake',
    'css',
    'javascript',
    'lua',
    'python',
    'rust',
    'tsx',
    'typescript',
  },
  autotag = {
    enable = true
  }
}
