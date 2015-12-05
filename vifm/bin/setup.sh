#!/bin/bash -e
BIN_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"       # Get directory of this file
DIR=$(dirname $BIN_DIR)                                           # Get base directory of directory
ENV_DIR=$(dirname $DIR)                                           # Get root env dir 

source $ENV_DIR/bin/include.sh

mkdir -p ~/.vifm
mkdir -p ~/.vifm/colors

link $DIR/colors/mine.vifm   ~/.vifm/colors/mine.vifm
link $DIR/config.vifm        ~/.vifm/vifmrc
