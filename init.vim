"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=$HOME/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('$HOME/.cache/dein')

" Let dein manage dein
" Required:
call dein#add('$HOME/.cache/dein/repos/github.com/Shougo/dein.vim')

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

if dein#load_state('$HOME/.cache/dein')
  call dein#load_toml('$HOME/.config/nvim/dein.toml', {'lazy': 0})
endif

if dein#check_install()
  call dein#install()
endif

" coc log for status message
set statusline^=%{coc#status()}

" basic setup
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent
set number

set guifont=Ricty:h14

set showtabline=2
syntax enable

""" lsp
lua << EOF
local nvim_lsp = require('lspconfig')
EOF
"""

" theme setup
set background=dark
colorscheme tokyonight
let g:tokyonight_style = "night"

:Fern . -drawer

filetype plugin indent on

autocmd BufWritePre <buffer> LspDocumentFormatSync

""" Fern
let g:fern#default_hidden=1

nnoremap <C-q> :Fern . -drawer<CR>

"""


set completeopt=menuone,noinsert
inoremap <expr><C-n> pumvisible() ? "<Down>" : "<C-n>"
inoremap <expr><C-p> pumvisible() ? "<Up>" : "<C-p>"
