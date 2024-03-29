"Michael Crosby crosbymichael.com
syntax on
set number
colorscheme slate
set tabstop=4
set shiftwidth=4
set nocompatible


"additoins
set title
set wildmenu
set completeopt=menuone,preview
set ruler
set cursorline

set hlsearch
set incsearch
set showmatch

"for indentions
set smartindent
set autoindent
set expandtab

"Code folding fold with za
set foldmethod=indent
set nofoldenable

"For autocomplete
autocmd BufEnter * :syntax sync fromstart

"Pugins
filetype on
filetype plugin on

" Python
" ----------------------------------
au FileType python set omnifunc=pythoncomplete#Complete
au FileType python setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4 smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with
au BufRead *.py set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m

" Objective C 
au BufNewFile, BufRead *.m, *.h set ft=objc

" Set Arduino dictionary word list
au FileType arduino set dictionary=~/.vim/dicts/arduinowords

"key mappings
"----------------------------
"Pane movement
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"Resize panes with the mouse and select text
set mouse=a

"Move lines up and down
nnoremap m2<cr> :m+2
nnoremap m1<cr> :m+
nnoremap m-2<cr> :m-2

"NerdTree Toggle
nnoremap <F3> :NERDTreeToggle<CR>

"Ctags toggle
nmap <F4> :TagbarToggle<CR>
let g:tagbar_ctags_bin = '/usr/local/bin/ctags'

"update help doc
nnoremap <F7> :helptags ~/.vim/doc<CR>

"OmniComplete 
inoremap <Nul> <C-x><C-o>


"lua set
let g:Lua_AuthorName      = 'your name'     
let g:Lua_AuthorRef       = 'yourname'                         
let g:Lua_Email           = 'yourmail@yourmail.com'            
let g:Lua_Company         = 'your company'    

"Use emacs style key binding on i mode
imap <C-F> <RIGHT>
imap <C-B> <LEFT>
imap <C-E> <END>
imap <C-A> <HOME>
imap <C-D> <DELETE>

"a.vim key binding
noremap \a  :A<CR>
inoremap \a <C-C>:A<CR>

"rsense
let g:resenseHome = '~/.vim/resense'

