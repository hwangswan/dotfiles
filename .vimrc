call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

syntax on

" Trim trailing whitespaces by pressing {F5}
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" Copy and paste from clipboard.
" This requires sudo apt-get install vim-gtk
map <C-c> "+y
map <C-v> "+p

" Highlight current line in Insert mode only.
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul

colorscheme onehalfdark

" Airline configuration

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

let g:airline_theme='onehalfdark'
let g:lightline= {
  \ 'colorscheme' : 'onehalfdark',
  \ 'active' : {
  \   'left' :[ [ 'mode', 'paste' ],
  \             ['gitbranch', 'readonly', 'filename', 'modified'] ]
  \ },
  \ 'component_function' : {
  \   'gitbranch' : 'FugitiveHead'
  \ },
  \ }

" Editor configuration

set t_Co=256
set cursorline
" lightline
" let g:lightline = { 'colorscheme': 'onehalfdark' }

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

set number
filetype plugin indent on
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set colorcolumn=80
