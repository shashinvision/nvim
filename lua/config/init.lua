-- **** Lua plugins configs ***
require("config/packer")
-- Telescope configuration
-- require('config/plugins/telescope')
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
-- **** End Lua plugins configs ***

-- *** Settings ***
require("config/setting")
require("config/keymaps")
