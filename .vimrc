execute pathogen#infect()
syntax on                       " Enable syntax processing
colorscheme solarized           " 
filetype plugin indent on       " Filetype detection and indent detection
let mapleader=","               " Leader == ,

set autoindent                  "
set autoread                    " Don't prompt to reload a file changed outside of Vim Just do eet
set background=dark             " Dark even if the termial background is set to light
set backspace=indent,eol,start
set cursorline                  " Highlight current line
set expandtab                   " Tabs == spaces
set incsearch                   " Search as characters are entered
set nobackup                    " Disable backup
set noswapfile                  " Disable swapfile
set number                      " Enable line numbers
set shiftwidth=0                " 
set showcmd                     " Show command bottom right
set showmatch                   " Highlight matching braces
set softtabstop=4               " Spaces per tab when editing
set tabstop=4                   " Spaces per tab
set ttyfast                     " Faster redraw
set wildignore+=.*,node_modules/**,bower_components/**
set wildmenu                    " Visual autocomplete

" Emmet, HTML and CSS files only.
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
" Emmet, tab to expand.
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

" Auto reload on changes to .vimrc!
augroup reload_vimrc
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END

" Ignore files listed in .gitignore when fuzzy searching
let g:unite_source_rec_async_command = 'ag --follow --nocolor --nogroup --hidden -g ""'
nnoremap <leader>f :Unite file_rec/async<cr>

noremap ; :
noremap : ;

nnoremap <C-F> :OverCommandLine%s/<CR>
vnoremap <C-F> :OverCommandLine s/<CR>

nnoremap <leader>d : NERDTreeToggle<CR>
nnoremap <leader><leader> <c-^>

" vim-test
nnoremap  <leader>t :TestNearest<CR>
nnoremap  <leader>T :TestFile<CR>
nnoremap  <leader>a :TestSuite<CR>
nnoremap  <leader>l :TestLast<CR>
nnoremap  <leader>g :TestVisit<CR>
let test#strategy = "neovim"
