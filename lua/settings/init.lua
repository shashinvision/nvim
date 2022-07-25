local cmd = vim.cmd
require('settings/config')

-- Vim Script Settings
cmd 'source ~/.config/nvim/lua/settings/config.vim'

cmd 'source ~/.config/nvim/lua/settings/keymaps.vim'

-- **** Lua plugins configs ***
-- Telescope configuration
require('plugins/config/telescope')


