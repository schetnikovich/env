" This is a NERDTree plugin and should be placed to this folder:
" ~/.vim/plugged/nerdtree/nerdtree_plugins
"
" If you are not using "vim-plug" plugin manager, change "plugged" 
" folder to a corresponding installation folder of your manager.


" Toggle NERDTree back
call NERDTreeAddKeyMap({
       \ 'key': '<C-n>',
       \ 'scope': 'all',
       \ 'callback': 'NERDTreeToggle',
       \ 'quickhelpText': 'Toggle NERDTree back' })


function! NERDTreeToggle()
    exec ':NERDTreeToggle'
endfunction
