set runtimepath^=~/.vim/ajt-fortran.vim

set background=dark
set t_Co=256
colo PaperColor
let g:PaperColor_Theme_Options = {
  \   'theme': {
  \     'default.dark': {
  \       'transparent_background': 1
  \     }
  \   }
  \ }

let filetype_cuf = "fortran"
syntax on
filetype on
filetype plugin indent on
set showcmd
au BufNewFile,BufRead *.cuf set filetype=fortran
set number
set showmatch
set hlsearch
set smartcase
set ignorecase
set incsearch
set autoindent
set shiftwidth=2
set expandtab
set tabstop=2

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
syntax on
