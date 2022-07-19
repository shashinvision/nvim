" *********** CONFIGURACIONES *************
colorscheme onedark
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
let g:blamer_enabled = 1


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

" *********** FIN CONFIGURACIONES *************

