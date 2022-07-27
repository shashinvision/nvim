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
