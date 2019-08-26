syntax on
set hidden
let g:rehash256 = 1
set foldmethod=indent
set nofoldenable
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
set colorcolumn=80,120
set listchars=tab:▸\ ,eol:¬,trail:·
" set fillchars+=vert:\ 
set list
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
set exrc

set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent
set mouse=a
set spell
set spelllang=en_us,ru_ru
set signcolumn=yes
set lazyredraw
set smartcase
set ignorecase
set undofile
set inccommand=nosplit

command! Vimrc :vs $MYVIMRC
command! ReVimrc :so $MYVIMRC

" plug

call plug#begin('~/.vim/plugged')

Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'ervandew/supertab'
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
Plug 'rust-lang/rust.vim'
Plug 'equalsraf/neovim-gui-shim'
Plug 'sheerun/vim-polyglot'
Plug 'eugen0329/vim-esearch'
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
Plug 'dracula/vim', {'as': 'dracula'}
Plug 'Shougo/echodoc.vim'
Plug 'Shougo/denite.nvim'
Plug 'jsfaint/gen_tags.vim'
Plug 'Rican7/php-doc-modded'
Plug 'janko-m/vim-test'
Plug 'tpope/vim-repeat'
Plug 'heavenshell/vim-jsdoc'
Plug 'editorconfig/editorconfig-vim'
Plug 'RRethy/vim-illuminate'
Plug 'wellle/targets.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'roxma/nvim-yarp'
Plug 'neoclide/coc.nvim', {'do': './install.sh nightly'}

call plug#end()

" /plug

set background=dark
let g:onedark_termcolors=256
let g:onedark_hide_endofbuffer=1
let g:onedark_terminal_italics=1
colorscheme onedark

" airline

set laststatus=2
set noshowmode
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='bubblegum'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_tab_count = 0
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_tab_type = 0

" /airline

" lightline

set laststatus=2
set noshowmode
let g:lightline = {
    \ 'colorscheme': 'onedark',
    \ }

" /lightline

" nerdtree

let NERDTreeWinSize = 45
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" /nerdtree

" nerdtree-tabs

let g:nerdtree_tabs_open_on_console_startup = 1
let g:nerdtree_tabs_open_on_gui_startup = 1
let g:nerdtree_tabs_focus_on_files = 1
" let g:nerdtree_tabs_autofind  = 1

" /nerdtree-tabs

" nerdtree-git-plugin

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "M",
    \ "Staged"    : "S",
    \ "Untracked" : "U",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : 'I',
    \ "Unknown"   : "?"
    \ }

" /nerdtree-git-plugin

" vim-move

let g:move_key_modifier = 'C'

" /vim-move

" settings for tpl files

au BufReadPost *.tpl set ft=html
au BufReadPost *.tpl set syntax=html
" au BufRead * retab

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

let g:gen_tags#ctags_bin = 'ctags'
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

" signify

let g:signify_sign_add               = '┃'
let g:signify_sign_delete            = '┃'
let g:signify_sign_delete_first_line = '┃'
let g:signify_sign_change            = '┃'

" /signify

" emmet
let g:user_emmet_install_global = 0
autocmd FileType html,tpl,css,scss,vue EmmetInstall
" /emmet

" personal mappings

" move tabs
map <C-Up> :tabm -1<CR>
map <C-Down> :tabm +1<CR>

nmap <silent> <leader>fg :NERDTreeTabsFind<CR>:wincmd p<CR>
nmap <silent> <leader>jd :JsDoc<CR>
nmap <silent> <leader>re :%bd!<CR>:NERDTree<CR>
nmap <silent> <leader>nh :noh<CR>
vnoremap // y/<C-R>"<CR>

inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

nmap <silent> <leader>gd <Plug>(coc-definition)
nmap <silent> <leader>gy <Plug>(coc-type-definition)
nmap <silent> <leader>gi <Plug>(coc-implementation)
nmap <silent> <leader>gr <Plug>(coc-references)

nmap <leader>ac <Plug>(coc-codeaction)
nmap <leader>rn <Plug>(coc-rename)
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" /personal mappings

" illuminate

let g:Illuminate_ftblacklist = ['nerdtree']

" /illuminate


" nerdcommenter

let g:NERDCustomDelimiters = { 'typescript': { 'left': '/** ', 'right': ' */' } }

" /nerdcommenter


" user overloads
if filereadable(expand("~/.nvimrc"))

    source ~/.nvimrc

endif
