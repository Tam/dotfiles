"Plugins
call plug#begin()

Plug 'terryma/vim-multiple-cursors'
Plug 'alvan/vim-closetag'
Plug 'mattn/emmet-vim'

call plug#end()

"Global settings
filetype plugin indent on
syntax on
set mouse=a "mouse support
set tabstop=4 "default tab length
set autoindent
set cindent
set noexpandtab
set shiftwidth=4
set softtabstop=4

"set cul
set number relativenumber
set nu rnu
set timeoutlen=1000
set ttimeoutlen=0
set laststatus=2
set switchbuf=usetab,newtab
set exrc "project specific .vimrc

"Tabs
hi TabLineFill ctermfg=Black ctermbg=Black
hi TabLineSel ctermfg=Green ctermbg=Black
hi TabLine ctermfg=Grey

"80 char line
set colorcolumn=80
highlight ColorColumn ctermbg=236

"Cursor shape in different modes
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

"Left and right wrap to prev/next lines
set whichwrap+=<,>,h,l,[,]

"Hide current folder in netrw
let g:netrw_list_hide = '^\./$'
let g:netrw_hide = 1

"File type specific indenting
autocmd FileType sql setlocal shiftwidth=2 tabstop=2
autocmd FileType json setlocal shiftwidth=2 tabstop=2
autocmd FileType yml setlocal shiftwidth=2 tabstop=2

"Show line numbers and relative in netrw
let g:netrw_bufsettings = 'noma nomod nu rnu nobl nowrap ro'

"tmux cursor mode change
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

"Closetag plugin
let g:closetag_filetypes = 'js,ts,jsx,tsx,vue,html,php'
let g:closetag_xhtml_filetypes = 'js,ts,jsx,tsx,vue,html,php'

"Emmet
let g:user_emmet_leader_key = '<Tab>'
let g:user_emmet_expandabbr_key = '<Tab>'
let g:user_emmet_expandword_key = '<Tab>'


"256 colours
if !has('gui_running')
  set t_Co=256
endif

"Force :E to :Explore
command! E Explore

"Shift tab for insert mode
inoremap <S-Tab> <C-d>

"CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

set secure

"Clear highlighting on escape in normal mode
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[

"Multi-cursor mapping
let g:multi_cursor_start_word_key = '<C-g>'
let g:multi_cursor_next_key       = '<C-g>'
