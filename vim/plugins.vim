call plug#begin('~/.vim/plugged')

" Color schemas
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'captbaritone/molokai'

" Completion
Plug 'mattn/emmet-vim', { 'for': 'html' }

" Change brackets and quotes
Plug 'tpope/vim-surround'

" Commentary plugin
Plug 'tomtom/tcomment_vim'

" Fuzzy file opener
" Plug 'kien/ctrlp.vim' <-- Not maintained any more
Plug 'ctrlpvim/ctrlp.vim'

" File tree explorer
Plug 'scrooloose/nerdtree'

" Make tab handle all completions
Plug 'ervandew/supertab'

" Git from within Vim
Plug 'tpope/vim-fugitive'

" Class outline viewer for Vim
Plug 'majutsushi/tagbar'

" Required by vim-easytags
Plug 'xolox/vim-misc'

" Manage tags index in ~/.vimtags filder
" Plug 'xolox/vim-easytags'

" Syntax highlighting for LESS
Plug 'groenewege/vim-less'

" Opens pane to execute command"
Plug 'benmills/vimux'

call plug#end()
