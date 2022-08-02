if !&compatible
  set nocompatible
endif

" reset augroup
augroup MyAutoCmd
  autocmd!
augroup END

" dein settings {{{
let s:cache_home = empty($XDG_CACHE_HOME) ? expand('~/.cache') : $XDG_CACHE_HOME
let s:dein_dir = s:cache_home . '/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if !isdirectory(s:dein_repo_dir)
  call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
endif
let &runtimepath = s:dein_repo_dir .",". &runtimepath
" create cache
let s:toml_file = fnamemodify(expand('<sfile>'), ':h').'/dein.toml'
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  call dein#load_toml(s:toml_file)
  call dein#end()
  call dein#save_state()
endif
" auto install
if has('vim_starting') && dein#check_install()
  call dein#install()
endif

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

" theme setup
set background=dark
colorscheme tokyonight
let g:tokyonight_style = "night"


filetype plugin indent on

autocmd BufWritePre <buffer> LspDocumentFormatSync

inoremap <expr><LF>  pumvisible() ? neocomplcache#close_popup() : "<LF>"
inoremap <silent><expr> <LF> coc#pum#visible() ? coc#_select_confirm()
                                \: "\<C-g>u\<LF>\<c-r>=coc#on_enter()\<LF>"

:NvimTreeToggle

inoremap <expr> <c-y> pumvisible() ? "\<c-y>" : "\<c-x>\<c-o>\<c-y>"
