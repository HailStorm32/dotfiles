""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins                                                    "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')    
Plug 'itchyny/lightline.vim'
Plug 'iCyMind/NeoSolarized'
Plug 'sheerun/vim-polyglot'
Plug 'lervag/vimtex'
Plug 'octol/vim-cpp-enhanced-highlight'
call plug#end()



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM stuff                                                  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if !exists("g:syntax_on")
    syntax enable
endif

set autoindent
set autoread
set background=dark
set backspace=2
set breakindent
set colorcolumn=81
set directory=$HOME/.vim/swap//
set expandtab
set number
set scrolloff=8
set shiftwidth=4
set softtabstop=4
set tabstop=4
set textwidth=0
set undodir=$HOME/.vim/undo//
set undofile
set termguicolors

colorscheme NeoSolarized

augroup autoreload
    autocmd!
    autocmd BufEnter,CursorHold,CursorHoldI,FocusGained *
            \ if mode() != 'c' | checktime | endif
    autocmd FileChangedShellPost *
            \ echohl WarningMsg | echo "File changed on disk, buffer reloaded."
            \ | echohl None
augroup END






""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" lightline stuff                                            "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2
set noshowmode
let g:lightline = {
    \'colorscheme': 'selenized_dark',
    \}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ultisnips stuff                                            "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="q"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

inoremap <c-x><c-k> <c-x><c-k>
