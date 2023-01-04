-- **** Lua plugins configs ***
require("config/packer")
-- Lua Line Config
require('config/plugins/lualine')
-- BufferLine
require('config/plugins/bufferline')
-- nvim-tree
require('config/plugins/nvimtree')
-- treesitter
require('config/plugins/treesitter')
-- Dashboard nvim
require('config/plugins/dashboard')
require('config/plugins/lsp')
-- indent-blankline configuration
 require('config/plugins/indent-blankline')
-- **** End Lua plugins configs ***

-- *** Settings ***
require("config/setting")
require("config/keymaps")
