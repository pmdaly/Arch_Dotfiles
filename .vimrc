" Setup!
"
" 1. git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" 2. vim +PluginInstall +qall or :PluginInstall

" Where's my vim?
" 
" :version
" :echo expand('~')
" :echo $HOME
" :echo $VIM
" :echo $VIMRUNTIME

set nocompatible              " be iMproved, required
filetype off                  " required

" May need to change this path.
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'LaTeX-Box-Team/LaTeX-Box'
Bundle 'scrooloose/nerdtree'
Bundle 'altercation/solarized'
Bundle 'flazz/vim-colorschemes'

"set rnu

" The bundles you install will be listed here

filetype plugin indent on

" The rest of your config follows here
"se t_Co=256
"let g:solarized_termcolors=256
"syntax enable
"set background=light
"colorscheme solarized

" Powerline setup
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2

set textwidth=79  " lines longer than 79 columns will be broken
set backspace=indent,eol,start  " more powerful backspacing
set shiftwidth=4  " operation >> indents 4 columns; << unindents 4 columns
set tabstop=4     " a hard TAB displays as 4 columns
set expandtab     " insert spaces when hitting TABs
set softtabstop=4 " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set shiftround    " round indent to multiple of 'shiftwidth'
set autoindent    " align the new line indent with the previous line
set showcmd	  " show last command entered in the bottom bar
"set cursorline	  " highlist current line
set wildmenu	  " visual autocomplete
set number
"autocmd vimenter * NERDTree " sets nerd tree to start up on vim load

"noremap <Up> <NOP>
"noremap <Down> <NOP>
"noremap <Left> <NOP>
"noremap <Right> <NOP>
nnoremap <leader>ll :w<CR>:!latexmk -pdf %<CR>
