### Mi Configuración de NeoVIM

Les dejo mi guia completa de Vim Facil 
[Link Curso VIM Profesional](https://www.youtube.com/playlist?list=PLt8PjPook45ZemtwXONrL5mrN-NTd71Lo)



### Se debe instalar neovim primero que todo, posteriormente se debe clonar este repo en la ruta ~/.config/
```
cd ~/.config && git clone https://github.com/shashinvision/nvim.git
```


### Debemos instalar nodeJS idealmente con la versión 12+
en caso de querer instalar distintas versiones de node se puede usar nvm (node version manager)
[Link de web NVM Node Version Manager](https://www.hostinger.es/tutoriales/instalar-node-js-ubuntu/)

### Instalamos prettier
```
sudo npm install -g prettier
```


### [Obligación] Instalaciones a considerar

```git clone https://github.com/vim-airline/vim-airline ~/.vim/pack/dist/start/vim-airline```

```git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/pack/dist/start/vim-airline-themes```

### Instalar Plug Para VIM NVIM
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
### Para que funcione el grep de busqueda de palabras de telescope
```
brew install ripgrep
```
```
sudo apt-get -y install ripgrep
```
### Para que funcine FZF sin problemas
```
brew install fzf
```
```
sudo apt install fzf
```
### En Mac instalar ctags
```
brew install ctags
```
### En ubuntu
```
sudo apt-get install ctags
```
### SOLO EN MAC En el mismo archivo .zshrc se coloca el alias
```
alias ctags="`brew --prefix`/bin/ctags"
```
### En mac para que funcione bien Vim Spectre (Busqueda/reemplazo) en proyectos
```
brew install gnu-sed
```
### OPCIONAL ACK (Deprecado, ya no lo uso en esta version, pero el codigo esta comendato en el archivo de configuracion, lo dejo solo en caso de querer activarlo)
```brew install ack```
```sudo apt install ack```


### Copia el contenido del archivo init.vim que esta en este repo a la ruta:

```
~/.config/nvim/init.vim
```

### Dentro de nvim se ejecuta el siguiente comando


Presionar tecla Escape, luego : y escribir PlugInstall
quedando de la siguinete forma

```
:PlugInstall
```


### Para configurar coc debes editar el archivo config conel comando con el comando :CocConfig o en la ruta:
## ahí debes colocar tu licencia de "intelephense.licenceKey"
## dentro de este repo esta el contenido de ese archivo
```
~/.config/nvim/coc-settings.json
```


### En mac necesitamos instalar python la versión 3


### Para Mac y Linux se instala python3 desde brew lo mism nvim y para que no tenga problemas con reconocer python3 se usan los siguientes comandos
```pip3 uninstall neovim```

```pip3 uninstall pynvim```

```pip3 install pynvim```

### Configuracion de colores para la terminal y Locale

Se configura el .zshrc con

```
export TERM=xterm-256color
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
```

### En Mac puede dar errores con la Terminal o ITerm2 debido al Locale, esta es la solución

[Link de Fuente](https://www.cyberciti.biz/faq/os-x-terminal-bash-warning-setlocale-lc_ctype-cannot-change-locale/)

![Fix Locale](fix_set_locale_en_ack_mac.png)

## Si necesito usar la configuración en un servidor sin necesidad de plugins puedo copiar configuración en neovim rapido
### Primero instalar NeoVim en el server, luego:

```
mkdir ~/.config/nvim/
```
```
touch ~/.config/nvim/init.vim
```
```
nvim ~/.config/nvim/init.vim
```

```

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
" Para mostrar un listado de los buffers
nnoremap <leader>bl :ls<cr>:b<space>
" Limpia las busquedas
nnoremap <silent> <leader>c :nohlsearch<CR>h:echo " "<CR>
" para abrir/cerrar el explorador Lexplore
nnoremap <leader>e :Lexplore<cr>
inoremap jk <Esc>
" Te lleva al final o el principio de llave relacionada {}[]()
nnoremap <leader><leader> <S-$>%
" para plegar codigo de manera sencilla, debes colocarte en el principo de la, llave {}[]() y listo, con za en modo normal vuelves a desplegar el codigo
nnoremap <leader>z <S-$>zf%
" Mover entre splits de windows
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <leader>c :nohlsearch<CR>h:echo " "<CR>
nnoremap <leader>bl :buffers<CR>
nnoremap <leader>t :terminal<CR>
```
