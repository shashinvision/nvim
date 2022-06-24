call plug#begin() " Para agregar plugins siempre va al principio del docu
" call plug#begin('~/.local/share/nvim/plugged') " en caso que no detecte automaticamente la carpeta de plugins se usa esta opcion
" con el comando :Pluginstall puedes instalar los plugins que instales, si
" usar :Plug y luego tabulas y aparecen mas opciones esta confirmado que se
" instalo bien

" gestor de plugins https://github.com/junegunn/vim-plug
" hay configuraciones para vim y neovim elige el que uses, yo uso neovim
"
" THEMA Dracula desde la web oficial
" mkdir -p ~/.vim/pack/themes/start
" cd ~/.vim/pack/themes/start
" git clone https://github.com/dracula/vim.git dracula
" y luego colocar el codigo que viene aca abajo
" fuente = https://draculatheme.com/vim
"Plug 'dracula/vim', { 'as': 'dracula' }
" packadd! dracula
" colorscheme dracula
Plug 'ap/vim-css-color'
Plug 'StanAngeloff/php.vim'
Plug 'jbgutierrez/vim-better-comments'
Plug 'nvim-lua/plenary.nvim'
Plug 'simeji/winresizer'
Plug 'nvim-telescope/telescope.nvim'
Plug 'joshdick/onedark.vim'
Plug 'dm1try/golden_size'
Plug 'rhysd/git-messenger.vim'
" Plug 'itchyny/lightline.vim'
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
" git clone https://github.com/vim-airline/vim-airline ~/.vim/pack/dist/start/vim-airline
" git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/pack/dist/start/vim-airline-themes
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'tpope/vim-commentary' " con gcc en modo vista gcc para descomentar una linea, con control v y seleccionamos varias lineas y colocamos gc y se comentan todas
Plug 'neoclide/coc.nvim', {'branch': 'release'} " necesita nodeJS
Plug 'puremourning/vimspector'
" Plug 'frazrepo/vim-rainbow' " Para ver en colores los cierres como estos ()[]{}
" Plug 'mileszs/ack.vim' " Para buscar contenido en archivos para instalar ack hay que instalarlo en tu SO tmbn con brew install ack o sudo apt install ack
" Modo de uso
" :Ack [options] {pattern} [{directories}]

" ?    a quick summary of these keys, repeat to close
" o    to open (same as Enter)
" O    to open and close the quickfix window
" go   to preview file, open but maintain focus on ack.vim results
" t    to open in new tab
" T    to open in new tab without moving to it
" h    to open in horizontal split
" H    to open in horizontal split, keeping focus on the results
" v    to open in vertical split
" gv   to open in vertical split, keeping focus on the results
" q    to close the quickfix window

Plug 'airblade/vim-gitgutter' " Para ver los cambios en git como linea que se agrega con un signo +, si quitamos lineas con - y si se modifico una con ~
Plug 'vim-scripts/taglist.vim' " Para ver os tags de los archivos

"  Este complemento añade o mejora las posibilidades de plegado
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

Plug 'tpope/vim-surround' " Para eliminar todo lo que este rodeado por un elemento ejemplo comillas dobles
" para cambiar las comillas simples por dobles cs'" con ds" se eliminan las comillas

Plug 'mg979/vim-visual-multi', {'branch': 'master'} " Multicursor

" Basic usage:

" select words with Ctrl-N (like Ctrl-d in Sublime Text/VS Code)
" create cursors vertically with Ctrl-Down/Ctrl-Up
" select one character at a time with Shift-Arrows
" press n/N to get next/previous occurrence
" press [/] to select next/previous cursor
" press q to skip current and get next occurrence
" press Q to remove current cursor/selection
" start insert mode with i,a,I,A
" Two main modes:

" in cursor mode commands work as they would in normal mode
" in extend mode commands work as they would in visual mode
" press Tab to switch between «cursor» and «extend» mode
" Most vim commands work as expected (motions, r to replace characters, ~ to change case, etc)

Plug 'vimlab/split-term.vim'

Plug 'mbbill/undotree'
Plug 'Yggdroot/indentLine'
"autocomplete
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
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
Plug 'MattesGroeger/vim-bookmarks'
" Add/remove bookmark at current line	mm	:BookmarkToggle
" Add/edit/remove annotation at current line	mi	:BookmarkAnnotate <TEXT>
" Jump to next bookmark in buffer	mn	:BookmarkNext
" Jump to previous bookmark in buffer	mp	:BookmarkPrev
" Show all bookmarks (toggle)	ma	:BookmarkShowAll
" Clear bookmarks in current buffer only	mc	:BookmarkClear
" Clear bookmarks in all buffers	mx	:BookmarkClearAll
" Move up bookmark at current line	[count]mkk	:BookmarkMoveUp [<COUNT>]
" Move down bookmark at current line	[count]mjj	:BookmarkMoveDown [<COUNT>]
" Move bookmark at current line to another line	[count]mg	:BookmarkMoveToLine <LINE>
" Save all bookmarks to a file		:BookmarkSave <FILE_PATH>
" Load bookmarks from a file		:BookmarkLoad <FILE_PATH>

" Plug 'luochen1990/rainbow'

" Para usar formato de prettier es :CocCommand prettier.formatFile

call plug#end() " para indicar que termino el gestor de plugins

let mapleader = "\ " " Esto configura la tecla lider en VIM, en este momento dejamos la tecla 'espacio', esto es para no 'pisar' los atajos que vi tiene con la tecla Control y podemos personalizar todo, se debe usar la combinacion de botones en menos de un segundo para que haga efecto

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
set syntax=on
syntax enable " para resaltar el codigo cuando lo seleccionamos
colorscheme onedark
set ignorecase " para innorar el key sensitive en las busquedas, podria interferir en los reemplazos masivos, para eso colocar el comando :set noignorecase
set smartcase
" set pythondll=libpython3.8.so
" identancion
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
" set wrap! " Don't wrap long lines
set viewoptions=folds,options,cursor,unix,slash " Better Unix / Windows compatibility
set fileencoding=utf-8 " The encoding written to file.
set magic " For regular expressions turn magic on
" para usar tags
" set tags=tags;/
set tags=./tags;/
" Para indexar toda una carpeta raiz desde la terminal y que git ignore esa carpeta
" ctags -R -f ./.git/tags .

" improve user experience updating more frequently
set updatetime=50

set undofile " Save undos after file closes
set undodir=~/.config/nvim/undodir " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo
" Limit popup menu height
set pumheight=20
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
set nolist
" remove whitespaces
autocmd BufWritePre * :%s/\s\+$//e
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

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
" en la linea de comando de cualquier archivo, puedes escribir :source % y se
" recarga el archivo

" si trabajo con neovim debo modificar el archivo de la ruta
" vim ~/.config/nvim/init.vim
" y escribir
" set runtimepath^=~/.vim runtimepath+=~/.vim/after
" let &packpath=&runtimepath
" source ~/.vimrc
" para airline themes

let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
set laststatus=2
let g:airline_symbols.space = "\ua0"
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='onedark'
"let g:airline_theme='dracula'


"configuracion
" se configura el .zshrc con export TERM=xterm-256color

if !has('gui_running')
  set t_Co=256
endif

let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_color_term = 239

" primero hay que ir al archivo o carpeta en la terimnal y crear un tag, eso
" se hace ejemplo ctags block.js y creará un archivo con las definiciones
" go to definition  like Vscode
" nmap<f12> <c-]>
" go back
" nmap<leader>f12 <c-T>
" key mappings for goToDefinition
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" there's way more, see `:help coc-key-mappings@en'


"en mi archivo .zshrc y/o en .bashrc se agrega esto para que ack no tenga
"errores con perl

" export LC_ALL="en_US.UTF-8"
" export LANG="en_US.UTF-8"
" export LANGUAGE="en_US.UTF-8"

" Al colocar <C-n> es decir lo mismo que la tecla Control + la tecla n
" AL decir al final <CR> es lo mismo que decir al final ejecuta la tecla
" enter, si coloco <Space> le indico que coloque espacio luego del comando
nnoremap <leader>n :NERDTreeFocus<CR>
"nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" buscar archivos con FZF
" nnoremap <leader>f :FZF<CR>
" buscar contenido de archivos con ack
" nnoremap <leader>s :Ack! -i <Space>

" comandos personalizados
" para guardar rapido
" <CR> es igual a enter
nmap <C-s> :w<CR>
"save all buffers open
nmap <C-a> :wa<CR>
nmap <C-x> :x<CR>
nmap <C-q> :q!<CR>
" para navegar en el buffer
nnoremap <C-p> :bprev<CR>
nnoremap <C-n> :bnext<CR>

" windows split vertical/horizontal
nnoremap <leader>wh :split<CR>
nnoremap <leader>wv :vsplit<CR>
nnoremap <leader>wr :WinResizerStartResize<CR>
" For winresizer
" 1. You press keys Ctrl + E or execute :WinResizerStartResize on vim(in normal mode), to run this plugin
" 2. Start 'window resize mode', and you can resize current vim windows using 'h', 'j', 'k', 'l' keys
" 3. You want to finish resize mode, then press "Enter" key
" If you cancel window resize, then press "q" key. You will get window size of before change
" You can change the mode if you press "e" in 'window resize mode'
" Terminal split vertical/horizontal


nnoremap <leader>tv :VTerm<CR>
nnoremap <leader>th :Term<CR>

" Para elegir que extension de VUE quiero desabilitar por el momento, solo dura la sesion de VIM en la que estas
nmap <leader>cl :CocList extensions<CR>
" Para su correcto uso se debe hacer un split de pantalla con dos archivos, posicionado en cada archivo se hace un leader +4 y se procede a comprar
nnoremap <leader>dt :diffthis<CR>
" UndoTree sirve para ver un listado en forma de arbol de los cambios en un
" archivo, es como un versionamiento a tiempo real
nnoremap <leader>ut :UndotreeToggle<CR>

" Para ver los espacios vacíos.
nnoremap <leader>se :set list!<CR>
" para cerrar el buffer actual
nnoremap <leader>bd :bd<CR>
"buscar palabras dentro del codigo
nmap <Leader>eb <Plug>(easymotion-s2)
" Move to word
map  <Leader>ew <Plug>(easymotion-bd-w)
nmap <Leader>ew <Plug>(easymotion-overwin-w)
" <Leader>f{char} to move to {char}
map  <Leader>ec <Plug>(easymotion-bd-f)
nmap <Leader>ec <Plug>(easymotion-overwin-f)

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

" para plegar codigo de manera sencilla, debes colocarte en el principo de la
" llave {}[]() y listo
nnoremap <leader>zf zf%<cr>
" Para desplegar el codigo plegado
nnoremap <leader>za za<cr>
" para recargar un archivo de forma manual
nnoremap <leader>ss :source %<cr>

" para vcolor Use it:
" * To insert a color anywhere.
" * To modify the current hex, rgb, rgba or hsl color.

" Using `<Alt-R>` you can insert a rgb color anywhere (NORMAL and INSERT modes).
" Using `<Alt-V>` you can insert a hsl color anywhere (NORMAL and INSERT modes).
" Using `<Alt-W>` you can insert a rgba color anywhere (NORMAL and INSERT modes).


"Abrir y cerrar liver server
" nmap <leader>b :Bracey<CR>
" nmap <leader>q :BraceyStop<CR>

" Para multicursor

let g:VM_maps = {}
let g:VM_maps['Find Under']         = '<C-d>'           " replace C-n
let g:VM_maps['Find Subword Under'] = '<C-d>'           " replace visual C-n

let g:VM_mouse_mappings = 1
nmap   <C-LeftMouse>         <Plug>(VM-Mouse-Cursor)
nmap   <C-RightMouse>        <Plug>(VM-Mouse-Word)
nmap   <M-C-RightMouse>      <Plug>(VM-Mouse-Column)

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
