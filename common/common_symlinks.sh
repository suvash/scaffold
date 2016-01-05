#!/usr/bin/env bash

if [ ! -L $HOME/.gitconfig ]; then
  rm $HOME/.gitconfig 2> /dev/null
  ln -s $HOME/Developer/scaffold/common/dotfiles/gitconfig $HOME/.gitconfig
fi

if [ ! -L $HOME/.gitignore ]; then
  rm $HOME/.gitignore 2> /dev/null
  ln -s $HOME/Developer/scaffold/common/dotfiles/gitignore $HOME/.gitignore
fi

if [ ! -L $HOME/.config/fish ]; then
  rm -rf $HOME/.config/fish/ 2> /dev/null
  mkdir -p $HOME/.config/
  ln -s $HOME/Developer/scaffold/common/fish $HOME/.config/fish
fi

if [ ! -L $HOME/.tmux.conf ]; then
  rm $HOME/tmux.conf 2> /dev/null
  ln -s $HOME/Developer/scaffold/common/dotfiles/tmux.conf $HOME/.tmux.conf
fi

if [ ! -L $HOME/.emacs.d ]; then
  rm -rf $HOME/.emacs.d/ 2> /dev/null
  ln -s $HOME/Developer/scaffold/common/emacs.d $HOME/.emacs.d
fi

if [ ! -L $HOME/.vim ]; then
  rm -rf $HOME/.vim 2> /dev/null
  ln -s $HOME/Developer/scaffold/common/vim $HOME/.vim
fi

if [ ! -L $HOME/.weechat ]; then
  rm -rf $HOME/.weechat/ 2> /dev/null
  ln -s $HOME/Developer/scaffold/common/weechat $HOME/.weechat
fi

if [ ! -L $HOME/.ghci ]; then
  rm -rf $HOME/.ghci 2> /dev/null
  ln -s $HOME/Developer/scaffold/common/dotfiles/ghci $HOME/.ghci
fi

if [ ! -L $HOME/.gemrc ]; then
  rm -rf $HOME/.gemrc 2> /dev/null
  ln -s $HOME/Developer/scaffold/common/dotfiles/gemrc $HOME/.gemrc
fi

if [ ! -L $HOME/.vimperatorrc ]; then
  rm -rf $HOME/.vimperatorrc 2> /dev/null
  ln -s $HOME/Developer/scaffold/common/dotfiles/vimperatorrc $HOME/.vimperatorrc
fi

if [ ! -L $HOME/.lein ]; then
  rm -rf $HOME/.lein/ 2> /dev/null
  ln -s $HOME/Developer/scaffold/common/lein $HOME/.lein
fi

if [ ! -L $HOME/.wallpapers ]; then
  rm -rf $HOME/.wallpapers 2> /dev/null
  ln -s $HOME/Developer/scaffold/common/wallpapers $HOME/.wallpapers
fi

if [ ! -L $HOME/.gnupg/gpg.conf ]; then
  mkdir -p $HOME/.gnupg
  mv $HOME/.gnupg/gpg.conf $HOME/.gnupg/gpg.conf.orig
  ln -s $HOME/Developer/scaffold/common/dotfiles/gpg.conf $HOME/.gnupg/gpg.conf
fi
