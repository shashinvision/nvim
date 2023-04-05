-- **** Lua plugins configs ***
require("config/packer")
-- Dashboard nvim
-- require('config/plugins/dashboard')
-- Lua Line Config
require('config/plugins/lualine')
-- BufferLine
require('config/plugins/bufferline')
-- nvim-tree
require('config/plugins/nvimtree')
-- treesitter
require('config/plugins/treesitter')
-- indent-blankline configuration
require('config/plugins/indentblankline')
require('config/plugins/lsp')
require('config/plugins/tabnine')
-- **** End Lua plugins configs ***

-- *** Settings ***
require("config/setting")
require("config/keymaps")
