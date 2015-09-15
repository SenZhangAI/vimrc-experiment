#!/bin/bash

# update vim-snippets from honza to my fork repo.
if [ -d ./bundle/vim-snippets ]; then
  echo "update vim-snippets from honza/vim-snippets..."
  cd bundle/vim-snippets
  git pull upstream master
  git push origin master
  echo "finish"
fi

# update plugin by vundle
read -p "update all bundle Plugin?[y/n] " ans
if [ "$ans" == "y" ]
then
  vim +PluginUpdate +qall
fi
