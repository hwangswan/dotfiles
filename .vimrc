syntax on

set t_Co=256
set cursorline
colorscheme onehalfdark
let g:airline_theme='onehalfdark'
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
