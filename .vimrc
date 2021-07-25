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
" :CocInstall coc-json coc-emmet coc-html coc-vetur coc-phpls coc-prettier coc-docker coc-sql coc-tsserver coc-sh coc-css

" Para usar formato de prettier es :CocCommand prettier.formatFile

call plug#end() " para indicar que termino el gestor de plugins


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


nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" comandos personalizados
" para guardar rapido
" <CR> es igual a enter
nmap <C-s> :w<CR>
nmap <C-x> :x<CR>
nmap <C-q> :q!<CR>
" para navegar en el buffer
nnoremap <C-p> :bprev<CR>
nnoremap <C-n> :bnext<CR>

" comandos automaticos como prettier por ejemplo
autocmd BufWrite *.html :CocCommand prettier.formatFile
autocmd BufWrite *.js :CocCommand prettier.formatFile
autocmd BufWrite *.css :CocCommand prettier.formatFile
autocmd BufWrite *.ts :CocCommand prettier.formatFile
autocmd BufWrite *.scss :CocCommand prettier.formatFile
