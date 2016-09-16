" Enable system clipboard
" set clipboard=unnamedplus
set incsearch

set ignorecase
set smartcase

" Enable vim-surround emulation (added in 0.45 of ideavim plugin)
set surround

" Delete symbol before cursor (mirror for C-H)
imap <C-L> <Del>

" Reload .ideavimrc
command! Reload source $HOME/.ideavimrc
