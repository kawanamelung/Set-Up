"*********************************************************************
" This section is used to set the tab distance from 8 to 4
" Doesn't change the tabstop distance, not quite sure why 
"       that is important or not.
set softtabstop=4
set shiftwidth=4
set expandtab

"*********************************************************************
" Setup .py files
autocmd FileType python set tabstop=4 | set softtabstop=4 | set shiftwidth=4 | set expandtab | set autoindent | set smartindent | set fileformat=unix | set encoding=utf-8 | set number 
autocmd FileType python let g:netrw_banner = 0 | let g:netrw_liststyle = 3 | let g:netrw_browse_split = 4 | let g:netrw_altv = 1 | let g:netrw_winsize = 25 | nnoremap <space><space> :Lexplore<CR>
"*********************************************************************
" indent stays the same as the line your on.
set autoindent

"*********************************************************************
" Set syntax highlighting on. 
" Todo: Colors need to be changed!
syntax on

"*********************************************************************
" * General:
" Set F1 to past and F2 to copy
nmap <F2> :set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
imap <F2> <Esc>:set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
nmap <F1> :.w !pbcopy<CR><CR>
vmap <F1> :w !pbcopy<CR><CR>

" Shows line numbers
" set number

" Hidden, allows movement from unsaved buffers
set hidden

" Sets an underline on current cursor line
" set cursorline

" Turns on an auto complete menu
set wildmenu

" Turns on paranthesis matching
set showmatch

" Set's the distance from scrolling off the screen
set scrolloff=3

" Searching Stuff
set incsearch " Searches as chatacters are entered
" set hlsearch " Sets highlighting for search
nnoremap <leader><space> :nolsearch<CR> " Command to remove search highlights

" Folds n' shit
set foldenable " Enable folds
set foldlevelstart=10 " Shows most folds if they're not too long
set foldnestmax=10 " If you have more than 10 nested folds... I feel bad for you
" nnoremap <SOME KEY> za " Sets a key to open folds
set foldmethod=indent " Fold based on indent level. This can have many values

" highlight last inserted text
nnoremap gV `[v`]

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Set up statusline to display buffers
"set showtabline
"set tabline=%!tabpagebuflist()

"*********************************************************************
" *** Movement ***

" Move based on visual lines
nnoremap j gj
nnoremap k gk

" Hold control to jump 5 lines at a time, can be changed to <leader>
nnoremap <C-j> 5j
nnoremap <C-k> 5k

" quick escape from insert
inoremap jj <ESC>

" Tab and shift tab through buffers
nnoremap <Tab> :bn<CR>
nnoremap <S-Tab> :bprev<CR>

"*** Backups ***
"set backup
"set backupdir=~/.vim-tmp
"set directory=~/.vim-tmp
"set writebackup

