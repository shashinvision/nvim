local o = vim.o --vim options
local wo = vim.wo -- values per windows
local bo = vim.bo -- values per buffers
local opt = vim.opt -- Generals options (Windows/Files)
local g = vim.g -- Globals values
local env = vim.env -- Environment variables
local cmd = vim.cmd -- for VimScript commands
local key = vim.keymap -- for keymaps

-- Vim Script Settings
cmd 'source ~/.config/nvim/lua/settings/config.vim'
cmd 'source ~/.config/nvim/lua/settings/keymaps.vim'

-- **** Lua plugins configs ***
-- Telescope configuration
require('plugins/config/telescope')


