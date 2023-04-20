local status, nvim_lsp = pcall(require, 'lspconfig')
if (not status) then return end

local protocol = require('vim.lsp.protocol')
--local vapabilities = require('cmp_nvim_lsp').default_capabilities()

local on_attach = function(client, bufnr)
  -- FORMATING
  if client.server_capabilities.documentFormatingProvider then
    vim.api.nvim_command [[augroup Format]]
    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[autocmd! BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
    vim.api.nvim_command [[augroup END]]
  end
end

-- TYPESCRIPT CONFIGURATION
nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
  cmd = { "typescript-language-server", "--stdio" },
}

-- BASHLS CONFIGURATION
nvim_lsp.bashls.setup {
  on_attach = on_attach,
  cmd = {
    "bash-language-server",
    "start"
  },
  filetypes = {
    "sh"
  }
}

-- C++ WITH CLANGD
nvim_lsp.clangd.setup {
  on_attach = on_attach,
  cmd = {
    "clangd"
  },
  filetypes = {
    "c",
    "cpp",
    "objc",
    "objcpp",
    "cuda",
    "proto"
  }
}

-- PYTHON WITH PYRIGHT
nvim_lsp.pyright.setup {
  on_attach = on_attach,
  cmd = {
    "pyright-langserver",
    "--stdio"
  },
  filetypes = {
    "python"
  },
  settings = {
    python = {
    analysis = {
      autoSearchPaths = true,
      diagnosticMode = "workspace",
      useLibraryCodeForTypes = true
    }
  }
  }
}

-- RUST LANGUAGE SUPORT
nvim_lsp.rust_analyzer.setup {
    on_attach = on_attach,
    cmd = {
        "rust-analyzer"
    },
    filetypes = {
        "rust"
    },
    settings = {
        ["rust-analyzer"] = {}
    }
}

nvim_lsp.ruby_ls.setup {
    on_attach = on_attach,
    cmd = {
        "ruby-lsp"
    },
    filetypes = {
        "ruby"
    }
}

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
  underline = true,
  update_in_insert = false,
  virtual_text = { spacing = 4, prefix = "🔺" },
  severity_sort = true,
}
)

-- Diagnostic symbols in the sign column (gutter)
local signs = { Error = "❌", Warn = "⚠️", Hint = "💡", Info = "🔥" }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

vim.diagnostic.config({
  virtual_text = {
    prefix = '●'
  },
  update_in_insert = true,
  float = {
    source = "always", -- Or "if_many"
  },
})
