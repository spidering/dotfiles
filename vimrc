"encoding
set encoding=utf-8
scriptencoding utf-8
set fileencoding=utf-8
set fileencodings=ucs-boms,utf-8,euc-jp,cp932
set ambiwidth=double

"tab indent
set expandtab
set tabstop=4
set softtabstop=4
set autoindent
set smartindent
set shiftwidth=4

"text search
set incsearch
set ignorecase
set smartcase
set hlsearch
set wrapscan
nnoremap <ESC><ESC> :<C-u>set nohlsearch!<CR>
"nnoremap <ESC><ESC> :noh<CR>


"Cursor
set whichwrap=b,s,h,l,<,>,[,],~
set number
"set cursorline
nnoremap j gj
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk

set backspace=indent,eol,start

"Parentaces
set showmatch
source $VIMRUNTIME/macros/matchit.vim

set wildmenu
set history=5000

"paste
if &term =~ "xterm"
    let &t_SI .= "\e[?2004h"
    let &t_EI .= "\e[?2004l"
    let &pastetoggle = "\e[201~"
    
    function XTermPasteBegin(ret)
        set paste
        return a:ret
    endfunction

    inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
endif

"Neo Bundle
if &compatible
    set nocompatible
endif
set runtimepath+=/home/yosuke/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('/home/yosuke/.vim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'

"Add or remove my Bundle here
"NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'tomasr/molokai'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'w0ng/vim-hybrid'

"NeoBundle 'itchyny/lightline.vim'

call neobundle#end()

filetype plugin indent on
NeoBundleCheck

"set background=dark
autocmd ColorScheme * hi Comment ctermfg=White 
colorscheme molokai
"colorscheme hybrid
set t_Co=256
filetype plugin on
syntax on 
