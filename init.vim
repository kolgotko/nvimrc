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
set relativenumber
set nowrap
set cursorline
set colorcolumn=80
set listchars=tab:▸\ ,eol:¬,trail:·
set fillchars+=vert:\ 
set list
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
set exrc

set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent
set mouse=a

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
Plug 'sheerun/vim-polyglot'
Plug 'eugen0329/vim-esearch'
Plug 'Shougo/deoplete.nvim', { 'tag': '4.0-serial', 'do': ':UpdateRemotePlugins' }
Plug 'easymotion/vim-easymotion'
Plug 'gregsexton/matchtag'
Plug 'dyng/ctrlsf.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'mhinz/vim-signify'
Plug 'Yggdroot/indentLine'
Plug 'KabbAmine/gulp-vim'
Plug 'godlygeek/tabular'
Plug 'joshdick/onedark.vim'
Plug 'Shougo/echodoc.vim'
Plug 'Shougo/denite.nvim'
Plug 'jsfaint/gen_tags.vim'
Plug 'Rican7/php-doc-modded'
Plug 'janko-m/vim-test'
Plug 'tpope/vim-repeat'

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'zsh install.sh',
    \ }

call plug#end()

" /plug

let g:onedark_termcolors=256
colorscheme onedark

" airline

set laststatus=2
set noshowmode
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='bubblegum'

" /airline

" lightline

set laststatus=2
set noshowmode
let g:lightline = {
    \ 'colorscheme': 'onedark',
    \ }

" /lightline

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

" deoplete

let g:deoplete#enable_at_startup = 1
function Multiple_cursors_before()
    let g:deoplete#disable_auto_complete = 1
endfunction
function Multiple_cursors_after()
    let g:deoplete#disable_auto_complete = 0
endfunction

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

" gen_tags

let g:gen_tags#ctags_bin = 'exctags'
let g:gen_tags#ctags_auto_gen = 0
let g:gen_tags#gtags_auto_gen = 0

" /gen_tags

" /php-doc-modded

inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i 
nnoremap <C-P> :call PhpDocSingle()<CR> 
vnoremap <C-P> :call PhpDocRange()<CR> 

" /php-doc-modded


" vim-test

nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

" /vim-test

" netrw

let g:netrw_winsize = 13
let g:netrw_banner = 0

" /netrw
