" NERDTree config 

" Run NERDTree automatically
" autocmd vimenter * NERDTree

" Close Vim if only NERDTree is open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Map Ctrl+N to toggle NERDTree
map <C-N> :NERDTreeFind<CR>
map <F3>  :NERDTreeFocus<CR>

" Do not show some files
let NERDTreeIgnore = ['\.swp$', '.DS_Store']

" Show hidden files by default in NERDTree
let g:NERDTreeShowHidden=1
