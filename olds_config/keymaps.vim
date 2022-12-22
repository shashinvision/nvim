" *********** SHORTCUT CONFIG RAW (SIN PLUGINS)*************

nnoremap n nzzzv " Centrar en las busquedas

nmap <C-s> :w<CR>
nmap <leader>a :wa<CR> "save all buffers open
nmap <C-x> :x<CR>
nmap <C-q> :q!<CR>
" para navegar en el buffer
nnoremap <C-p> :bprev<CR>
nnoremap <C-n> :bnext<CR>

" windows split vertical/horizontal
nnoremap <leader>wh :split<CR>
nnoremap <leader>wv :vsplit<CR>

" Para su correcto uso se debe hacer un split de pantalla con dos archivos, posicionado en cada archivo se hace un leader +4 y se procede a comprar
nnoremap <leader>dt :diffthis<CR>

" para cerrar el buffer actual
nnoremap <leader>bd :bd<CR>

" para abrir/cerrar el explorador Lexplore
nnoremap <leader>e :Lexplore<cr>

" para recargar un archivo de forma manual
nnoremap <leader>fs :source %<cr>

" para plegar codigo de manera sencilla, debes colocarte en el principo de la
" llave {}[]() y listo
nnoremap <leader>zf zf%<cr>
" Para desplegar el codigo plegado
nnoremap <leader>za za<cr>
" Para seleccionar todo con Control + A
nnoremap <C-A> ggVG


nnoremap <leader>bl :ls<cr>:b<space> " Para mostrar un listado de los buffers
nnoremap <silent> <leader>c :nohlsearch<CR>h:echo " "<CR>  " Limpia las busquedas
" *********** FIN SHORTCUT CONFIG RAW (SIN PLUGINS)*************

" *********** SHORTCUT CONFIG CON PLUGINS *************


nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <leader>n :NERDTreeFocus<CR>
"nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" Terminal split
nnoremap <leader>tv :VTerm<CR>
nnoremap <leader>th :Term<CR>
" UndoTree sirve para ver un listado en forma de arbol de los cambios en un
" archivo, es como un versionamiento a tiempo real
nnoremap <leader>ut :UndotreeToggle<CR>
nnoremap <leader>wr :WinResizerStartResize<CR>
" Para elegir que extension de VUE quiero desabilitar por el momento, solo dura la sesion de VIM en la que estas
nmap <leader>cl :CocList extensions<CR>
"buscar palabras dentro del codigo
nmap <Leader>eb <Plug>(easymotion-s2)
" Move to word
map  <Leader>ew <Plug>(easymotion-bd-w)
nmap <Leader>ew <Plug>(easymotion-overwin-w)
" <Leader>f{char} to move to {char}
map  <Leader>ec <Plug>(easymotion-bd-f)
nmap <Leader>ec <Plug>(easymotion-overwin-f)

" Para Git
nmap <leader>gb :Git blame<cr>
nmap <leader>gs :Git<cr> "Para el status
nmap <leader>gc :Git commit -v<cr>
nmap <leader>ga :Git add -p<cr>
nmap <leader>gm :Git commit --amend<cr>
nmap <leader>gp :Git push<cr>
nmap <leader>gu :Git pull<cr>
nmap <leader>gd :Git diff<cr>
nmap <leader>gw :Git write<cr>
nmap <leader>gl :Git log<cr>
nmap <leader>gh :DiffviewFileHistory<cr>
nmap <leader>mg :GitMessenger<cr>


" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
" Para ver el historial de archivos con FZFMru
nnoremap <Leader>fr :FZFMru<CR>
nmap <Leader>fp <Plug>(Prettier)
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
" Para multicursor

let g:VM_maps = {}
let g:VM_maps['Find Under']         = '<C-d>'           " replace C-n
let g:VM_maps['Find Subword Under'] = '<C-d>'           " replace visual C-n

let g:VM_mouse_mappings = 1
nmap   <C-LeftMouse>         <Plug>(VM-Mouse-Cursor)
nmap   <C-RightMouse>        <Plug>(VM-Mouse-Word)
nmap   <M-C-RightMouse>      <Plug>(VM-Mouse-Column)

nnoremap <leader>S <cmd>lua require('spectre').open()<CR>

"search current word
nnoremap <leader>sw <cmd>lua require('spectre').open_visual({select_word=true})<CR>
vnoremap <leader>s <esc>:lua require('spectre').open_visual()<CR>
"  search in current file
nnoremap <leader>sp viw:lua require('spectre').open_file_search()<cr>
" run command :Spectre

nnoremap <leader>st :Startify<cr>
" *********** FIN SHORTCUT CONFIG CON PLUGINS *************
