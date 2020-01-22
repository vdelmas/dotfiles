#!/bin/bash

FILES=".bashrc
.bash_profiles
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
  if [ -f $file ]
  then
    cp ~/$file $DOT_PATH/old_dotfiles
    rm -f ~/$file
    ln -sf $DOT_PATH/$file ~/$file
  fi
done

for dir in $DIRECTORIES;do
  if [ -f $dir ]
  then
    cp ~/$dir $DOT_PATH/old_dotfiles
    rm -rf ~/$dir
    ln -sf $DOT_PATH/$dir ~/$dir
  fi
done
