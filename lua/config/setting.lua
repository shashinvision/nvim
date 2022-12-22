local o = vim.o --vim options
local wo = vim.wo -- values per windows
local bo = vim.bo -- values per buffers
local set  = vim.opt -- Generals options (Windows/Files)
local g = vim.g -- Globals values
local env = vim.env -- Environment variables
local cmd = vim.cmd -- for VimScript commands
local key = vim.keymap -- for keymaps
local api = vim.api -- API VIM

g.mapleader = ' ' -- tecla lider, en este caso el espacio
set.compatible = false
set.title = true
set.filetype = 'none'
set.cmdheight = 1
set.scrolloff = 8
set.inccommand = 'split'
cmd('syntax on')
cmd('syntax enable') --para resaltar el codigo cuando lo seleccionamos
cmd('filetype off') -- Requerido
cmd('filetype plugin indent on')
cmd('colorscheme onedark')
set.colorcolumn='80'
set.number = true --para que me muestre los numeros de las lineas
set.relativenumber = true -- para que me de el numero de lineas relativo
set.cursorline = true -- Para que muestre el cursor donde estamos
set.mouse = 'a' --Para activar el mouse
set.clipboard = 'unnamed' --  Para poder utilizar el copy/paste fuera de la terminal, solo selecciona en modo visual teclas la letra y para copiar, para pegar desde fuera de la terminal teclas la letra p en modo visual y listo
set.clipboard = 'unnamedplus' --  Para poder utilizar el copy/paste fuera de la terminal, solo selecciona en modo visual teclas la letra y para copiar, para pegar desde fuera de la terminal teclas la letra p en modo visual y listo
set.laststatus = 10 -- Para guardar la cantidad de rehacer y deshacer
set.showcmd = true -- para mostrar los comandos que se escriben
o.showmode = false -- eliminamos que nos indique en que modo estamos (vista, insertar comando)
set.showmatch = true
vim.scriptencoding = 'utf-8'
set.encoding = 'utf-8'
set.fileencoding = 'utf-8' -- The encoding written to file.
set.ignorecase = true -- para innorar el key sensitive en las busquedas, podria interferir en los reemplazos masivos, para eso colocar el comando :set noignorecase
set.autoindent = true
set.autoread = true
set.smartcase = true
set.smartindent = true
set.smarttab = true
set.foldmethod = 'manual' -- para plegar y desplegar codigo. para hacer simple, vas al primer cierre del (){}[] y precionar zf% y listo, para desacoplar solo preciona zfa y listo.
set.shiftwidth = 4
set.maxmempattern = 5000 -- maxmempattern or set.mmp = 5000
set.history = 1000 -- Sets how many lines of history VIM has to remember
set.gdefault = true -- Add g (global) to substitute operations, :s/pattern/replacement/
set.splitbelow = true -- Open split below
set.splitright = true -- Open split right
set.hlsearch = true -- Highlight search results
set.incsearch = true -- Makes search act like search in modern browsers
set.isfname:append("@-@")
o.joinspaces = false -- Prevents inserting two spaces after punctuation on a join (J)
set.tabstop = 4 -- An indentation every two columns
set.softtabstop = 4 -- Let backspace delete indent
set.backspace = { 'start', 'eol', 'indent' }
set.viewoptions = 'folds,options,cursor,unix,slash' -- Better Unix / Windows compatibility
set.magic = true -- For regular expressions turn magic on
set.tags = './tags;/' -- para usar tags Para indexar toda una carpeta raiz desde la terminal y que git ignore esa carpeta ctags -R -f ./.git/tags .
set.updatetime = 50 -- improve user experience updating more frequently
set.undofile = true -- Save undos after file closes
cmd('set undodir=~/.config/nvim/undodir') -- where to save undo histories, lua have a trouble with path HOME path '~''
-- set.undodir = '~/.config/nvim/undodir' -- where to save undo histories
set.wildoptions = 'pum'
set.winblend = 0
set.undolevels = 1000 -- How many undos
set.undoreload = 10000 -- Number of lines to save for undo
set.pumheight = 20 -- Limit popup menu height
set.wildmenu = true
set.wildmode = 'longest:list,full'
set.background = 'dark'
set.pumblend = 5
set.expandtab = true -- On pressing tab, insert 2 spaces
set.wrap = true
o.list = false
set.linebreak = true -- Se corta en palabras y no en caracteres cuando wrap está puesto
set.breakindent = true
set.path:append { '**' } -- Finding files - Search down into subfolders
set.wildignore:append { '*/node_modules/*' }
set.wildignore:append { '*/vendor/*' }
set.termguicolors = true
set.swapfile = false
set.guicursor = ""
set.signcolumn = "yes"

cmd([[
      autocmd BufWritePre * :%s/\s\+$//e "remove whitespaces
      autocmd BufWritePost * GitGutter
      autocmd BufNewFile,BufRead *.md set filetype=txt
     " autocmd BufNewFile,BufEnter *.php set syntax=php
     " autocmd BufNewFile,BufRead *.php set filetype=php

      if (empty($TMUX))
        if (has("nvim"))
          "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
          let $NVIM_TUI_ENABLE_TRUE_COLOR=1
        endif
      endif

      " autocmd FileType html,css,js,jsx,vue EmmetInstall

      if has("termguicolors")     " set true colors
          set t_8f=\[[38;2;%lu;%lu;%lum
          set t_8b=\[[48;2;%lu;%lu;%lum
          set termguicolors
      endif

      hi! Normal ctermbg=NONE guibg=NONE
      hi! NonText ctermbg=NONE guibg=NONE

      if !has('gui_running')
        set t_Co=256
        let g:AutoClosePreserveDotReg = 0
      endif

    ]])
