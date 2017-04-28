#!/usr/bin/env bash

if [ ! -L $HOME/.xinitrc ]; then
  rm -rf $HOME/.xinitrc 2> /dev/null
  ln -s $HOME/Developer/scaffold/yantra/dotfiles/xinitrc $HOME/.xinitrc
fi

if [ ! -L $HOME/.Xresources ]; then
  rm -rf $HOME/.Xresources 2> /dev/null
  ln -s $HOME/Developer/scaffold/yantra/dotfiles/Xresources $HOME/.Xresources
fi

if [ ! -L $HOME/.env ]; then
  rm -rf $HOME/.env 2> /dev/null
  ln -s $HOME/Developer/scaffold/yantra/dotfiles/env $HOME/.env
fi

if [ ! -L $HOME/.packages.apt ]; then
  rm -rf $HOME/.packages.apt 2> /dev/null
  ln -s $HOME/Developer/scaffold/yantra/packages.apt $HOME/.packages.apt
fi

if [ ! -L /etc/modules-load.d/mbpfan.conf ]; then
  sudo ln -s $HOME/Developer/scaffold/yantra/dotfiles/mbpfan-modules /etc/modules-load.d/mbpfan.conf
fi

if [ ! -L /etc/modules-load.d/facetimehd.conf ]; then
  sudo ln -s $HOME/Developer/scaffold/yantra/dotfiles/facetimehd-modules /etc/modules-load.d/facetimehd.conf
fi

if [ ! -L /etc/lightdm/lightdm.conf ]; then
  sudo rm -rf /etc/lightdm/lightdm.conf 2> /dev/null
  sudo ln -s $HOME/Developer/scaffold/yantra/lightdm/lightdm.conf /etc/lightdm/lightdm.conf
fi

if [ ! -L /usr/share/xsessions/xmonad.desktop ]; then
  sudo mv /usr/share/xsessions/xmonad.desktop /usr/share/xsessions/xmonad.desktop.orig 2> /dev/null
  sudo ln -s $HOME/Developer/scaffold/yantra/assets/xmonad.desktop /usr/share/xsessions/xmonad.desktop
fi

if [ ! -L /usr/share/unity-greeter/xmonad_badge.png ]; then
  sudo rm -rf /usr/share/unity-greeter/xmonad_badge.png 2> /dev/null
  sudo ln -s $HOME/Developer/scaffold/yantra/assets/xmonad_badge.png /usr/share/unity-greeter/xmonad_badge.png
fi

if [ ! -L /usr/local/bin/start-xmonad-session ]; then
  sudo rm -rf /usr/local/bin/start-xmonad-session 2> /dev/null
  sudo ln -s $HOME/Developer/scaffold/yantra/scripts/start-xmonad-session /usr/local/bin/start-xmonad-session
fi

if [ ! -L /usr/local/bin/set-greeter-resolution ]; then
  sudo rm -rf /usr/local/bin/set-greeter-resolution 2> /dev/null
  sudo ln -s $HOME/Developer/scaffold/yantra/scripts/set-greeter-resolution /usr/local/bin/set-greeter-resolution
fi

if [ ! -L $HOME/.local/bin/start-tor-browser ]; then
  rm -rf $HOME/.local/bin/start-tor-browser 2> /dev/null
  ln -s $HOME/Developer/scaffold/yantra/scripts/start-tor-browser $HOME/.local/bin/start-tor-browser
fi

if [ ! -L $HOME/.local/bin/autoconfigure-workstation ]; then
  rm -rf $HOME/.local/bin/autoconfigure-workstation 2> /dev/null
  ln -s $HOME/Developer/scaffold/yantra/scripts/autoconfigure-workstation $HOME/.local/bin/autoconfigure-workstation
fi

if [ ! -L $HOME/.local/bin/get-module-parameters ]; then
  rm -rf $HOME/.local/bin/get-module-parameters 2> /dev/null
  ln -s $HOME/Developer/scaffold/yantra/scripts/get-module-parameters $HOME/.local/bin/get-module-parameters
fi

if [ ! -L $HOME/.local/bin/get-fan-speed ]; then
  rm -rf $HOME/.local/bin/get-fan-speed 2> /dev/null
  ln -s $HOME/Developer/scaffold/yantra/scripts/get-fan-speed $HOME/.local/bin/get-fan-speed
fi

if [ ! -L $HOME/.local/bin/utf-demo ]; then
  rm -rf $HOME/.local/bin/utf-demo 2> /dev/null
  ln -s $HOME/Developer/scaffold/yantra/scripts/utf-demo $HOME/.local/bin/utf-demo
fi
