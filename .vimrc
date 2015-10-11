set number
set nowrap
syntax on
set cursorline
let g:rehash256 = 1
colorscheme onedark
set listchars=tab:\|\ 
set list
set tabstop=4
set shiftwidth=4

"	plug

call plug#begin('~/.vim/plugged')

Plug 'bling/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'ervandew/supertab'
Plug 'airblade/vim-gitgutter'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'shawncplus/phpcomplete.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'myhere/vim-nodejs-complete'

call plug#end()

"	/plug

"	airline

set laststatus=2
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

"	/airline

"	syntastic

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"	/syntastic

"	nerdtree

let NERDTreeWinSize = 20
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
autocmd vimenter * NERDTreeToggle

"	/nerdtree

"	tagbar

autocmd vimenter * TagbarToggle

"	/tagbar

"	nerdtree-git-plugin

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

"	nerdtree-git-plugin

"	php

let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

"	/php
