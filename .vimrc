
execute pathogen#infect()

syntax on                 " Enable syntax processing.

colorscheme solarized     " ...

filetype plugin indent on " Filetype detection and indent detection.

let mapleader=","         " Leader == , 

set backspace=indent,eol,start

set expandtab             " Tabs == spaces.
set number                " Enable line numbers.
set tabstop=4             " Spaces per tab.
set softtabstop=4         " Spaces per tab when editing.

set ttyfast               " Faster redraw.
set showcmd               " Show command bottom right.
set cursorline            " Highlight current line.
set wildmenu              " Visual autocomplete.
set showmatch             " Highlight matching braces.

set incsearch             " Search as characters are entered
set hlsearch              " Highlight search matches.

set autoread              " Don't prompt to reload a file changed outside of Vim. Just do eet.


" Auto reload on changes to .vimrc!
augroup reload_vimrc
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END
