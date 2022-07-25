" *********** CONFIGURACIONES *************

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

