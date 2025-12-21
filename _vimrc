let mapleader = " "

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
syntax on

set number
set cursorline
set scrolloff=9

set mouse=
set splitright

nnoremap <leader>nh :noh<CR>
set clipboard=unnamed,unnamedplus
set termguicolors
set background=dark
colorscheme retrobox

set viewoptions=folds,options,cursor,unix,slash
autocmd BufWinLeave * silent! mkview
autocmd BufWinEnter * silent! loadview
