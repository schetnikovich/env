" Use Vim settings, rather than Vi settings
" This must be first, because it changes other options as a side effect.
set nocompatible

" Allow backspacing over everything in insert mode.
set backspace=indent,eol,start

" Keep 200 lines of command line history
set history=200           

" Show the cursor position in status line
set ruler                 

" Show line numbers
set number

" Show (partial) command in the last line of the screen. 
" It will also show number of selected characters or lines
set showcmd               

" Display command completion matches in a status line
set wildmenu

" The value of this option influences when the last window will have a
" status line: 0 - never, 1 - only if at least two windows, 2 - always.
set laststatus=2

" Some magic 
set ttimeout              " Time out for key codes
set ttimeoutlen=50        " Wait up to 100ms after Esc for special key

" Delete comment character when joining commented lines, yo!
if v:version > 703 || v:version == 703 && has("patch541")
  set formatoptions+=j 
endif

" Do not recognize octal numbers for Ctrl-A and Ctrl-X, most users find it
" confusing.
set nrformats-=octal

" Enable mouse support
set mouse=a

" Enable extended mouse support
set mousemodel=extend

" Tell Vim to only wrap at a character in the 'breakat' option
set linebreak


" --------------------------------------------------------------
"  In the following section we do two things:
"  1. Enable file type and indent detection 
"  2. Go to last known cursor position when reopening file
"  This configuration taken as-is from Vim's 8.0 "defaults.vim"     
" --------------------------------------------------------------

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " 1)
  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  " Revert with ":filetype off".
  filetype plugin indent on

  " Put these in an autocmd group, so that you can revert them with:
  " ":augroup vimStartup | au! | augroup END"
  augroup vimStartup
    au!

    " 2) 
    " When editing a file, always jump to the last known cursor position.
    " Don't do it when the position is invalid or when inside an event handler
    " (happens when dropping a file on gvim).
    autocmd BufReadPost *
      \ if line("'\"") >= 1 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif

  augroup END

endif " has("autocmd")



" --------------------------------------------------------------
" Add plugins                                              
" --------------------------------------------------------------
source ~/main/env/vim/plugins.vim                          



" --------------------------------------------------------------
"  Additional configuration (to be cleanuped)
" --------------------------------------------------------------

" Show existing tab with 4 spaces width
set tabstop=4

" When indenting with '>', use 4 spaces width
set shiftwidth=4

set softtabstop=4
set expandtab

set ignorecase
set smartcase
set incsearch

set autoindent
set smartindent

" Configure NERDTree
source ~/main/env/vim/nerdtree/nerdtree.vim

" Color scheme
set t_Co=256 " enable 256 colors
colorscheme Tomorrow-Night-Eighties

" highlight all search matches
" set hlsearch

" disable default folding for markdown
let g:vi30m_markdown_folding_disabled=1



" Tagbar ---------------------------------------------------------
nmap <F8> :TagbarToggle<CR>

" file syntaxes
" associate *.foo with php filetype
au BufRead,BufNewFile vifmrc setfiletype vim
au BufRead,BufNewFile *.vifm setfiletype vim

let g:neocomplete#enable_at_startup = 1


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


" Internal man plugin (use :Man command)
:runtime! ftplugin/man.vim
