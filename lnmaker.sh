#!/bin/bash

if [ "$#" -ne 1 ]; then
  echo "usage: ./lnmaker.sh DOTFILES_DIR"
  exit
fi

dir=$(readlink -f $1)

# .tmux.conf
mv ~/.tmux.conf ~/.tmux.conf.bak
ln -s ${dir}/.tmux.conf ~/.tmux.conf

# .atom
mv ~/.atom ~/.atom.bak
ln -s ${dir}/.atom ~/.atom

# .bin
mv ~/bin ~/.bin.bak
ln -s ${dir}/bin ~/bin

# awesome
mv ~/.config/awesome ~/.config/awesome.bak
ln -s ${dir}/.config/awesome ~/.config/awesome

# .profile
mv ~/.profile ~/.profile.bak
ln -s ${dir}/.profile ~/.profile

# .config/autostart
mv ~/.config/autostart ~/.config/autostart.bak
ln -s ${dir}/.config/autostart ~/.config/autostart

# .gconf/apps/guake
mv ~/.gconf/apps/guake ~/.gconf/apps/guake.bak
ln -s ${dir}/.gconf/apps/guake ~/.gconf/apps/guake

# .gitconfig
mv ~/.gitconfig ~/.gitconfig
ln -s ${dir}/.gitconfig ~/.gitconfig
