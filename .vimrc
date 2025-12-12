let mapleader = "'"
inoremap jk <ESC>
syntax on
set number relativenumber
set hlsearch
set ignorecase
set incsearch
nnoremap <leader>c :noh<CR>
if &term =~ '^xterm\|rxvt'
    " solid underscore
    let &t_SI .= "\<Esc>[4 q"
    " solid block
    let &t_EI .= "\<Esc>[2 q"
    " 1 or 0 -> blinking block
    " 3 -> blinking underscore
    " Recent versions of xterm (282 or above) also support
    " 5 -> blinking vertical bar
    " 6 -> solid vertical bar
endif
if &term =~ "xterm"
    let &t_SI = "\<Esc>[6 q"
    let &t_SR = "\<Esc>[4 q"
    let &t_EI = "\<Esc>[2 q"
endif

call plug#begin()
Plug 'tpope/vim-surround'
call plug#end()

set iskeyword-=_
