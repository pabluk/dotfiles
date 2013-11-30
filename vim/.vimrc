syntax on
set showmatch
set incsearch
set nospell
set spelllang=en,fr,es
set spellsuggest=5
colorscheme delek
set ignorecase smartcase
set linebreak
map <Up> gk
map <Down> gj

set autoindent

if has("autocmd")
  au FileType python set ts=4 sw=4 smarttab et sts=4
  au FileType ruby set ts=2 sw=2 smartindent et
  au FileType sh set ts=4 sw=4 smartindent et
  au FileType html set ts=4 sw=4 smartindent et
endif
