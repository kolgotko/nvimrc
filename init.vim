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
set signcolumn=yes
set lazyredraw
set smartcase
set ignorecase
set undofile
set inccommand=nosplit
set pumblend=15
hi PmenuSel blend=0
autocmd FocusGained * checktime

command! Vimrc :vs $MYVIMRC
command! ReVimrc :so $MYVIMRC
command! Bd :up | %bd! | e#

" plug

call plug#begin('~/.vim/plugged')

Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'ervandew/supertab'
Plug 'scrooloose/nerdcommenter'
Plug 'terryma/vim-multiple-cursors'
Plug 'matze/vim-move'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'equalsraf/neovim-gui-shim'
Plug 'sheerun/vim-polyglot'
Plug 'eugen0329/vim-esearch'
Plug 'easymotion/vim-easymotion'
Plug 'gregsexton/matchtag'
Plug 'dyng/ctrlsf.vim'
Plug 'mhinz/vim-signify'
Plug 'Yggdroot/indentLine'
Plug 'godlygeek/tabular'
Plug 'joshdick/onedark.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'Shougo/denite.nvim'
Plug 'tpope/vim-repeat'
Plug 'editorconfig/editorconfig-vim'
Plug 'RRethy/vim-illuminate'
Plug 'wellle/targets.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
" Plug 'kaicataldo/material.vim'
Plug 'mhinz/vim-startify'
Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } }

Plug 'kevinhwang91/rnvimr'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'wfxr/minimap.vim', {'do': ':!cargo install --locked code-minimap'}
Plug 'Xuyuanp/scrollbar.nvim'
Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'
Plug 'psliwka/vim-smoothie'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'sainnhe/edge'
Plug 'kyazdani42/nvim-web-devicons'

call plug#end()

" /plug
"
" if (has('termguicolors'))
"   set termguicolors
" endif
" set background=dark
" let g:onedark_termcolors=256
" let g:onedark_hide_endofbuffer=1
" let g:onedark_terminal_italics=1
"
" let g:material_theme_style = 'palenight'
" let g:material_terminal_italics = 1
"
" let g:edge_style = 'aura'
" let g:edge_enable_italic = 1
" let g:edge_disable_italic_comment = 1
"
" " colorscheme challenger_deep
" colorscheme onedark
" " colorscheme material
" " colorscheme dracula
" " colorscheme edge
"
" " material
"
" " airline
"
" set laststatus=2
" set noshowmode
" let g:airline_left_sep = ''
" let g:airline_right_sep = ''
" let g:airline#extensions#tabline#enabled = 1
" let g:airline_theme='bubblegum'
" let g:airline#extensions#tabline#formatter = 'unique_tail'
" let g:airline#extensions#tabline#show_splits = 0
" let g:airline#extensions#tabline#show_buffers = 0
" let g:airline#extensions#tabline#show_tab_count = 0
" let g:airline#extensions#tabline#tab_nr_type = 1
" let g:airline#extensions#tabline#show_tab_nr = 0
" let g:airline#extensions#tabline#show_tab_type = 0
"
" " /airline
"
" " lightline
"
" set laststatus=2
" set noshowmode
" let g:lightline = {
"     \ 'colorscheme': 'onedark',
"     \ }
"
" " /lightline
"
" " Startify
"
" let g:startify_session_autoload = 1
" let g:startify_session_persistence = 1
"
" autocmd VimEnter *
"     \   if !argc()
"     \ |   Startify
"     \ |   wincmd w
"     \ | endif
"
" " /Startify
"
" " nerdtree-git-plugin
"
" let g:NERDTreeIndicatorMapCustom = {
"     \ "Modified"  : "M",
"     \ "Staged"    : "S",
"     \ "Untracked" : "U",
"     \ "Renamed"   : "➜",
"     \ "Unmerged"  : "═",
"     \ "Deleted"   : "✖",
"     \ "Dirty"     : "✗",
"     \ "Clean"     : "✔︎",
"     \ 'Ignored'   : 'I',
"     \ "Unknown"   : "?"
"     \ }
"
" " /nerdtree-git-plugin
"
" " vim-move
"
" let g:move_key_modifier = 'C'
"
" " /vim-move
"
" " settings for tpl files
"
" au BufReadPost *.tpl set ft=html
" au BufReadPost *.tpl set syntax=html
"
" " /settings for tpl files
"
" " indentLine
"
" let g:indentLine_char = '·'
" let g:indentLine_color_term = 239
" let g:indentLine_color_gui = "#525965"
" let g:indentLine_color_tty_light = 7 " (default: 4)
" let g:indentLine_color_dark = 1 " (default: 2)
"
" " /indentLine
"
" " gen_tags
"
" let g:gen_tags#ctags_bin = 'ctags'
" let g:gen_tags#ctags_auto_gen = 0
" let g:gen_tags#gtags_auto_gen = 0
"
" " /gen_tags
"
" " vim-test
"
" nmap <silent> <leader>t :TestNearest<CR>
" nmap <silent> <leader>T :TestFile<CR>
" nmap <silent> <leader>a :TestSuite<CR>
" nmap <silent> <leader>l :TestLast<CR>
" nmap <silent> <leader>g :TestVisit<CR>
"
" " /vim-test
"
" " netrw
"
" let g:netrw_winsize = 13
" let g:netrw_banner = 0
"
" " /netrw
"
" " signify
"
" let g:signify_sign_add               = '┃'
" let g:signify_sign_delete            = '┃'
" let g:signify_sign_delete_first_line = '┃'
" let g:signify_sign_change            = '┃'
"
" " /signify
"
" " emmet
" let g:user_emmet_install_global = 0
" autocmd FileType html,tpl,css,scss,vue,ts,js EmmetInstall
" " /emmet
"
" " personal mappings
"
" " move tabs
" map <C-Up> :tabm -1<CR>
" map <C-Down> :tabm +1<CR>
"
" nmap <silent> <leader>re :%bd!<CR>:Startify<CR>
" nmap <silent> <leader>nh :noh<CR>
" vnoremap // y/<C-R>"<CR>
"
" inoremap <silent><expr> <c-space> coc#refresh()
" inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"
" nmap <silent> <leader>gt <Plug>(coc-terminal-toggle)
" nmap <silent> <leader>gd <Plug>(coc-definition)
" nmap <silent> <leader>gy <Plug>(coc-type-definition)
" nmap <silent> <leader>gi <Plug>(coc-implementation)
" nmap <silent> <leader>gr <Plug>(coc-references)
"
" nmap <leader>gn <Plug>(coc-diagnostic-next)
" nmap <leader>ac <Plug>(coc-codeaction)
" nmap <leader>rn <Plug>(coc-rename)
" nmap <leader>rf <Plug>(coc-refactor)
" xmap <leader>f  <Plug>(coc-format-selected)
" nmap <leader>f  <Plug>(coc-format-selected)
"
" " /personal mappings
"
" " coc
"
" nmap <silent> <C-c> <Plug>(coc-cursors-position)
"
" nmap <expr> <silent> <C-d> <SID>select_current_word()
" function! s:select_current_word()
"   if !get(g:, 'coc_cursors_activated', 0)
"     return "\<Plug>(coc-cursors-word)"
"   endif
"   return "*\<Plug>(coc-cursors-word):nohlsearch\<CR>"
" endfunc
"
" " /coc
"
" " nerdcommenter
"
" let g:NERDCustomDelimiters = { 'typescript': { 'left': '/** ', 'right': ' */' } }
"
" " /nerdcommenter
"
" " easymotion
"
" map  <Leader>f <Plug>(easymotion-bd-f)
" nmap <Leader>f <Plug>(easymotion-overwin-f)
"
" autocmd User EasyMotionPromptBegin silent! CocDisable
" autocmd User EasyMotionPromptEnd   silent! CocEnable
"
" " /easymotion
"
" " ranger
"
" let g:rnvimr_enable_picker = 1
" let g:rnvimr_draw_border = 0
" let g:rnvimr_enable_bw = 1
" let g:rnvimr_ranger_cmd = 'ranger --cmd="set column_ratios 1,1"'
"             " \ --cmd="set draw_borders both"'
"
" " highlight link RnvimrNormal CursorLine
"
" nnoremap <silent> <M-o> :RnvimrToggle<CR>
" tnoremap <silent> <M-o> <C-\><C-n>:RnvimrToggle<CR>
"
" " Map Rnvimr action
" let g:rnvimr_action = {
"             \ '<C-t>': 'NvimEdit tabedit',
"             \ '<C-x>': 'NvimEdit split',
"             \ '<C-v>': 'NvimEdit vsplit',
"             \ 'gw': 'JumpNvimCwd',
"             \ 'yw': 'EmitRangerCwd'
"             \ }
"
"
" " fzf
" let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }
"
" " scrollbar
"
" " augroup ScrollbarInit
" "   autocmd!
" "   autocmd CursorMoved,VimResized,QuitPre * silent! lua require('scrollbar').show()
" "   autocmd WinEnter,FocusGained           * silent! lua require('scrollbar').show()
" "   autocmd WinLeave,FocusLost,VimResized,QuitPre             * silent! lua require('scrollbar').clear()
" " augroup end
"
" " let g:scrollbar_shape = {
" "     \ 'head': '┃',
" "     \ 'body': '┃',
" "     \ 'tail': '┃',
" "     \ }
"
" " let g:scrollbar_highlight = {
" "     \ 'head': 'Folded',
" "     \ 'body': 'Folded',
" "     \ 'tail': 'Folded',
" "     \ }
"
" " let g:scrollbar_excluded_filetypes = ['startify']
"
" function! NgModuleCreate()
"     let savedPwd = getcwd()
"     call inputsave()
"     let name = input('module name: ')
"     call inputrestore()
"
"     execute 'lcd %:p:h'
"     execute '!ng generate module ' . name
"     execute 'cd ' . savedPwd
" endfunction
"
" function! NgComponentCreate()
"     let savedPwd = getcwd()
"     call inputsave()
"     let name = input('component name: ')
"     call inputrestore()
"
"     execute 'lcd %:p:h'
"     execute '!ng generate component ' . name
"     execute 'cd ' . savedPwd
" endfunction
"
" let g:asyncrun_open = 6
"
" " minimap
" " let g:minimap_auto_start = 1
"
" " user overloads
"
" lua <<EOF
" require'nvim-treesitter.configs'.setup {
"   ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
"   -- highlight = { enable = true },
"   incremental_selection = { enable = true },
"   textobjects = { enable = true },
"   -- indent = { enable = true },
" }
" EOF
