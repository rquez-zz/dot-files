" Installing Vundle
" git clone git@github.com:gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"
"
" Vundle Settings
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

" Vundle Plugins
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" Git Wrapper
Plugin 'tpope/vim-fugitive'

" Git Commit Reminder after 15 writes
Plugin 'esneider/YUNOcommit.vim'
let g:YUNOcommit_after = 15

" Auto closes brackets, paraenthesis, and such.
Plugin 'Raimondi/delimitMate'

" Syntax checking 
Plugin 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{ntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['jshint']

Plugin 'scrooloose/nerdtree'
nmap <Leader>t :NERDTreeToggle<CR>

Plugin 'bling/vim-airline'
set laststatus=2

Plugin 'elzr/vim-json'

call vundle#end()
filetype plugin indent on

" Vim Settings
syntax on
set background=dark
set number
set shiftwidth=4
set tabstop=4
set softtabstop=4
set hidden
set expandtab
set wildmenu
set lazyredraw
set showmatch
set nowrap
set autoindent
set visualbell
set noerrorbells
set pastetoggle=<F2>
if version >= 703
        set colorcolumn=80
endif

" Syntax Coloring for SASS
autocmd BufNewFile,BufRead *.scss set syntax=css

" Snytax Coloring for EJS
autocmd BufNewFile,BufRead *.ejs set syntax=html
