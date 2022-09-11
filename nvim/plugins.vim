call plug#begin('~/.vim/plugged')

Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-context'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-buffer'
Plug 'sainnhe/sonokai'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/urholaukkarinen/code-stats-vim.git'
Plug 'ThePrimeagen/harpoon'
Plug 'https://github.com/ggandor/leap.nvim.git'
Plug 'https://github.com/tpope/vim-repeat.git'
Plug 'nvim-lualine/lualine.nvim'

call plug#end()


