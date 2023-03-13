vim.opt.signcolumn = 'yes' -- Reserve space for diagnostic icons

local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.ensure_installed({
  'tsserver',
  'eslint',
  'emmet_ls',
  'lua_ls',
  -- 'sumneko_lua',
  'pyright',
  'bashls',
  'cssls',
  'eslint',
  'html',
  'jsonls',
  'tsserver',
  'yamlls'
})

lsp.nvim_workspace()

lsp.setup()
