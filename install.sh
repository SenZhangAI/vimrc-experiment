#!/bin/bash

# Some of this scripts come from:
# Github Repository: https://github.com/kaochenlong/eddie-vim2\

# set vim dir
vim_dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

vim_rc=~/.vimrc
gvim_rc=~/.gvimrc
nvim_rc=~/.nvimrc
backup_rand=$RANDOM

backup_file() {
  if [ -L $1 ] || [ -f $1 ]; then
    echo "There's a original file:[$1]exist."
    read -p "Would you like to backup it first? [y/n] " ans

    if [ "$ans" == "y" ]; then
      echo "backup your original $1 to $1-$(date +%Y%m%d)-$backup_rand-bak"
      mv $1 $1$(date +%Y%m%d)-$backup_rand-bak
      return 1;
    fi
  fi
  return 0;
}

backup_file $vim_rc
backup_file $gvim_rc
backup_file $nvim_rc

# linking to .rc
## linking to .vimrc
ln -s $vim_dir/vimrc $vim_rc 2>/dev/null

## linking to .gvimrc
ln -s $vim_dir/vimrc $nvim_rc 2>/dev/null

## linking to .gvimrc
ln -s $vim_dir/gvimrc $gvim_rc 2>/dev/null

## install plugin
vim +PlugInstall +qall

has_not_installed() {
  echo "Check if [$1] installed..."
  found=$(which $1 2>/dev/null)
  if [ -z "$found" ]; then
    echo "                           ------- No"
    return 0
  else
    echo "                           ------- Yes"
    return 1
  fi
}

auto_install() {
  echo "install... [$1]"
  if [ $# -gt 1 ]; then
    echo  "  > intall-method: " "$2"
  fi
  read -p "  > would you like to auto-install [$1]? [y/n] " ans
  if [ "$ans" == "y" ]; then

    if [ $# -gt 1 ]; then
      #sudo apt-get install silversearcher-ag
      eval "$2"
      return 1
    else
      return 0
    fi

  else
    return 0
  fi
}

# functiom for install vimproc
install_vimproc() {
  echo "install... [vimproc]"
  if [ ! -d ./bundle/vimproc.vim ]; then
    echo "install_vimproc error: no vimproc.vim dir found"
    exit 1
  fi

  cd bundle/vimproc.vim
  #exapmle: make -f make_cygwin.mak
  eval "$1"
  cd $vim_dir
  return 0
}

system_is() {
  test=$(uname -a 2>/dev/null | grep -i $1)
  if [ -z "$test" ]; then
    return 1
  else
    return 0
  fi
}

if system_is ubuntu; then

  echo "system detected: [ubuntu]"

  if has_not_installed ag; then
    echo "Plugin [ag.vim] depend on it"
    auto_install ag "sudo apt-get install silversearcher-ag"
  fi

  if has_not_installed clang; then
    echo "Plugin [marching] depend on it"
    auto_install clang "sudo apt-get install llvm build-essential && sudo apt-get update && sudo apt-get install clang-3.8"
  fi

  if has_not_installed astyle; then
    echo "Plugin [autoformat] depend on it"
    auto_install astyle "sudo apt-get install astyle"
  fi

  if has_not_installed lua; then
    echo "You should manual install package: [lua]"
    auto_install lua "sudo apt-get install lua5.3"
  fi

  if has_not_installed ctags; then
    echo "You should manual install package: [ctags]"
    auto_install ctags "sudo apt-get install ctags"
  fi

  #install vimproc
  install_vimproc "sudo make"

elif system_is cygwin; then

  echo "system detected: [cygwin]"

  if has_not_installed ag; then
    echo "Plugin [ag.vim] depend on it"

    if auto_install ag; then

      echo    "   - [gcc] [make] MUST installed first."
      echo    "   - the related packages:[automake] [pkg-config] [libpcre-devel] [liblzma-dev] [zlib-devel] MUST installed first."
      echo "      - Ag will not by installed successly if these packages havn't installed."
      read -p "   - have you INSTALLED these packages? [y/n]"  ans
      if [ "$ans" == "y" ]; then
        ag_src_tmp_dir=~/Ag_tmp_src
        git clone https://github.com/ggreer/the_silver_searcher.git $ag_src_tmp_dir
        cd $ag_src_tmp_dir && ./build.sh && make install
        cd $vim_dir
        rm -rf $ag_src_tmp_dir
      fi

    fi
  fi

  if has_not_installed clang; then
    echo "You should manual install package: [clang] [libclang] [libclang-devel]"
    echo "Plugin [marching] depend on it"
  fi

  if has_not_installed astyle; then
    echo "You should manual install package: [astyle]"
    echo "Plugin [autoformat] depend on it"
  fi

  if has_not_installed lua; then
    echo "You should manual install package: [lua]"
    echo "Plugin [NeoComplete] depend on it"
  fi

  if has_not_installed ctags; then
    echo "You should manual install package: [ctags]"
    echo "Plugin [gutentags] depend on it"
  fi

  #install vimproc
  install_vimproc "make -f make_cygwin.mak"
fi

if system_is cygwin; then
  dash_dir=$(cygpath -w /bin)
  echo '@echo off

'$dash_dir'\dash.exe  -c '\''/usr/bin/rebase -s '$vim_dir'/bundle/vimproc.vim/lib/*.dll'\''

echo=
echo ////////////////////////////////////////////////////
echo if ERROR happened:
echo     1. the path of cygwin/bin/ or the dll file may wrong
echo     2. Cygwin is still run now.
echo     3. the bat file or not run as administrator.
echo you may need to check it and install yourself :(
echo=
echo you can delete this file now.
echo ////////////////////////////////////////////////////

pause
' > ./cygwin_rebase_vimproc.bat
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
