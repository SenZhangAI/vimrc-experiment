#!/bin/bash

# Some of this scripts come from:
# Github Repository: https://github.com/kaochenlong/eddie-vim2\

# set vim dir
vim_dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

vim_rc=~/.vimrc
gvim_rc=~/.gvimrc
backup_rand=$RANDOM



# check files exist and backup
## check if vimrc is already exist
if [ -L $vim_rc ] || [ -f $vim_rc ]
then
  echo "There's a .vimrc in your home directory."
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
  echo "There's a .gvimrc in your home directory."
  read -p "Would you like to backup your .gvimrc first? [y/n] " ans
  if [ "$ans" == "y" ]
  then
    echo "backup your original $gvim_rc to $gvim_rc-$(date +%Y%m%d)-$backup_rand-bak"
    mv $gvim_rc $gvim_rc$(date +%Y%m%d)-$backup_rand-bak
  fi
fi



# install vundle and plugin
## install vundle
if [ -d ./bundle/vundle ]; then
  rm -rf ./bundle/vundle
fi

git clone https://github.com/VundleVim/Vundle.vim ./bundle/vundle

## install plugin
vim +PluginInstall +qall



# linking to .rc
## linking to .vimrc
ln -s $vim_dir/vimrc $vim_rc 2>/dev/null

## linking to .gvimrc
ln -s $vim_dir/gvimrc $gvim_rc 2>/dev/null



# install fonts for airline
./bundle/powerline_fonts/install.sh



# check if ag is installed and choose to insall
find_ag_dir=$(which ag 2>/dev/null)

System_is() {
  test=$(uname -a 2>/dev/null | grep -i $1)
  if [ -z "$test" ]; then
    return 1
  else
    return 0
  fi
}

echo ""
echo "Check if Ag installed..."
if [ -z $find_ag_dir ]; then
  echo " * Can't find the silver searcher---Ag"
  echo " * Install Ag if you need... Checking your system..."
#ubuntu
  if System_is ubuntu; then
    read -p "  > Your system is Ubuntu, would you like to auto-install it by apt-get? [y/n] " ans
    if [ "$ans" == "y" ]
    then
      sudo apt-get install silversearcher-ag
    fi

  elif System_is cygwin; then
    read -p "  > Your system is Cygwin, would you like to auto-install it from source? [y/n] " ans
    echo    "   - [gcc] [make] MUST installed first."
    echo    "   - the related packages:[automake] [pkg-config] [libpcre-devel] [liblzma-dev] MUST installed first."
    echo "      - Ag will not by installed successly if these packages havn't installed."
    read -p "   - have you INSTALLED these packages? [y/n]"  ans
    if [ "$ans" == "y" ]
    then
      ag_src_tmp_dir=~/Ag_tmp_src
      git clone https://github.com/ggreer/the_silver_searcher.git $ag_src_tmp_dir
      cd $ag_src_tmp_dir && ./build.sh && make install
      cd $vim_dir
      rm -rf $ag_src_tmp_dir
    fi
  fi
fi



# remote setting for vim-snippets
if [ -d ./bundle/vim-snippets ]; then
  cd bundle/vim-snippets
  git remote set-url origin git@github.com:SenZhangAI/vim-snippets.git
  git remote add upstream https://github.com/honza/vim-snippets 2>/dev/null
fi



# installed successfully
echo ""
echo "Installed the Vim configuration successfully!"
echo ""
echo "Structure:"
echo ".vimrc        :  $vim_rc"
echo ".gvimrc       :  $gvim_rc"
echo "Config Folder :  $vim_dir"
echo ""
echo "Enjoy it :-)"
