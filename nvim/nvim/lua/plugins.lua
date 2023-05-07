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
  use 'ofirgall/ofirkai.nvim'                   -- Theme based in monokai
  use 'nvim-tree/nvim-tree.lua'                 -- File explorer Nerd tree alternative
  use 'rcarriga/nvim-notify'                    -- Neovim Notifications
  use 'lewis6991/gitsigns.nvim'                 -- Git view in bar
  use 'lewis6991/satellite.nvim'                -- Custom scrollbar for neovim
  use 'voldikss/vim-floaterm'                   -- Float terminal
  use 'williamboman/mason.nvim'                 -- Plugin manager
  use 'williamboman/mason-lspconfig.nvim'
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'mfussenegger/nvim-dap'
  use 'rbong/vim-flog'                          -- GIT commit visualizer
  use 'tpope/vim-fugitive'
  use 'nvim-lua/lsp-status.nvim'
  use 'wakatime/vim-wakatime'                   -- wakatime
  use 'tribela/vim-transparent'
  use 'norcalli/nvim-colorizer.lua'             -- Colorizer
  use 'maxmx03/fluoromachine.nvim'              -- Night theme
  use 'jubnzv/virtual-types.nvim'               -- Virtual types
  use 'Xuyuanp/yanil'
  use 'm-demare/hlargs.nvim'
  use 'kevinhwang91/rnvimr'
  use 'freddiehaddad/feline.nvim'

  -- TELESCOPE CONFIGURATION
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'nvim-lua/plenary.nvim'

  -- PLUGIN'S WITH CONFIGURATION
  use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
  }

  -- Smooth cursor
  use { 'gen740/SmoothCursor.nvim',
      config = function()
          require('smoothcursor').setup()
      end
  }

  -- Trouble report error
  use { "folke/trouble.nvim",
      requires = "nvim-tree/nvim-web-devicons",
      config = function()
          require("trouble").setup {}
      end
  }

  -- aerial Snippet
  use {
    'stevearc/aerial.nvim',
    config = function() require('aerial').setup() end
  }

-- End main
end)
