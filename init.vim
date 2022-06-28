"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/lkeix/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('/Users/lkeix/.cache/dein')

" Let dein manage dein
" Required:
call dein#add('/Users/lkeix/.cache/dein/repos/github.com/Shougo/dein.vim')

" Add or remove your plugins here like this:
"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

if dein#load_state('~/.cache/dein')
  call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
endif

if dein#check_install()
"  call dein#install()
endif

" coc log for status message
set statusline^=%{coc#status()}

" basic setup
set expandtab
set tabstop=1
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent
set number

set guifont=Ricty:h14

set showtabline=2
set termguicolors
set number

" theme setup
set background=dark
colorscheme hybrid

filetype plugin indent on
syntax enable
