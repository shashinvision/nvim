local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use {
    "williamboman/mason.nvim",
    run = ":MasonUpdate" -- :MasonUpdate updates registry contents
    }
  -- My plugins here
  -- use 'foo1/bar1.nvim'
  -- use 'foo2/bar2.nvim'
     use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
         }
    use 'p00f/nvim-ts-rainbow'
    use 'ap/vim-css-color'
    use 'StanAngeloff/php.vim'
    use 'jbgutierrez/vim-better-comments'
    use 'nvim-lua/plenary.nvim'
    use 'simeji/winresizer'
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'nvim-telescope/telescope-file-browser.nvim'
    use "lukas-reineke/indent-blankline.nvim"
    use 'joshdick/onedark.vim'
    use 'dm1try/golden_size'
    use 'rhysd/git-messenger.vim'
    use 'yegappan/mru' -- Esto es para acceder al historial de archivos visitados y editados el comando es :MRU
    -- use 'mhinz/vim-startify'
    use {
      'glepnir/dashboard-nvim',
      event = 'VimEnter',
      config = function()
        require('dashboard').setup {
          -- config
        }
      end,
      requires = {'nvim-tree/nvim-web-devicons'}
    }
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    -- If you want to have icons in your statusline choose one of these
    use 'kyazdani42/nvim-web-devicons'
    -- using packer.nvim
    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
    use 'kyazdani42/nvim-tree.lua'
    use 'ryanoasis/vim-devicons'
    use 'tpope/vim-fugitive'
    use 'APZelos/blamer.nvim'
    use 'itchyny/vim-gitbranch'
    use 'jparise/vim-graphql'
    use 'christoomey/vim-tmux-navigator' -- con control h y control l navego facil entre pantalla, con nerdtree me posiciono en otro archicvo y presiono la tecla s y divide la pantalla
    use { 'junegunn/fzf', run = ":call fzf#install()" }
    use { 'junegunn/fzf.vim' }
    use 'tpope/vim-commentary' -- con gcc en modo vista gcc para descomentar una linea, con control v y seleccionamos varias lineas y colocamos gc y se comentan todas
    use 'puremourning/vimspector'
    use 'airblade/vim-gitgutter' -- Para ver los cambios en git como linea que se agrega con un signo +, si quitamos lineas con - y si se modifico una con ~
    use 'vim-scripts/taglist.vim' -- Para ver os tags de los archivos
    use 'godlygeek/tabular'
    use 'plasticboy/vim-markdown'
    use 'tpope/vim-surround' -- Para eliminar todo lo que este rodeado por un elemento ejemplo comillas dobles para cambiar las comillas simples por dobles cs'" con ds" se eliminan las comillas
    use 'mg979/vim-visual-multi' -- Multicursor Ctrl+d como en VSCode
    use 'vimlab/split-term.vim'
    use 'mbbill/undotree'
    use 'Townk/vim-autoclose'
    -- use 'jiangmiao/auto-pairs'
    use 'mattn/emmet-vim'
    use 'turbio/bracey.vim' --WebDevelopment
    use 'alvan/vim-closetag'
    use 'pangloss/vim-javascript'
    use 'sheerun/vim-polyglot'
    use 'kabbamine/vcoolor.vim'
    use 'posva/vim-vue'
    use 'prettier/vim-prettier'
    use 'MattesGroeger/vim-bookmarks'
    use 'AndrewRadev/tagalong.vim' -- Para cambiar los tags de HTML automáticamente
    use 'nvim-lua/popup.nvim'
    use 'sindrets/diffview.nvim'
    use 'windwp/nvim-spectre'
    -- Typescript
    use 'leafgarland/typescript-vim'
    use 'peitalin/vim-jsx-typescript'
    -- use 'Quramy/tsuquyomi'
    use 'neoclide/vim-jsx-improve'
    use 'JamshedVesuna/vim-markdown-preview'
    use 'leafoftree/vim-vue-plugin'
    -- use {'tzachar/compe-tabnine', run='./install.sh', requires='hrsh7th/nvim-compe'}
    -- use 'hrsh7th/nvim-compe'
    use {
      'm-demare/hlargs.nvim',
      requires = { 'nvim-treesitter/nvim-treesitter' }
    }
    use {
      'sudormrfbin/cheatsheet.nvim',

      requires = {
        {'nvim-telescope/telescope.nvim'},
        {'nvim-lua/popup.nvim'},
        {'nvim-lua/plenary.nvim'},
      }
    }
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    -- Lua
    use {
      "folke/todo-comments.nvim",
      requires = "nvim-lua/plenary.nvim",
      config = function()
        require("todo-comments").setup {
          -- your configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
        }
      end
    }
    -- https://github.com/VonHeikemen/lsp-zero.nvim
    use {
      'VonHeikemen/lsp-zero.nvim',
      requires = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},
        {'williamboman/mason.nvim'},
        {'williamboman/mason-lspconfig.nvim'},

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},
        {'hrsh7th/cmp-buffer'},
        {'hrsh7th/cmp-path'},
        {'saadparwaiz1/cmp_luasnip'},
        {'hrsh7th/cmp-nvim-lsp'},
        {'hrsh7th/cmp-nvim-lua'},
        {'hrsh7th/cmp-cmdline'},
        {'hrsh7th/cmp-vsnip'},
        {'hrsh7th/cmp-nvim-lsp'},
        {'hrsh7th/vim-vsnip'},

        -- Snippets
        {'L3MON4D3/LuaSnip'},
        {'saadparwaiz1/cmp_luasnip'},
        {'rafamadriz/friendly-snippets'},
        {'SirVer/ultisnips'},
        {'quangnguyen30192/cmp-nvim-ultisnips'},

        {'dcampos/nvim-snippy'},
        {'dcampos/cmp-snippy'}
      }
    }
    -- Lua
    use {
      "folke/trouble.nvim",
      requires = "nvim-tree/nvim-web-devicons",
      config = function()
        require("trouble").setup {
          -- your configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
        }
      end
    }
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
