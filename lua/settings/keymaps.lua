local api = vim.api -- API VIM
local keymap = api.nvim_set_keymap  -- for keymaps
local cmd = vim.cmd -- for VimScript commands


-- Increment/decrement
keymap('n', '+', '<C-a>', {noremap = true})
keymap('n', '-', '<C-x>', {noremap = true})
-- New tab
keymap('n', '<leader>nf', ':DashboardNewFile<CR>', {noremap = true})
-- Delete a word backwards
keymap('n', 'db', 'vb"_d', {noremap = true})
-- Move on windows
keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = false })
keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = false })
keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = false })
keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = false })

keymap('i', 'jk', '<ESC>', {noremap = true}) -- Simula la tecla escape en el modo insert
keymap('n', 'n', 'nzzzv', { noremap = true }) --Centrar en las busquedas
keymap('n', '<C-s>', ':w<CR>', { noremap = true }) -- Save buffer
keymap('n', '<leader>a', ':wa<CR>', { noremap = true }) -- save all buffers open
keymap('n', '<C-x>', ':x<CR>', { noremap = true }) -- save and exit
keymap('n', '<C-q>', ':q!<CR>', { noremap = true }) -- Exit without save Force!!!
keymap('n', '<C-p>', ':bprev<CR>', { noremap = true }) -- buffer previous
keymap('n','<C-n>', ':bnext<CR>', { noremap = true }) --buffer next
keymap('n', 'wh', ':split<Return><C-w>w', { noremap = true }) -- horizontal split
keymap('n', 'wv', ':vsplit<Return><C-w>h', {noremap = true}) --vertical split
keymap('n', 'dt', ':diffthis<CR>', {noremap = true}) -- Para su correcto uso se debe hacer un split de pantalla con dos archivos, posicionado en cada archivo se hace un leader +4 y se procede a comprar
keymap('n', 'bd', ':bd<CR>', {noremap = true}) -- para cerrar el buffer actual
keymap('n', '<leader>e', ':Lexplore<cr>', {noremap = true}) -- para abrir/cerrar el explorador Lexplore
keymap('n', 'fs', ':source %<cr>', {noremap = true}) -- para recargar un archivo de forma manual
keymap('n', '<leader><leader>', '<S-$>%', {noremap = true, silent = false }) -- Te lleva al final o el principio de llave relacionada {}[]()
keymap('n', '<leader>z', '<S-$>zf%', {noremap = true, silent = false }) -- para plegar codigo de manera sencilla, debes colocarte en el principo de la, llave {}[]() y listo, con za en modo normal vuelves a desplegar el codigo
-- select all
keymap('n', '<C-a>','ggVG', {noremap = true}) --" Para seleccionar todo con Control + A
keymap('n', 'bl', ':buffers<CR>', {noremap = true}) --" Para mostrar un listado de los buffers
keymap('n', '<leader>c', ':nohlsearch<CR>h:echo " "<CR>', {noremap = true, silent = true})  -- Limpia las busquedas
keymap('n','gd', '<Plug>(coc-definition)', {silent = true})
keymap('n','gi', '<Plug>(coc-implementation)', {silent = true})
keymap('n','gr','<Plug>(coc-references)', {silent = true})
keymap('n', '<C-t>', '<cmd>NvimTreeToggle<cr>', {noremap = true})
keymap('n', '<C-f>', '<cmd>NvimTreeFindFile<cr>', {noremap = true})
-- Terminal split
keymap('n', 'tv', ':VTerm<CR>', {noremap = true})
keymap('n', 'th', ':Term<CR>', {noremap = true})

-- UndoTree sirve para ver un listado en forma de arbol de los cambios en un archivo, es como un versionamiento a tiempo real
keymap('n', 'ut', ':UndotreeToggle<CR>', {noremap = true})
keymap('n', 'wr', ':WinResizerStartResize<CR>', {noremap = true})

-- Para elegir que extension de VUE quiero desabilitar por el momento, solo dura la sesion de VIM en la que estas
keymap('n', 'cl', ':CocList extensions<CR>', {noremap = true})

-- Para Git
keymap('n','<leader>gb' , ':Git blame<cr>', {noremap = true})
keymap('n','<leader>gs' , ':Git<cr>', {noremap = true}) --Para el status
keymap('n','<leader>gc' , ':Git commit -v<cr>', {noremap = true})
keymap('n','<leader>ga' , ':Git add -p<cr>', {noremap = true})
keymap('n','<leader>gm' , ':Git commit --amend<cr>', {noremap = true})
keymap('n','<leader>gp' , ':Git push<cr>', {noremap = true})
keymap('n','<leader>gu' , ':Git pull<cr>', {noremap = true})
keymap('n','<leader>gd' , ':Git diff<cr>', {noremap = true})
keymap('n','<leader>gw' , ':Git write<cr>', {noremap = true})
keymap('n','<leader>gl' , ':Git log<cr>', {noremap = true})
keymap('n','<leader>gh' , ':DiffviewFileHistory<cr>', {noremap = true})
keymap('n','<leader>mg' , ':GitMessenger<cr>', {noremap = true})

-- Find files using Telescope command-line sugar.
keymap('n', 'ff' , "<cmd>:lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({}))<cr>", {noremap = true})
keymap('n', 'fw' , "<cmd>:lua require'telescope.builtin'.live_grep(require('telescope.themes').get_dropdown({}))<cr>", {noremap = true})
keymap('n','fb',':Telescope file_browser<cr>',{ noremap = true })
keymap('n', 'fh' , "<cmd>:lua require'telescope.builtin'.oldfiles(require('telescope.themes').get_dropdown({}))<cr>", {noremap = true})
keymap('n', '<leader>fb' , "<cmd>:lua require'telescope.builtin'.buffers(require('telescope.themes').get_dropdown({}))<cr>", {noremap = true})

-- Prettier
keymap('n', 'fp', '<Plug>(Prettier)', {noremap = true})

-- Live Serve
keymap('n', '<leader>ls', ':Bracey<cr>', { noremap = true})
keymap('n', '<leader>lp', ':BraceyStop<cr>', { noremap = true})
-- Para multicursor
cmd([[
    let g:VM_maps = {}
    let g:VM_maps['Find Under']         = '<C-d>'  " replace C-d
    let g:VM_maps['Find Subword Under'] = '<C-d>'  " replace visual C-d
    " let g:VM_mouse_mappings = 1
  ]])

keymap('n', '<C-LeftMouse>', '<Plug>(VM-Mouse-Cursor)', {noremap = true})
keymap('n', '<C-RightMouse>', '<Plug>(VM-Mouse-Word)', {noremap = true})
keymap('n', '<M-C-RightMouse>', '<Plug>(VM-Mouse-Column)', {noremap = true})

-- Neovim Spectre
keymap('n', '<leader>s', '<cmd>lua require("spectre").open()<CR>', {noremap = true})
keymap('v', '<leader>s', '<esc>:lua require("spectre").open_visual()<CR>', {noremap = true})
-- search current word
keymap('n', '<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {noremap = true})
--  search in current file
keymap('n', '<leader>sf', 'viw:lua require("spectre").open_file_search()<cr>', {noremap = true})
-- run command :Spectre
-- keymap('n', '<leader>st', ':Startify<cr>', {noremap = true})
keymap('n', '<leader>d', ':Dashboard<cr>', {noremap = true})

-- for Vim-Bookmarks
keymap('n', 'bm', '<Plug>BookmarkToggle', {noremap = true})
keymap('n', 'bi', '<Plug>BookmarkAnnotate', {noremap = true})
keymap('n', 'ba', '<Plug>BookmarkShowAll', {noremap = true})
keymap('n', 'bn', '<Plug>BookmarkNext', {noremap = true})
keymap('n', 'bp', '<Plug>BookmarkPrev', {noremap = true})
keymap('n', 'bc', '<Plug>BookmarkClear', {noremap = true})
keymap('n', 'bx', '<Plug>BookmarkClearAll', {noremap = true})
keymap('n', 'bk', '<Plug>BookmarkMoveUp', {noremap = true})
keymap('n', 'bj', '<Plug>BookmarkMoveDown', {noremap = true})
keymap('n', 'bg', '<Plug>BookmarkMoveToLine', {noremap = true})

-- for react refactor coc
keymap('x', 'ra', '<Plug>(coc-codeaction-selected)', {noremap = true})
keymap('n', 'ra', '<Plug>(coc-codeaction-selected)', {noremap = true})
