call plug#begin() " Para agregar plugins siempre va al principio del docu
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
Plug 'joshdick/onedark.vim'
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
" :CocInstall coc-json coc-emmet coc-html coc-vue coc-vetur coc-phpls coc-prettier coc-docker coc-sql coc-tsserver coc-sh coc-css coc-pyright coc-java coc-jedi coc-marketplace coc-tslint-plugin coc-highlight
" Plug 'frazrepo/vim-rainbow' " Para ver en colores los cierres como estos ()[]{}
Plug 'mileszs/ack.vim' " Para buscar contenido en archivos para instalar ack hay que instalarlo en tu SO tmbn con brew install ack o sudo apt install ack
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
syntax enable " para resaltar el codigo cuando lo seleccionamos
colorscheme onedark
set ignorecase " para innorar el key sensitive en las busquedas, podria interferir en los reemplazos masivos, para eso colocar el comando :set noignorecase
set smartcase
" set pythondll=libpython3.8.so
" identancion
set foldmethod=manual " para plegar y desplegar codigo. para hacer simple, vas al primer cierre del (){}[] y precionar zf% y listo, para desacoplar solo preciona zfa y listo.
" Mas configuraciones
" establece el modo manual con set foldmethod=manual. Ahora ya puedes plegar texto como si no hubiera un mañana. Por ejemplo, si quieres plegar las 3 siguientes líneas, desde el modo normal utiliza la siguiente combinación de teclas zf3j.
" Si, lo adivinaste, en Vim, para plegar o recoger texto se utiliza siempre la z. Así, para plegar utilizas zf<movimiento>. Esto te va a crear un nuevo pliege que vas a poder accionar cuando tu necesites.
" De la misma manera, en el caso de que quieras plegar dos párrafos, simplemente tienes que utilizar zf2{ para el caso que quieras que sean los dos siguientes, mientras que utilizarás zf2}, en el caso de que quieras que sean los dos anteriores.
" Otra opción es utilizar zfa<elemento>. Esto lo puedes utilizar por ejemplo cuando estás escribiendo código, donde las funciones y otros elementos están definidos por {}. De esta manera, para colapsar una función, tendrás que utilizar zfa{. En este caso, para plegar párrafos, tienes que utilizar zfap.
" Para facilitarte todo esto del plegado, a continuación encontrarás los comandos mas utilizados en el modo normal,
" zo abre el pliegue sobre el que te encuentras. También lo puedes hacer con la barra espaciadora.
" zc hace la operación inversa de la anterior, es decir, cierra el pliegue sobre el que te encuentres…, en caso de que exista claro.
" za abre o cierra el pliegue el que te encuentres. Es decir, si el pliegue está abierto lo cierra, y en el caso de que esté cerrado lo abre.
" zd en caso de encontrarte ante un pliegue manual, con esta combinación de teclas, borrará el pliegue. De esta manera ya no podrás activarlo de nuevo. Esto no borra el texto contenido en el pliegue, solo borra el pliegue en si.
" zj desplaza el cursor hasta el siguiente pliegue.
" zk mueve el cursor hasta el pliegue anterior.
" zR abre todos los pliegues en la memoria actual, recuerda el capítulo anterior sobre memorias,
set shiftwidth=2
set autoindent
set smartindent
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

" primero hay que ir al archivo o carpeta en la terimnal y crear un tag, eso
" se hace ejemplo ctags block.js y creará un archivo con las definiciones
" go to definition  like Vscode
" nmap<f12> <c-]>
" go back
" nmap<leader>f12 <c-T>
" key mappings for goToDefinition
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gD <Plug>(coc-implementation)
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
nnoremap <leader>f :FZF<CR>
" buscar contenido de archivos con ack
nnoremap <leader>s :Ack! -i <Space>

" comandos personalizados
" para guardar rapido
" <CR> es igual a enter
nmap <C-s> :w<CR>
nmap <C-x> :x<CR>
nmap <C-q> :q!<CR>
" para navegar en el buffer
nnoremap <C-p> :bprev<CR>
nnoremap <C-n> :bnext<CR>

nnoremap <leader>h :split<CR>
nnoremap <leader>v :vsplit<CR>
" abrir terminal en nvim con lider 1 para abrir vertical leader 2 para abrir horizontal
" Para ver el historial de archivos visitados
nnoremap <Leader>l :FZFMru<CR>
nnoremap <leader>1 :VTerm<CR>
nnoremap <leader>2 :Term<CR>
" Para elegir que extension de VUE quiero desabilitar por el momento, solo dura la sesion de VIM en la que estas
nmap <leader>3 :CocList extensions<CR>
" Para su correcto uso se debe hacer un split de pantalla con dos archivos, posicionado en cada archivo se hace un leader +4 y se procede a comprar
nnoremap <leader>4 :diffthis<CR>
" UndoTree sirve para ver un listado en forma de arbol de los cambios en un
" archivo, es como un versionamiento a tiempo real
nnoremap <leader>5 :UndotreeToggle<CR>

" Para ver los espacios vacíos.
nnoremap <leader>6 :set list!<CR>
" para cerrar el buffer actual
nnoremap <leader>d :bd<CR>
"buscar palabras dentro del codigo
nmap <Leader>b <Plug>(easymotion-s2)
" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)
" <Leader>f{char} to move to {char}
map  <Leader>c <Plug>(easymotion-bd-f)
nmap <Leader>c <Plug>(easymotion-overwin-f)

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


" comandos automaticos como prettier por ejemplo
autocmd BufWrite *.html :CocCommand prettier.formatFile
autocmd BufWrite *.js :CocCommand prettier.formatFile
autocmd BufWrite *.json :CocCommand prettier.formatFile
autocmd BufWrite *.css :CocCommand prettier.formatFile
autocmd BufWrite *.ts :CocCommand prettier.formatFile
autocmd BufWrite *.scss :CocCommand prettier.formatFile
autocmd BufWrite *.vue :CocCommand prettier.formatFile
autocmd BufWrite *.php :CocCommand prettier.formatFile
autocmd BufWrite *.yml :CocCommand prettier.formatFile
autocmd BufWrite *.md :CocCommand prettier.formatFile
autocmd BufWritePost * GitGutter

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


" autocmd BufReadPost,BufNewFile *.vue setlocal filetype=vue
augroup toggleCocExtensions
    autocmd!
    autocmd BufEnter *.vue call CocActionAsync('deactivateExtension', 'coc-tsserver')
    " autocmd BufLeave *.vue call CocActionAsync('activeExtension', 'coc-tsserver')
    autocmd BufEnter *.js call CocActionAsync('activeExtension', 'coc-tsserver')
    autocmd BufEnter *.ts call CocActionAsync('activeExtension', 'coc-tsserver')
    autocmd BufEnter *.html call CocActionAsync('activeExtension', 'coc-tsserver')
augroup END


" Solo para Mac se instala pytho3 desde brew lo mism nvim y para que no tenga
" problemas con reconocer python3 se usan los siguientes comandos
" pip3 uninstall neovim
" pip3 uninstall pynvim
" pip3 install pynvim
