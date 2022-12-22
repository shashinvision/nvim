vim.opt.signcolumn = 'yes' -- Reserve space for diagnostic icons

local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.ensure_installed({
  'tsserver',
  'eslint',
  'sumneko_lua',
  'phpactor'
})

require('lspconfig').intelephense.setup {}
lsp.nvim_workspace()

lsp.setup()
