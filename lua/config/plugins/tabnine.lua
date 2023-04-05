require('compe').setup({
  source = {
    tabnine = true,
    nvim_lsp = true,
  },
   priority = {
    nvim_lsp = 100,
    tabnine = 90,
  },
})


