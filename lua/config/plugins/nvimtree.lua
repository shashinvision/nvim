-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true
-- Show dotfiles by default
vim.g.nvim_tree_hide_dotfiles = 0

require'nvim-tree'.setup({
  sort_by = "case_sensitive",
  renderer = {
    group_empty = true,
    special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md", ".env", "env", "TODO" },
  },
  filters = {
    dotfiles = false,
    git_clean = false,
    exclude = {},
  },
  git = {
    enable = true,
    ignore = false,
    show_on_dirs = true,
    show_on_open_dirs = true,
    timeout = 400,
  },
})
