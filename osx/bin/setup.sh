#!/bin/bash -e
BIN_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"       # Get directory of this file
DIR=$(dirname $BIN_DIR)                                           # Get base directory of directory
ENV_DIR=$(dirname $DIR)                                           # Get root env dir 

source $ENV_DIR/bin/include.sh

link $DIR/Library/KeyBindings/DefaultKeyBinding.dict  ~/Library/KeyBindings/DefaultKeyBinding.dict

