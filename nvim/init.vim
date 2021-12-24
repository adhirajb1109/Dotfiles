call plug#begin('~/.config/nvim/plugged')
" Theme
Plug 'shaunsingh/nord.nvim'
" Syntax Highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Fuzzy Finder
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make' }
" Status Line
Plug 'nvim-lualine/lualine.nvim'
Plug 'akinsho/bufferline.nvim'
" Icons
Plug 'kyazdani42/nvim-web-devicons'
" Start Screen
Plug 'glepnir/dashboard-nvim'
" File Explorer
Plug 'kyazdani42/nvim-tree.lua'
call plug#end()
" Vim configuration
set nocompatible
set noshowmode
set number
set splitbelow
set nobackup
set noswapfile
set noundofile
" Theme configuraton
set termguicolors
colorscheme nord
" Start Screen Configuration
let g:dashboard_default_executive = 'telescope'
let g:dashboard_custom_header = [
\ ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
\ ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
\ ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
\ ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
\ ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
\ ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
\]
" Source All Lua Plugins
lua require('adhirajbhatia')
" Mappings
nnoremap <C-P> :Telescope find_files<CR>
nnoremap <C-F> :NvimTreeToggle<CR>
