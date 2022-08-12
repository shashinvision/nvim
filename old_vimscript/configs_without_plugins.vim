
let mapleader = "\ " " Esto configura la tecla lider en VIM, en este momento dejamos la tecla 'espacio', esto es para no 'pisar' los atajos que vi tiene con la tecla Control y podemos personalizar todo, se debe usar la combinacion de botones en menos de un segundo para que haga efecto
set syntax=on
syntax enable " para resaltar el codigo cuando lo seleccionamos
set nocompatible
set number " para que me muestre los numeros de las lineas
set rnu " set relativenumber - para que me de el numero de lineas relativo
set cursorline "Para que muestre el cursor donde estamos
set mouse=a "Para activar el mouse
set clipboard=unnamed " Para poder utilizar el copy/paste fuera de la terminal, solo selecciona en modo visual teclas la letra y para copiar, para pegar desde fuera de la terminal teclas la letra p en modo visual y listo
set clipboard=unnamedplus
set laststatus=10 " Para guardar la cantidad de rehacer y deshacer
set showcmd " para mostrar los comandos que se escriben
set noshowmode " eliminamos que nos indique en que modo estamos (vista, insertar comando)
set showmatch
set encoding=utf-8
set ignorecase " para innorar el key sensitive en las busquedas, podria interferir en los reemplazos masivos, para eso colocar el comando :set noignorecase
set smartcase
set foldmethod=manual " para plegar y desplegar codigo. para hacer simple, vas al primer cierre del (){}[] y precionar zf% y listo, para desacoplar solo preciona zfa y listo.
set shiftwidth=2
set autoindent
set smartindent
set mmp=5000
set history=1000 " Sets how many lines of history VIM has to remember
set gdefault " Add g (global) to substitute operations, :s/pattern/replacement/
set splitbelow " Open split below
set splitright " Open split right
set hlsearch " Highlight search results
set incsearch " Makes search act like search in modern browsers
set nojoinspaces " Prevents inserting two spaces after punctuation on a join (J)
set tabstop=2 " An indentation every four columns
set softtabstop=2 " Let backspace delete indent
set viewoptions=folds,options,cursor,unix,slash " Better Unix / Windows compatibility
set fileencoding=utf-8 " The encoding written to file.
set magic " For regular expressions turn magic on
set tags=./tags;/ " para usar tags Para indexar toda una carpeta raiz desde la terminal y que git ignore esa carpeta ctags -R -f ./.git/tags .
set updatetime=50 " improve user experience updating more frequently
set undofile " Save undos after file closes
set undodir=~/.config/nvim/undodir " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo
set pumheight=20 " Limit popup menu height
set nolist
set colorcolumn=80
set wildmenu
set wildmode=longest:list,full
set expandtab " On pressing tab, insert 2 spaces
set linebreak " se corta en palabras y no en caracteres cuando wrap está puesto

autocmd BufWritePre * :%s/\s\+$//e " remove whitespaces

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
" para abrir/cerrar el explorador Lexplore
nnoremap <leader>e :Lexplore<cr>
