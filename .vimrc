"Need this runtime path so that ajt is loaded BEFORE the other fortran indent files
set runtimepath^=~/.vim/pack/my_plugins/start/ajt-fortran.vim

"Paper color theme so that hilighting doesn't blind us anymore
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

"Spell check
" set spell spelllang=en_us

au BufNewFile,BufRead *.cuf set filetype=fortran

"set showcmd
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

"Remaping of pane movement
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"No more auto comment under commented line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

call plug#begin('~/.vim/plugged')
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'

" Unmanaged plugin (manually installed and updated)
Plug '~/.vim/manualy_downloaded/ajt-fortran.vim'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'https://github.com/tpope/vim-commentary.git'
Plug 'https://github.com/rhysd/vim-grammarous.git'

call plug#end()
