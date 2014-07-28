set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()


python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup


" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'

"let g:airline#extensions#tabline#enabled=1
"let g:airline_inactive_collapse=0
let g:airline#extensions#enabled=1
let g:airline_left_sep=''
"let g:airline_left_sep = ''
let g:airline_right_sep=''
"let g:airline_right_sep = ''
let g:airline_theme= 'molokai'
set laststatus=2

filetype plugin indent on

syntax on
set showmatch
set incsearch
set nospell
set spelllang=en,fr,es
set spellsuggest=5
set ignorecase smartcase
set linebreak
map <Up> gk
map <Down> gj

set autoindent

" See .vim/ftplugin/ for more files
if has("autocmd")
  au FileType ruby set ts=2 sw=2 smartindent et
  au FileType sh set ts=4 sw=4 smartindent et
  au FileType html set ts=4 sw=4 smartindent et
  au FileType css set ts=2 sw=2 smartindent et sts=2
endif

" Copy to X clipboard with Ctrl+C
" You need to install xclip
" sudo apt-get install xclip
vmap <C-c> :<Esc>`>a<CR><Esc>mx`<i<CR><Esc>my'xk$v'y!xclip -selection c<CR>u

colorscheme delek
" Molokai colorscheme settings
"colorscheme molokai
"let g:molokai_original = 1
"let g:rehash256 = 1
"set background=dark
"hi Normal ctermfg=252 ctermbg=none
