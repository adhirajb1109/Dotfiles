" Initialise Plugin Manager
call plug#begin('~/.vim/autoload')
" Themes
Plug 'arcticicestudio/nord-vim'
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
" Start Screen
Plug 'mhinz/vim-startify'
" File Explorer
Plug 'preservim/nerdtree'
" Tag Explorer
Plug 'preservim/tagbar'
" Git Integration
Plug 'tpope/vim-fugitive'
call plug#end()
" Vim Configuration
set nocompatible
set noshowmode
set number
set splitbelow
set nobackup
set noswapfile
set noundofile
" Theme Configuration
set termguicolors
colorscheme nord
" Auto Completion Configuration
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-prettier',
  \ 'coc-emmet',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-tailwindcss',
  \ 'coc-tsserver',
  \ 'coc-graphql',
  \ 'coc-pyright',
  \ 'coc-java'
  \ ]
" Status Line Configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
" Fuzzy Finder Configuration
let g:fzf_preview_window = ['right:hidden', 'ctrl-/']
" Mapppings
nnoremap <C-P> :Files<CR>
nnoremap <C-F> :NERDTreeToggle<CR>
nnoremap <C-T> :TagbarToggle<CR>
