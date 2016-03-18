" Vundle Settings
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

" Vundle Plugins
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Markdown syntax
Plugin 'plasticboy/vim-markdown'
let g:vim_markdown_folding_disabled=1

" Git Wrapper
Plugin 'tpope/vim-fugitive'

" Auto closes brackets, paraenthesis, and such.
Plugin 'Raimondi/delimitMate'

" Docker syntax
Plugin 'ekalinin/Dockerfile.vim'

" Syntax checking
Plugin 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{ntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['jshint']

" NerdTree
Plugin 'scrooloose/nerdtree'
nmap <Leader>t :NERDTreeToggle<CR>

" Airline - Vim Status Bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
set laststatus=2
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_theme='tomorrow'
let g:airline#extensions#syntastic#enabled = 1

" Ansible Syntax
Plugin 'chase/vim-ansible-yaml'

call vundle#end()

" Vim Settings
filetype plugin indent on
filetype plugin on
syntax on
set t_Co=256
set omnifunc=syntaxcomplete#Complete
set nocp
set number
set shiftwidth=4
set tabstop=4
set softtabstop=4
set hidden
set expandtab
set smartindent
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

match ErrorMsg '\s\+$'

" Spell check git commits
autocmd Filetype gitcommit setlocal spell textwidth=72

colors wombat256mod
