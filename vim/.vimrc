" Initialise Plugin Manager
call plug#begin('~/.vim/autoload')
" Theme
Plug 'joshdick/onedark.vim'
" Syntax Highlighting
Plug 'sheerun/vim-polyglot'
Plug 'uiiaoo/java-syntax.vim'
" Auto Completetion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Statusline
Plug 'vim-airline/vim-airline'
" Icons
Plug 'ryanoasis/vim-devicons'
" Fuzzy Finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Start Screen
Plug 'mhinz/vim-startify'
" File Explorer
Plug 'francoiscabrol/ranger.vim'
call plug#end()
" Vim Configuration
set nocompatible
set noshowmode
set number
set nobackup
set noswapfile
set noundofile
" Theme Configuration
set termguicolors
colorscheme onedark
" Auto Completion Configuration
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-css',
  \ 'coc-html',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-json',
  \ 'coc-pyright',
  \ 'coc-emmet',
  \ 'coc-java'
  \ ]
" Status Line Configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
" Start Screen Configuration
let g:startify_custom_header = [
      \ ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗    ██╗',
      \ ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
      \ ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
      \ ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
      \ ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
      \ ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
      \]
let g:startify_enable_special = 0
" Mapppings
nnoremap <C-P> :Files<CR>
nnoremap <C-B> :Buffers<CR>
nnoremap <C-F> :Ranger<CR>
