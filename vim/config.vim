" Add plugins
source ~/.vim/plug.vim

" Add line numbers
set number

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set ignorecase
set smartcase
set incsearch

set autoindent
set smartindent
filetype plugin on


" Color scheme
set t_Co=256 " enable 256 colors
colorscheme molokai

" highlight all search matches
" set hlsearch

" disable default folding for markdown
let g:vi30m_markdown_folding_disabled=1

" NERDTree -------------------------------------------------------

" run NERDTree automatically
" autocmd vimenter * NERDTree

" close Vim if only NERDTree is open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" map Ctrl+N to toggle NERDTree
map <F2> :NERDTreeFocus<CR>
map <F3> :NERDTreeFind<CR>
let NERDTreeIgnore = ['\.swp$']
" show hidden files by default in NERDTree
let g:NERDTreeShowHidden=1

" Tagbar ---------------------------------------------------------
nmap <F8> :TagbarToggle<CR>

" file syntaxes
" associate *.foo with php filetype
au BufRead,BufNewFile vifmrc setfiletype vim
au BufRead,BufNewFile *.vifm setfiletype vim

let g:neocomplete#enable_at_startup = 1

" Enable mouse support
set mouse=a

" Enable extended mouse support
set mousemodel=extend

" Enable system clipboard
" set clipboard=unnamedplus

" Set syntax higlighting
autocmd BufNewFile,BufRead *.marko   set syntax=html
" :map <F2> :echo 'Current time is ' . strftime('%c')<CR>

" Delete symbol before cursor (mirror for C-H)
imap <C-L> <Del>

" Reload vimrc
command! Reload source $HOME/.vimrc

:noremap j gj
:noremap k gk
:noremap ^ g^
:noremap $ g$

" Tell Vim to only wrap at a character in the 'breakat' option
:set linebreak
