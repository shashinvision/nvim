local cmd = vim.cmd -- for VimScript commands


-- Increment/decrement
vim.keymap.set('n', '+', '<C-a>', {noremap = true})
vim.keymap.set('n', '-', '<C-x>', {noremap = true})
-- New tab
vim.keymap.set('n', '<leader>nf', ':DashboardNewFile<CR>', {noremap = true})
-- Delete a word backwards
vim.keymap.set('n', 'db', 'vb"_d', {noremap = true})
-- Move on windows
vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true, silent = false })
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true, silent = false })
vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap = true, silent = false })
vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap = true, silent = false })

-- Move lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Replace a word in entire buffer
vim.keymap.set("n", "<leader>rr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Make a file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set('i', 'jk', '<ESC>', {noremap = true}) -- Simula la tecla escape en el modo insert
vim.keymap.set('n', 'n', 'nzzzv', { noremap = true }) --Centrar en las busquedas
vim.keymap.set('n', 'N', 'Nzzzv', { noremap = true }) --Centrar en las busquedas
vim.keymap.set('n', '<C-s>', ':w<CR>', { noremap = true }) -- Save buffer
vim.keymap.set('n', '<leader>sa', ':wa<CR>', { noremap = true }) -- save all buffers open
vim.keymap.set('n', '<C-x>', ':x<CR>', { noremap = true }) -- save and exit
vim.keymap.set('n', '<C-q>', ':q!<CR>', { noremap = true }) -- Exit without save Force!!!
vim.keymap.set('n', '<C-p>', ':bprev<CR>', { noremap = true }) -- buffer previous
vim.keymap.set('n','<C-n>', ':bnext<CR>', { noremap = true }) --buffer next
vim.keymap.set('n', '<leader>wh', ':split<Return><C-w>w', { noremap = true }) -- horizontal split
vim.keymap.set('n', '<leader>wv', ':vsplit<Return><C-w>h', {noremap = true}) --vertical split
vim.keymap.set('n', 'dt', ':diffthis<CR>', {noremap = true}) -- Para su correcto uso se debe hacer un split de pantalla con dos archivos, posicionado en cada archivo se hace un leader +4 y se procede a comprar
vim.keymap.set('n', 'bd', ':bd<CR>', {noremap = true}) -- para cerrar el buffer actual
vim.keymap.set('n', '<leader>e', ':Lexplore<cr>', {noremap = true}) -- para abrir/cerrar el explorador Lexplore
vim.keymap.set('n', 'fs', ':source %<cr>', {noremap = true}) -- para recargar un archivo de forma manual
vim.keymap.set('n', '<leader><leader>', '<S-$>%', {noremap = true, silent = false }) -- Te lleva al final o el principio de llave relacionada {}[]()
vim.keymap.set('n', '<leader>z', '<S-$>zf%', {noremap = true, silent = false }) -- para plegar codigo de manera sencilla, debes colocarte en el principo de la, llave {}[]() y listo, con za en modo normal vuelves a desplegar el codigo
-- select all
vim.keymap.set('n', '<C-a>','ggVG', {noremap = true}) --" Para seleccionar todo con Control + A
vim.keymap.set('n', 'bl', ':buffers<CR>', {noremap = true}) --" Para mostrar un listado de los buffers
vim.keymap.set('n', '<leader>c', ':nohlsearch<CR>h:echo " "<CR>', {noremap = true, silent = true})  -- Limpia las busquedas


vim.keymap.set('n', '<C-t>', '<cmd>NvimTreeToggle<cr>', {noremap = true})
vim.keymap.set('n', '<C-f>', '<cmd>NvimTreeFindFile<cr>', {noremap = true})
-- Terminal split
vim.keymap.set('n', 'tv', ':VTerm<CR>', {noremap = true})
vim.keymap.set('n', 'th', ':Term<CR>', {noremap = true})

-- UndoTree sirve para ver un listado en forma de arbol de los cambios en un archivo, es como un versionamiento a tiempo real
vim.keymap.set('n', 'ut', ':UndotreeToggle<CR>', {noremap = true})
vim.keymap.set('n', 'wr', ':WinResizerStartResize<CR>', {noremap = true})

-- Para Git
vim.keymap.set('n','<leader>gb' , ':Git blame<cr>', {noremap = true})
vim.keymap.set('n','<leader>gs' , ':Git<cr>', {noremap = true}) --Para el status
vim.keymap.set('n','<leader>gc' , ':Git commit -v<cr>', {noremap = true})
vim.keymap.set('n','<leader>ga' , ':Git add -p<cr>', {noremap = true})
vim.keymap.set('n','<leader>gm' , ':Git commit --amend<cr>', {noremap = true})
vim.keymap.set('n','<leader>gp' , ':Git push<cr>', {noremap = true})
vim.keymap.set('n','<leader>gu' , ':Git pull<cr>', {noremap = true})
vim.keymap.set('n','<leader>gd' , ':Git diff<cr>', {noremap = true})
vim.keymap.set('n','<leader>gw' , ':Git write<cr>', {noremap = true})
vim.keymap.set('n','<leader>gl' , ':Git log<cr>', {noremap = true})
vim.keymap.set('n','<leader>gh' , ':DiffviewFileHistory<cr>', {noremap = true})
vim.keymap.set('n','<leader>mg' , ':GitMessenger<cr>', {noremap = true})

-- Find files using Telescope command-line sugar.
vim.keymap.set('n', 'ff' , "<cmd>:lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({}))<cr>", {noremap = true})
vim.keymap.set('n', 'fw' , "<cmd>:lua require'telescope.builtin'.live_grep(require('telescope.themes').get_dropdown({}))<cr>", {noremap = true})
vim.keymap.set("n", "fb", "<Cmd>lua require('telescope').extensions.file_browser.file_browser(require('telescope.themes').get_dropdown({}))<CR>", {noremap = true})
vim.keymap.set('n', 'fh' , "<cmd>:lua require'telescope.builtin'.oldfiles(require('telescope.themes').get_dropdown({}))<cr>", {noremap = true})
vim.keymap.set('n', '<leader>fb' , "<cmd>:lua require'telescope.builtin'.buffers(require('telescope.themes').get_dropdown({}))<cr>", {noremap = true})

-- Prettier
vim.keymap.set('n', 'fp', '<Plug>(Prettier)', {noremap = true})

-- Live Serve
vim.keymap.set('n', '<leader>ls', ':Bracey<cr>', { noremap = true})
vim.keymap.set('n', '<leader>lp', ':BraceyStop<cr>', { noremap = true})
-- Para multicursor
cmd([[
    let g:VM_maps = {}
    let g:VM_maps['Find Under']         = '<C-d>'  " replace C-d
    let g:VM_maps['Find Subword Under'] = '<C-d>'  " replace visual C-d
    " let g:VM_mouse_mappings = 1
  ]])

vim.keymap.set('n', '<C-LeftMouse>', '<Plug>(VM-Mouse-Cursor)', {noremap = true})
vim.keymap.set('n', '<C-RightMouse>', '<Plug>(VM-Mouse-Word)', {noremap = true})
vim.keymap.set('n', '<M-C-RightMouse>', '<Plug>(VM-Mouse-Column)', {noremap = true})

-- Neovim Spectre
vim.keymap.set('n', '<leader>s', '<cmd>lua require("spectre").open()<CR>', {noremap = true})
vim.keymap.set('v', '<leader>s', '<esc>:lua require("spectre").open_visual()<CR>', {noremap = true})
-- search current word
vim.keymap.set('n', '<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {noremap = true})
--  search in current file
vim.keymap.set('n', '<leader>sf', 'viw:lua require("spectre").open_file_search()<cr>', {noremap = true})
-- run command :Spectre
-- vim.keymap.set('n', '<leader>st', ':Startify<cr>', {noremap = true})
vim.keymap.set('n', '<leader>d', ':Dashboard<cr>', {noremap = true})

-- for Vim-Bookmarks
vim.keymap.set('n', 'bm', '<Plug>BookmarkToggle', {noremap = true})
vim.keymap.set('n', 'bi', '<Plug>BookmarkAnnotate', {noremap = true})
vim.keymap.set('n', 'ba', '<Plug>BookmarkShowAll', {noremap = true})
vim.keymap.set('n', 'bn', '<Plug>BookmarkNext', {noremap = true})
vim.keymap.set('n', 'bp', '<Plug>BookmarkPrev', {noremap = true})
vim.keymap.set('n', 'bc', '<Plug>BookmarkClear', {noremap = true})
vim.keymap.set('n', 'bx', '<Plug>BookmarkClearAll', {noremap = true})
vim.keymap.set('n', 'bk', '<Plug>BookmarkMoveUp', {noremap = true})
vim.keymap.set('n', 'bj', '<Plug>BookmarkMoveDown', {noremap = true})
vim.keymap.set('n', 'bg', '<Plug>BookmarkMoveToLine', {noremap = true})

