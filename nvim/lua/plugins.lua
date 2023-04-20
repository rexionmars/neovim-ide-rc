local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer is not installed")
  return
end

-- LOAD PACKER MANAGER
vim.cmd [[ packadd packer.nvim ]]

packer.startup(function(use)
  -- COMMONS PLUGIN'S
  use 'hoob3rt/lualine.nvim'                    -- Status Line
  use 'neovim/nvim-lspconfig'                   -- Language server protocol
  use 'onsails/lspkind-nvim'                    -- Vscode-like pictograms
  use 'hrsh7th/cmp-buffer'                      -- Nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp'                    -- Nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp'                        -- Completion
  use 'L3MON4D3/LuaSnip'                        -- Lua Snippet
  use 'windwp/nvim-autopairs'                   -- Set autopairs
  use 'kyazdani42/nvim-web-devicons'            -- Icons
  use 'akinsho/nvim-bufferline.lua'             -- Bufferline
  use 'glepnir/lspsaga.nvim'                    -- LSP Saga UIs
  use 'lukas-reineke/indent-blankline.nvim'     -- Indentline
  use 'ofirgall/ofirkai.nvim'                   -- Theme
  use 'n1ghtmare/noirblaze-vim'                 -- Pink theme
  use 'nvim-tree/nvim-tree.lua'                 -- File explorer Nerd tree alternative
  use 'rcarriga/nvim-notify'
  use 'lewis6991/gitsigns.nvim'
  use 'lewis6991/satellite.nvim'                -- Custom scrollbar for neovim
  use 'voldikss/vim-floaterm'
  use 'tomasr/molokai'
  use 'abnt713/vim-hashpunk'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'mfussenegger/nvim-dap'

  -- TELESCOPE CONFIGURATION
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'nvim-lua/plenary.nvim'

  -- PLUGIN'S WITH CONFIGURATION
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use { 'gen740/SmoothCursor.nvim',
  config = function()
    require('smoothcursor').setup()
    end
  }
  
  -- Lua
  use { "folke/trouble.nvim",
  requires = "nvim-tree/nvim-web-devicons",
  config = function()
    require("trouble").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
  }
end)
