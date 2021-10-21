" Initialise Plugin Manager
call plug#begin('~/.vim/autoload')
" Theme
Plug 'dracula/vim', { 'as': 'dracula' }
" Syntax Highlighting
Plug 'sheerun/vim-polyglot'
" Auto Completetion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Statusline
Plug 'vim-airline/vim-airline'
" Icons
Plug 'ryanoasis/vim-devicons'
" Fuzzy Finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()
" Configuration
set nocompatible
set noshowmode
set number
set t_Co=256
set nobackup
set noswapfile
set noundofile
" Theme Configuration
set termguicolors
colorscheme dracula
" Auto Completion Configuration
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-json',
  \ 'coc-pyright',
  \ 'coc-emmet'
  \ ]
" Status Line Configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
" Mapppings
nnoremap <C-P> :Files<CR>
nnoremap <C-B> :Buffers<CR>
