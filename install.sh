#!/bin/bash

# Some of this scripts come from:
# Github Repository: https://github.com/kaochenlong/eddie-vim2\

# set vim dir
vim_dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# check if git is installed
hash git >/dev/null && /usr/bin/env git clone git://github.com/kaochenlong/eddie-vim2.git ~/.vim || {
  echo "Sorry, Git is not installed in this machine."
  echo "Should install Git first"
  exit
}

# check files exist and backup
vim_folder=~/.vim
vim_rc=~/.vimrc
gvim_rc=~/.gvimrc
backup_rand=$RANDOM

## detect if there's a .vim folder
if [ -d $vim_folder ]
then
  echo "\033[0;31mYou already have a .vim folder in your home directory.\033[0;m"
  read -p "Would you like to backup your .vim folder first? [y/n] " ans
  if [ "$ans" == "y" ]
  then
    echo "backup your original $vim_folder to $vim_folder-$(date +%Y%m%d)-$backup_rand-bak"
    mv $vim_folder $vim_folder-$(date +%Y%m%d)-$backup_rand-bak
  else
    exit
  fi
fi


echo $vim_rc

## check if vimrc is already exist
if [ -L $vim_rc ] || [ -f $vim_rc ]
then
  echo "\033[0;31mThere's a .vimrc in your home directory.\033[0;m"
  read -p "Would you like to backup your .vimrc first? [y/n] " ans
  if [ "$ans" == "y" ]
  then
    echo "backup your original $vim_rc to $vim_rc-$(date +%Y%m%d)-$backup_rand-bak"
    mv $vim_rc $vim_rc$(date +%Y%m%d)-$backup_rand-bak
  fi
fi

## check if gvimrc is already exist
if [ -L $gvim_rc ] || [ -f $gvim_rc ]
then
  echo "\033[0;31mThere's a .gvimrc in your home directory.\033[0;m"
  read -p "Would you like to backup your .gvimrc first? [y/n] " ans
  if [ "$ans" == "y" ]
  then
    echo "backup your original $gvim_rc to $gvim_rc-$(date +%Y%m%d)-$backup_rand-bak"
    mv $gvim_rc $gvim_rc$(date +%Y%m%d)-$backup_rand-bak
  fi
fi

# install vundle
if [ -d ./bundle/vundle ]; then
  rm -rf ./bundle/vundle
fi

git clone https://github.com/gmarik/Vundle.vim ./bundle/vundle

# install plugin
vim +PluginInstall +qall

# linking to .vimrc
ln -s $vim_dir/vimrc ~/.vimrc

# linking to .gvimrc
ln -s $vim_dir/gvimrc ~/.gvimrc

# install fonts for airline
./bundle/powerline_fonts/install.sh

echo "\033[0;34mNice! Seems everything is done.\033[0m"

