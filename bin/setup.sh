#!/bin/bash -e
BIN_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"       # Get directory of this file
ENV_DIR=$(dirname $BIN_DIR)                                       # Get root env dir 

echo "------------------------------------------"
echo "|   Configuring your environment... :)   |"
echo "------------------------------------------"

# Setup every subfolder
$ENV_DIR/vim/bin/setup.sh
$ENV_DIR/vifm/bin/setup.sh
$ENV_DIR/tmux/bin/setup.sh
$ENV_DIR/ideavim/bin/setup.sh
$ENV_DIR/bash/bin/setup.sh
$ENV_DIR/git/bin/setup.sh
$ENV_DIR/tig/bin/setup.sh
