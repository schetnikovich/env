" Install vim-plug if we don't arlready have it
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Color schemas
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'captbaritone/molokai'

" Completion
Plug 'mattn/emmet-vim', { 'for': 'html' }

" Change brackets and quotes
Plug 'tpope/vim-surround'

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
Plug 'xolox/vim-easytags'

" Opens pane to execute command"
Plug 'benmills/vimux'

call plug#end()
