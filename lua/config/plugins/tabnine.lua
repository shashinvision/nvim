require('compe').setup({
  source = {
    -- tabnine = true,
    tabnine = {
                detail_level = 1,
                max_request = 4,
                request_timeout = 5000
            },
    nvim_lsp = true,
  },
   priority = {
    nvim_lsp = 100,
    tabnine = 90,
  },
})


