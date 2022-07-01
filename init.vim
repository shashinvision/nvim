" *********** INDICE *************
" PLUGINS
" CONFIGURACIONES
"   CONFIGURACIONES-> Codigo Lua
" SHORTCUT CONFIG RAW (SIN PLUGINS)
" SHORTCUT CONFIG CON PLUGINS
"   *********** FIN INDICE *************

" *********** PLUGINS *************
call plug#begin('~/.config/nvim/plugged')   "directorio donde se van a instalar los plugins
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'ap/vim-css-color'
Plug 'StanAngeloff/php.vim'
Plug 'jbgutierrez/vim-better-comments'
Plug 'nvim-lua/plenary.nvim'
Plug 'simeji/winresizer'
Plug 'nvim-telescope/telescope.nvim'
Plug 'joshdick/onedark.vim'
Plug 'dm1try/golden_size'
Plug 'rhysd/git-messenger.vim'
Plug 'yegappan/mru' " Esto es para acceder al historial de archivos visitados y editados el comando es :MRU
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'
Plug 'itchyny/vim-gitbranch'
Plug 'jparise/vim-graphql'
Plug 'christoomey/vim-tmux-navigator' " con control h y control l navego facil entre pantalla, con nerdtree me posiciono en otro archicvo y presiono la tecla s y divide la pantalla
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'tpope/vim-commentary' " con gcc en modo vista gcc para descomentar una linea, con control v y seleccionamos varias lineas y colocamos gc y se comentan todas
Plug 'neoclide/coc.nvim', {'branch': 'release'} " necesita nodeJS
Plug 'puremourning/vimspector'
" Plug 'frazrepo/vim-rainbow' " Para ver en colores los cierres como estos ()[]{}
" Plug 'mileszs/ack.vim' " Para buscar contenido en archivos para instalar ack hay que instalarlo en tu SO tmbn con brew install ack o sudo apt install ack
Plug 'airblade/vim-gitgutter' " Para ver los cambios en git como linea que se agrega con un signo +, si quitamos lineas con - y si se modifico una con ~
Plug 'vim-scripts/taglist.vim' " Para ver os tags de los archivos
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-surround' " Para eliminar todo lo que este rodeado por un elemento ejemplo comillas dobles para cambiar las comillas simples por dobles cs'" con ds" se eliminan las comillas
Plug 'mg979/vim-visual-multi', {'branch': 'master'} " Multicursor Ctrl+d como en VSCode
Plug 'vimlab/split-term.vim'
Plug 'mbbill/undotree'
Plug 'Townk/vim-autoclose'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
"web developer
" Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}
Plug 'alvan/vim-closetag'
Plug 'pangloss/vim-javascript'
Plug 'sheerun/vim-polyglot'
Plug 'kabbamine/vcoolor.vim'
Plug 'easymotion/vim-easymotion'
Plug 'posva/vim-vue'
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
Plug 'MattesGroeger/vim-bookmarks'

call plug#end() " para indicar que termino el gestor de plugins

" *********** FIN PLUGINS *************

" *********** CONFIGURACIONES *************

colorscheme onedark
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

autocmd BufWritePre * :%s/\s\+$//e " remove whitespaces

" Para el theme de onedark
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
set laststatus=2
let g:airline_symbols.space = "\ua0"
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='onedark'

" se configura el .zshrc con export TERM=xterm-256color

if !has('gui_running')
  set t_Co=256
endif

" este código es para autoguardar con prettier según la extensión del archivo
" let g:prettier#autoformat = 0
" autocmd BufWritePre *.html,*.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.yml,*.graphql,*.md,*.vue PrettierAsync
autocmd BufWritePost * GitGutter

" autocmd BufReadPost,BufNewFile *.vue setlocal filetype=vue
augroup toggleCocExtensions
    autocmd!

    autocmd BufEnter *.* call CocActionAsync('deactivateExtension', 'coc-graphql')
    autocmd BufEnter *.vue call CocActionAsync('deactivateExtension', 'coc-tsserver')
    " autocmd BufLeave *.vue call CocActionAsync('activeExtension', 'coc-tsserver')
    autocmd BufEnter *.graphql call CocActionAsync('activeExtension', 'coc-graphql')
    autocmd BufEnter *.js call CocActionAsync('activeExtension', 'coc-tsserver')
    autocmd BufEnter *.ts call CocActionAsync('activeExtension', 'coc-tsserver')
    autocmd BufEnter *.html call CocActionAsync('activeExtension', 'coc-tsserver')
augroup END

    " Syntax = permite reconocer la sintaxis del archivo y lo obliga a implementarla
    " FileType = permite cargar otro tipo de enriquecimiento aparte de la sintaxis, para obligar es mejor usar ambos

    autocmd BufNewFile,BufEnter *.php set syntax=php
    autocmd BufNewFile,BufRead *.php set filetype=php

    " solo le cambio el fileType debido a que la sintaxis de archivos MD la reconoce bien, pero en ocasiones falla al reconocer el tipo de extensión
    autocmd BufNewFile,BufRead *.md set filetype=txt


let g:coc_global_extensions = [
    \ 'coc-tsserver',
    \ 'coc-tabnine',
    \ 'coc-json',
    \ 'coc-html',
    \ 'coc-css',
    \ 'coc-phpls',
    \ 'coc-python',
    \ '@yaegassy/coc-phpstan',
    \ 'coc-php-cs-fixer',
    \ '@yaegassy/coc-intelephense',
    \ 'coc-jedi',
    \ 'coc-diagnostic',
    \ 'coc-just-complete',
    \ 'coc-vue',
    \ 'coc-vetur',
    \ 'coc-prettier',
    \ 'coc-docker',
    \ 'coc-sql',
    \ 'coc-sh',
    \ 'coc-pyright',
    \ 'coc-java',
    \ 'coc-marketplace',
    \ 'coc-tslint-plugin',
    \ 'coc-highlight',
    \ 'coc-graphql',
    \ 'coc-stylelint',
    \ 'coc-snippets',
    \ 'coc-emmet'
    \]

" Solo para Mac se instala pytho3 desde brew lo mism nvim y para que no tenga
" problemas con reconocer python3 se usan los siguientes comandos
" pip3 uninstall neovim
" pip3 uninstall pynvim
" pip3 install pynvim

" Codigo LUA
lua << EOF
vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]

vim.opt.list = true
vim.opt.listchars:append("space:⋅")
vim.opt.listchars:append("eol:↴")

require("indent_blankline").setup {
    space_char_blankline = " ",
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
        "IndentBlanklineIndent3",
        "IndentBlanklineIndent4",
        "IndentBlanklineIndent5",
        "IndentBlanklineIndent6",
    },
}
EOF

" *********** FIN CONFIGURACIONES *************

" *********** SHORTCUT CONFIG RAW (SIN PLUGINS)*************

nnoremap n nzzzv " Centrar en las busquedas
nnoremap N Nzzzv " Para ir al centro de la ventana
nnoremap J mzJ`z

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
nmap <leader>gmm :Git commit --amend<cr>
nmap <leader>gm: :GitMessenger<cr>
nmap <leader>gp :Git push<cr>
nmap <leader>gu :Git pull<cr>
nmap <leader>gd :Git diff<cr>
nmap <leader>gw :Git write<cr>
nmap <leader>gl :Git log<cr>

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
" *********** FIN SHORTCUT CONFIG CON PLUGINS *************
