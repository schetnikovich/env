" Add plugins
source $HOME/main/env/vim/plug.vim

" Add line numbers
set number

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set ignorecase
set smartcase
set incsearch

" Color scheme
set t_Co=256 " enable 256 colors
colorscheme molokai

" highlight all search matches
" set hlsearch

" disable default folding for markdown
let g:vi30m_markdown_folding_disabled=1

" run NERDTree automatically
" autocmd vimenter * NERDTree

" close Vim if only NERDTree is open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" map Ctrl+N to toggle NERDTree
map <C-n> :NERDTreeFocus<CR>

nmap <F8> :TagbarToggle<CR>

" show hidden files by default in NERDTree
let g:NERDTreeShowHidden=1

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
