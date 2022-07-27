local o = vim.o --vim options
local wo = vim.wo -- values per windows
local bo = vim.bo -- values per buffers
local set  = vim.opt -- Generals options (Windows/Files)
local g = vim.g -- Globals values
local env = vim.env -- Environment variables
local cmd = vim.cmd -- for VimScript commands

g.mapleader = ' ' -- tecla lider, en este caso el espacio
set.compatible = false
cmd('syntax on')
cmd('syntax enable') --para resaltar el codigo cuando lo seleccionamos
cmd('filetype plugin indent on')
cmd('colorscheme onedark')
set.colorcolumn='80'
set.number = true --para que me muestre los numeros de las lineas
set.relativenumber = true -- para que me de el numero de lineas relativo
set.cursorline = true -- Para que muestre el cursor donde estamos
set.mouse = 'a' --Para activar el mouse
set.clipboard = 'unnamedplus' --  Para poder utilizar el copy/paste fuera de la terminal, solo selecciona en modo visual teclas la letra y para copiar, para pegar desde fuera de la terminal teclas la letra p en modo visual y listo
set.laststatus = 10 -- Para guardar la cantidad de rehacer y deshacer
set.showcmd = true -- para mostrar los comandos que se escriben
o.showmode = false -- eliminamos que nos indique en que modo estamos (vista, insertar comando)
set.showmatch = true
set.encoding = 'utf-8'
set.fileencoding = 'utf-8' -- The encoding written to file.
set.ignorecase = true -- para innorar el key sensitive en las busquedas, podria interferir en los reemplazos masivos, para eso colocar el comando :set noignorecase
set.autoindent = true
set.autoread = true
set.smartcase = true
set.smartindent = true
set.foldmethod = 'manual' -- para plegar y desplegar codigo. para hacer simple, vas al primer cierre del (){}[] y precionar zf% y listo, para desacoplar solo preciona zfa y listo.
set.shiftwidth = 2
set.maxmempattern = 5000 -- maxmempattern or set.mmp = 5000
set.history = 1000 -- Sets how many lines of history VIM has to remember
set.gdefault = true -- Add g (global) to substitute operations, :s/pattern/replacement/
set.splitbelow = true -- Open split below
set.splitright = true -- Open split right
set.hlsearch = true -- Highlight search results
set.incsearch = true -- Makes search act like search in modern browsers
o.joinspaces = false -- Prevents inserting two spaces after punctuation on a join (J)
set.tabstop = 2 -- An indentation every two columns
set.softtabstop = 2 -- Let backspace delete indent
set.viewoptions = 'folds,options,cursor,unix,slash' -- Better Unix / Windows compatibility
set.magic = true -- For regular expressions turn magic on
set.tags = './tags;/' -- para usar tags Para indexar toda una carpeta raiz desde la terminal y que git ignore esa carpeta ctags -R -f ./.git/tags .
set.updatetime = 50 -- improve user experience updating more frequently
set.undofile = true -- Save undos after file closes
-- set.undodir="~/.config/nvim/undodir"
cmd('set undodir=~/.config/nvim/undodir') -- where to save undo histories, lua have a trouble with path HOME path '~''
set.undolevels = 1000 -- How many undos
set.undoreload = 10000 -- Number of lines to save for undo
set.pumheight = 20 -- Limit popup menu height
set.wildmenu = true
set.wildmode = 'longest:list,full'
set.wildoptions = 'pum'
set.expandtab = true -- On pressing tab, insert 2 spaces
o.wrap = true
o.list = false
set.linebreak = true -- Se corta en palabras y no en caracteres cuando wrap está puesto

-- cmd('source ~/.config/nvim/lua/settings/config.vim')
cmd([[
        autocmd BufWritePre * :%s/\s\+$//e "remove whitespaces
      autocmd BufWritePost * GitGutter
      autocmd BufNewFile,BufEnter *.php set syntax=php
      autocmd BufNewFile,BufRead *.php set filetype=php
      autocmd BufNewFile,BufRead *.md set filetype=txt

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

      let g:airline_symbols.space = "\ua0"
      let g:airline#extensions#tabline#enabled = 1
      let g:airline_theme='onedark'

      let g:blamer_enabled = 1

      if !has('gui_running')
        set t_Co=256
      endif

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
]])
