call plug#begin('~/.vim/autoload')
Plug 'tpope/vim-sensible'
Plug 'dracula/vim', { 'as': 'dracula' }
call plug#end()
set number
set noswapfile
set termguicolors
syntax on
let g:dracula_colorterm = 0
let g:dracula_italic = 0
colorscheme dracula
