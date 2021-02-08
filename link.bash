#!/bin/bash

FILES=".bashrc
.bash_profile
.bash_aliases
.vimrc
.tmux.conf"

DIRECTORIES=".vim
.tmux"

DOT_PATH=`pwd`
if [ ! -d "$DOT_PATH/old_dotfiles" ]
then
  mkdir $DOT_PATH/old_dotfiles
fi

for file in $FILES;do
  if [ -f ~/$file ]
  then
    echo "$file already existed, was saved in ~/dotfiles/old_dotfiles"
    cp ~/$file $DOT_PATH/old_dotfiles
    rm -f ~/$file
  fi
  ln -sf $DOT_PATH/$file ~/$file
done

for dir in $DIRECTORIES;do
  if [ -d ~/$dir ]
  then
    echo "$dir already existed, was saved in ~/dotfiles/old_dotfiles"
    cp -r ~/$dir $DOT_PATH/old_dotfiles
    rm -rf ~/$dir
  fi
  ln -sf $DOT_PATH/$dir ~/$dir
done
