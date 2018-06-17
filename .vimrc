set textwidth=79    
set shiftwidth=4      
set tabstop=4 
set expandtab       
set softtabstop=4
set shiftround         
set autoindent 
set number
syntax on

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

Plugin 'fatih/vim-go'

"Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-surround'
Plugin 'nvie/vim-flake8'
Plugin 'Valloric/YouCompleteMe'
"Plugin 'klen/python-mode'
"""Plugin 'cburroughs/pep8.py'

"""let g:pymode_python = 'python3'

