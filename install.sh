#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -sf $DIR/.vimrc ~
ln -sf $DIR/.vim ~

git config --global core.editor "vim"
