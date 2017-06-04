syntax on
set hidden
let g:rehash256 = 1
set foldmethod=indent
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
set autoread
set updatetime=250
set noswapfile
set number
set nowrap
set cursorline
set colorcolumn=80
set listchars=tab:▸\ ,eol:¬,trail:·
set fillchars+=vert:\ 
set list
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent

" plug

call plug#begin('~/.vim/plugged')

Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'ervandew/supertab'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'terryma/vim-multiple-cursors'
Plug 'matze/vim-move'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'Raimondi/delimitMate'
Plug 'wting/rust.vim'
Plug 'equalsraf/neovim-gui-shim'
Plug 'Ioannis-Kapoulas/vim-autoprefixer'
Plug 'sheerun/vim-polyglot'
Plug 'eugen0329/vim-esearch'
" Plug 'ap/vim-css-color'
" Plug 'PDV--phpDocumentor-for-Vim'
Plug 'neomake/neomake'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'easymotion/vim-easymotion'
Plug 'gregsexton/matchtag'
Plug 'dyng/ctrlsf.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'mhinz/vim-signify'
Plug 'neovim/node-host', { 'do': 'npm install' }
Plug 'vimlab/mdown.vim', { 'do': 'npm install' }
Plug 'Yggdroot/indentLine'
Plug 'KabbAmine/gulp-vim'
Plug 'godlygeek/tabular'
Plug 'joshdick/onedark.vim'

Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/echodoc.vim'
Plug 'Shougo/denite.nvim'

Plug 'jsfaint/gen_tags.vim'

call plug#end()

" /plug

colorscheme onedark

" airline

set laststatus=2
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='bubblegum'

" /airline

" nerdtree

let NERDTreeWinSize = 25
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" /nerdtree

" nerdtree-tabs

let g:nerdtree_tabs_open_on_console_startup = 1
let g:nerdtree_tabs_open_on_gui_startup = 1
let g:nerdtree_tabs_focus_on_files = 1
" bugfix
let g:nerdtree_tabs_synchronize_view = 0

" /nerdtree-tabs

" nerdtree-git-plugin

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

" /nerdtree-git-plugin

" vim-move

let g:move_key_modifier = 'C'

" /vim-move

" PDV--phpDocumentor-for-Vim

inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i
nnoremap <C-P> :call PhpDocSingle()<CR>
vnoremap <C-P> :call PhpDocRange()<CR>

" /PDV--phpDocumentor-for-Vim


" neomake

autocmd! BufWritePost * Neomake
let g:neomake_html_enabled_makers = []

" /neomake

" deoplete

let g:deoplete#enable_at_startup = 1

" /deoplete

" settings for tpl files

au BufReadPost *.tpl set ft=html
au BufReadPost *.tpl set syntax=php
au BufRead * retab

" /settings for tpl files

" ultisnips

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" /ultisnips

" indentLine

let g:indentLine_char = '·'
let g:indentLine_color_term = 239
let g:indentLine_color_gui = "#525965"
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)

" /indentLine

" LSP

let g:LanguageClient_autoStart = 1
nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> GD :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>

" /LSP

