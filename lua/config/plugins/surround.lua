-- Configuración de nvim-surround
require('nvim-surround').setup{
  -- Configurar los entornos
  surround_pairs = {
    ['('] = ')',
    ['['] = ']',
    ['{'] = '}',
    ['<'] = '>',
    ['"'] = '"',
    ["'"] = "'",
  },
  -- Configurar los keymaps
  mappings = {
    -- ysiw)
    ['<leader>p'] = '<Plug>SurroundSubwordParenthesis',
    -- ds]
    ['<leader>d]'] = '<Plug>SurroundDelete',
    -- dst
    ['<leader>d<leader>t'] = '<Plug>SurroundStrip',
    -- ys"
    ['<leader>s"'] = '<Plug>SurroundSubwordQuotes',
    -- cs"
    ['<leader>c"'] = '<Plug>SurroundChange',
    -- csth1<CR>
    ['<leader>ch'] = '<Plug>SurroundChangeTag',
    -- dsf
    ['<leader>df'] = '<Plug>SurroundFunction',
  }
}
