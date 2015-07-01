#!/bin/bash

# set vim dir
vim_dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# install vundle
if [ -d ./bundle/vundle ]; then
  rm -rf ./bundle/vundle
fi

git clone https://github.com/gmarik/Vundle.vim ./bundle/vundle

# install plugin
vim +PluginInstall +qall

# linking to .vimrc
if [ -f ~/.vimrc ]; then
  echo ".vimrc is existing, move to .vimrc_bak"
  mv ~/.vimrc ~/.vimrc_bak
fi

ln -s $vim_dir/vimrc_easy ~/.vimrc

# linking to .gvimrc
if [ -f ~/.gvimrc ]; then
  echo ".gvimrc is existing, move to .gvimrc_bak"
  mv ~/.gvimrc ~/.gvimrc_bak
fi

ln -s $vim_dir/gvimrc ~/.gvimrc

# install fonts for airline
./bundle/powerline_fonts/install.sh


