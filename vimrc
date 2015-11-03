set nocompatible " Be iMproved
filetype off

" vim-plug
call plug#begin('~/.vim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'fatih/vim-go'
Plug 'rust-lang/rust.vim'
Plug 'ekalinin/Dockerfile.vim'
Plug 'markcornick/vim-terraform'
Plug 'bling/vim-airline'
Plug 'gnupg.vim'
Plug 'vim-coffee-script'
Plug 'vitapluvia/vim-gurl'
Plug 'unblevable/quick-scope'
Plug 'tpope/vim-surround'
call plug#end()

filetype plugin indent on

" Silent errors if colorscheme not exist
silent! colorscheme solarized

" Global
syntax on
set background=dark
set timeoutlen=1000
set ttimeoutlen=0
set encoding=utf-8
set fileencoding=utf-8
set showmatch
set number
set relativenumber
set numberwidth=1
set modeline
set modelines=5
set laststatus=2
set undofile
set mouse=nv
set incsearch     " show search matches as you type
set showmatch
set hlsearch
set smartcase	  " ignore case if search pattern is all lowercase, case-sensitive otherwise
set ignorecase

" cancel search highlight with space
nnoremap <Space> :let @/=""<CR>

" vim-go settings
let g:go_fmt_command = "goimports"

" airline
let g:airline#extensions#tabline#enabled = 1

" Language specifics
autocmd FileType ruby setlocal shiftwidth=2 sts=2 expandtab smartindent
autocmd FileType yaml setlocal shiftwidth=2 sts=2 expandtab smartindent
autocmd BufNewFile,BufRead *.json set shiftwidth=2 sts=2 expandtab smartindent ft=javascript
autocmd FileType java setlocal shiftwidth=4 sts=4 expandtab smartindent
autocmd FileType python setlocal shiftwidth=4 sts=4 expandtab smartindent
autocmd FileType html setlocal shiftwidth=2 sts=2 expandtab smartindent
