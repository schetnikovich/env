#!/bin/bash -e
BIN_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"       # Get directory of this file
DIR=$(dirname $BIN_DIR)                                           # Get base directory of directory
ENV_DIR=$(dirname $DIR)                                           # Get root env dir 

# If "vim-plag" wasn't installed, install it and plugins
if [ ! -f "$HOME/.vim/autoload/plug.vim" ]; then
    # Download "vim-plug" if it is not installed already
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

    # Download and install plugins
    # This command launches 
    vim -u $DIR/plugins.vim -c "autocmd VimEnter * PlugInstall | exec ':qa'"
fi

# Step 2. Configure VIM and plugins
source $ENV_DIR/bin/include.sh

mkdir -p ~/.vim
link $DIR/config.vim   ~/.vimrc

# Place link on "plugin.vim" to special NERDTree folder
link $DIR/nerdtree/plugin.vim     ~/.vim/plugged/nerdtree/nerdtree_plugin/plugin.vim

