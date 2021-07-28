call plug#begin('~/.vim/plugged') " Para agregar plugins siempre va al principio del docu
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
" packadd! dracula
" syntax enable
" colorscheme dracula
Plug 'joshdick/onedark.vim'
" Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'itchyny/vim-gitbranch'
Plug 'christoomey/vim-tmux-navigator' " con control h y control l navego facil entre pantalla, con nerdtree me posiciono en otro archicvo y presiono la tecla s y divide la pantalla
" git clone https://github.com/vim-airline/vim-airline ~/.vim/pack/dist/start/vim-airline
" git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/pack/dist/start/vim-airline-themes
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'tpope/vim-commentary' " con gcc en modo vista gcc para descomentar una linea, con control v y seleccionamos varias lineas y colocamos gc y se comentan todas
Plug 'neoclide/coc.nvim', {'branch': 'release'} " necesita nodeJS
" :CocInstall coc-json coc-emmet coc-html coc-vetur coc-phpls coc-prettier coc-docker coc-sql coc-tsserver coc-sh coc-css coc-pyright coc-java
Plug 'frazrepo/vim-rainbow' " Para ver en colores los cierres como estos ()[]{}
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


" Para usar formato de prettier es :CocCommand prettier.formatFile

call plug#end() " para indicar que termino el gestor de plugins

let mapleader = "\ " " Esto configura la tecla lider en VIM, en este momento dejamos la tecla 'espacio', esto es para no 'pisar' los atajos que vi tiene con la tecla Control y podemos personalizar todo, se debe usar la combinacion de botones en menos de un segundo para que haga efecto
set number " para que me muestre los numeros de las lineas
set rnu " set relativenumber - para que me de el numero de lineas relativo
set cursorline "Para que muestre el cursor donde estamos
set mouse=a "Para activar el mouse
set clipboard=unnamed " Para poder utilizar el copy/paste desde terminal
set laststatus=10 " Para guardar la cantidad de rehacer y deshacer
set showcmd " para mostrar los comandos que se escriben
set noshowmode " eliminamos que nos indique en que modo estamos (vista, insertar comando)
set showmatch
set encoding=utf-8
syntax enable " para resaltar el codigo cuando lo seleccionamos
colorscheme onedark

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

"configuracion
" se configura el .zshrc con export TERM=xterm-256color


if !has('gui_running')
  set t_Co=256
endif

"en mi archivo .zshrc y/o en .bashrc se agrega esto para que ack no tenga
"errores con perl

" export LC_ALL="en_US.UTF-8"
" export LANG="en_US.UTF-8"
" export LANGUAGE="en_US.UTF-8"

" Al colocar <C-n> es decir lo mismo que la tecla Control + la tecla n
" AL decir al final <CR> es lo mismo que decir al final ejecuta la tecla
" enter, si coloco <Space> le indico que coloque espacio luego del comando
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" buscar archivos con FZF
nnoremap <leader>f :FZF<CR>
" buscar contenido de archivos con ack
nnoremap <leader>s :Ack!<Space>

" comandos personalizados
" para guardar rapido
" <CR> es igual a enter
nmap <C-s> :w<CR>
nmap <C-x> :x<CR>
nmap <C-q> :q!<CR>
" para navegar en el buffer
nnoremap <C-p> :bprev<CR>
nnoremap <C-n> :bnext<CR>

" Para multicursor

let g:VM_maps = {}
let g:VM_maps['Find Under']         = '<C-d>'           " replace C-n
let g:VM_maps['Find Subword Under'] = '<C-d>'           " replace visual C-n

let g:VM_mouse_mappings = 1
nmap   <C-LeftMouse>         <Plug>(VM-Mouse-Cursor)
nmap   <C-RightMouse>        <Plug>(VM-Mouse-Word)
nmap   <M-C-RightMouse>      <Plug>(VM-Mouse-Column)

" abrir terminal en nvim con Shit t para abrir vertical Shit s para abrir horizontal 
map <S-t>:vsplit | term<CR>
map <S-s>:split | term<CR>

" comandos automaticos como prettier por ejemplo
autocmd BufWrite *.html :CocCommand prettier.formatFile
autocmd BufWrite *.js :CocCommand prettier.formatFile
autocmd BufWrite *.css :CocCommand prettier.formatFile
autocmd BufWrite *.ts :CocCommand prettier.formatFile
autocmd BufWrite *.scss :CocCommand prettier.formatFile
autocmd BufWritePost * GitGutter
