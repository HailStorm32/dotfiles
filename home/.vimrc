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

augroup autoreload
    autocmd!
    autocmd BufEnter,CursorHold,CursorHoldI,FocusGained *
            \ if mode() != 'c' | checktime | endif
    autocmd FileChangedShellPost *
            \ echohl WarningMsg | echo "File changed on disk, buffer reloaded."
            \ | echohl None
augroup END
