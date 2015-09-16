#!/bin/bash

# update vim-snippets from honza to my fork repo.
update_vim_snippets() {
  if [ -d ./bundle/vim-snippets ]; then
    echo "update vim-snippets from honza/vim-snippets..."
    cd bundle/vim-snippets
    git pull upstream master
    git push origin master
    echo "finish"
  fi
}


# update plugin by vundle
update_vundle_plugin() {
  read -p "update all vundle Plugin?[y/n] " ans
  if [ "$ans" == "y" ]
  then
    echo ""
    vim +PluginUpdate +qall
  fi
}

# update all
update_all() {
  update_vim_snippets
  update_vundle_plugin
}

# select
echo ""
echo "Choose what you want to do:"
echo "1. update ALL plugin."
echo "2. update plugin from vundle."
echo "3. update vim-snippets from honza/vim-snippets"
echo ""
read -p "What's your choice?[1/2/3..] " ans

case $ans in
  1)
    echo "update ALL plugin..."
    update_all
    ;;
  2)
    echo "update plugin from vundle..."
    update_vundle_plugin
    ;;
  3)
    echo "update vim-snippets from honza/vim-snippets..."
    update_vim_snippets
    ;;
  *)
    ;;
esac
