syntax on

set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set incsearch

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey


call plug#begin(stdpath('data') . '/plugged')
Plug 'arcticicestudio/nord-vim'
Plug 'vim-utils/vim-man'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'

call plug#end()

colorscheme nord

