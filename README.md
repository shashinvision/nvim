### mi VIM RC desde el curso VIM profesional

https://www.udemy.com/course/vim-profesional/




### Se debe instalar neovim

### Todo el contenido equivalente al .vimrc de VIM en NeoVIm se encuentra en el siguiente path:

```
~/.config/nvim/init.vim
```

### [OPCIONAL] Puedo modificar el archivo de la ruta para que tome el .vimrc por defecto

```
vim ~/.config/nvim/init.vim
```
o
```
nvim ~/.config/nvim/init.vim
```

y escribir dentro del archivo 
```
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc
```



### [Obligación] Instalaciones a considerar 

```git clone https://github.com/vim-airline/vim-airline ~/.vim/pack/dist/start/vim-airline```

```git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/pack/dist/start/vim-airline-themes```

### Mac
```brew install ack```
### o para ubuntu
```sudo apt install ack```

### Para instalar los plugins de Coc
```
:CocInstall coc-json coc-emmet coc-html coc-vue coc-vetur coc-phpls coc-prettier coc-docker coc-sql coc-tsserver coc-sh coc-css coc-pyright coc-java coc-jedi coc-marketplace coc-tslint-plugin coc-highlight
```

### En mac necesitamos instalar python la versión 3 


### Solo para Mac se instala python3 desde brew lo mism nvim y para que no tenga problemas con reconocer python3 se usan los siguientes comandos
```pip3 uninstall neovim```

```pip3 uninstall pynvim```

```pip3 install pynvim```

### Configuracion de colores para la terminal 

Se configura el .zshrc con

```export TERM=xterm-256color```

