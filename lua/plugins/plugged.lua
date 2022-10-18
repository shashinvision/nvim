local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')
Plug 'lukas-reineke/indent-blankline.nvim'
Plug ('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})
Plug 'p00f/nvim-ts-rainbow'
Plug 'ap/vim-css-color'
Plug 'StanAngeloff/php.vim'
Plug 'jbgutierrez/vim-better-comments'
Plug 'nvim-lua/plenary.nvim'
Plug 'simeji/winresizer'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug 'joshdick/onedark.vim'
Plug 'dm1try/golden_size'
Plug 'rhysd/git-messenger.vim'
Plug 'yegappan/mru' -- Esto es para acceder al historial de archivos visitados y editados el comando es :MRU
-- Plug 'mhinz/vim-startify'
Plug 'glepnir/dashboard-nvim'
Plug 'nvim-lualine/lualine.nvim'
-- If you want to have icons in your statusline choose one of these
Plug 'kyazdani42/nvim-web-devicons'
Plug ('akinsho/bufferline.nvim', { tag = 'v2.*' })
Plug 'kyazdani42/nvim-tree.lua'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'
Plug 'APZelos/blamer.nvim'
Plug 'itchyny/vim-gitbranch'
Plug 'jparise/vim-graphql'
Plug 'christoomey/vim-tmux-navigator' -- con control h y control l navego facil entre pantalla, con nerdtree me posiciono en otro archicvo y presiono la tecla s y divide la pantalla
Plug ('junegunn/fzf', { dir = '~/.fzf', ['do'] = './install --all' })
Plug 'tpope/vim-commentary' -- con gcc en modo vista gcc para descomentar una linea, con control v y seleccionamos varias lineas y colocamos gc y se comentan todas
Plug ('neoclide/coc.nvim', {branch = 'release'}) -- necesita nodeJS
Plug 'puremourning/vimspector'
Plug 'airblade/vim-gitgutter' -- Para ver los cambios en git como linea que se agrega con un signo +, si quitamos lineas con - y si se modifico una con ~
Plug 'vim-scripts/taglist.vim' -- Para ver os tags de los archivos
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-surround' -- Para eliminar todo lo que este rodeado por un elemento ejemplo comillas dobles para cambiar las comillas simples por dobles cs'" con ds" se eliminan las comillas
Plug ('mg979/vim-visual-multi', {branch = 'master'}) -- Multicursor Ctrl+d como en VSCode
Plug 'vimlab/split-term.vim'
Plug 'mbbill/undotree'
Plug 'Townk/vim-autoclose'
-- Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug ('turbio/bracey.vim', {['do'] = 'npm install --prefix server'}) --WebDevelopment
Plug 'alvan/vim-closetag'
Plug 'pangloss/vim-javascript'
Plug 'sheerun/vim-polyglot'
Plug 'kabbamine/vcoolor.vim'
Plug 'posva/vim-vue'
Plug ('prettier/vim-prettier', { ['do'] = 'yarn install --frozen-lockfile --production' })
Plug 'MattesGroeger/vim-bookmarks'
Plug 'AndrewRadev/tagalong.vim' -- Para cambiar los tags de HTML automáticamente
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'sindrets/diffview.nvim'
Plug 'windwp/nvim-spectre'
-- Autocomplete
Plug ('Shougo/deoplete.nvim', { ['do'] = ':UpdateRemotePlugins' })
-- Typescript
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'Quramy/tsuquyomi'
Plug 'neoclide/vim-jsx-improve'
Plug ('mhartington/nvim-typescript', { ['do'] = './install.sh' })
Plug 'JamshedVesuna/vim-markdown-preview'
vim.call('plug#end')
