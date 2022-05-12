### mi VIM RC desde el curso VIM profesional

https://www.udemy.com/course/vim-profesional/


### si trabajo con neovim debo modificar el archivo de la ruta

vim ~/.config/nvim/init.vim

y escribir
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc

o en su defecto puedo escribir todo el contenido del .vimrc en el vim ~/.config/nvim/init.vim
