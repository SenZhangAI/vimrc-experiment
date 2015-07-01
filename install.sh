#!/bin/bash

# install vundle
if [ -d ./bundle/vundle ]; then
  rm -rf ./bundle/vundle
fi

git clone https://github.com/gmarik/Vundle.vim ./bundle/vundle

# install plugin
vim +PluginInstall +qall

# install vimrc
if [ -f ~/.vimrc ]; then
  echo ".vimrc is existing, linking stopped."
else
  ls -s ~/.vim/vimrc_easy ~/.vimrc
fi


./bundle/powerline_fonts/install.sh

