#!/usr/bin/env bash

# Set the resolution
xrandr --auto
xrandr --output eDP1 --primary --mode 1680x1050 --pos 0x0 --rotate normal

# Set keymap
setxkbmap -layout us,us,se -variant dvorak,, -option 'grp:shifts_toggle,ctrl:nocaps'

# Set keyrate
xset r rate 200 60

# Set background
sh $HOME/.fehbg

# Stalonetray
if [ -z "$(pgrep stalonetray)" ] ; then
    stalonetray &
fi

# PulseAudio Systray
if [ -z "$(pgrep pasystray)" ] ; then
    pasystray &
fi

# Network manager Applet
if [ -z "$(pgrep nm-applet)" ] ; then
    nm-applet --sm-disable &
fi

# Xfce4 Volume Daemon
if [ -z "$(pgrep xfce4-volumed)" ] ; then
    xfce4-volumed &
fi

# Xfce4 Power manager
if [ -z "$(pgrep xfce4-power-man)" ] ; then
    xfce4-power-manager &
fi

# Xmobar
if [ -z "$(pgrep xmobar)" ] ; then
    xmobar &
fi

# Compton
if [ -z "$(pgrep compton)" ] ; then
    compton &
fi

# Xcape
if [ -z "$(pgrep xcape)" ] ; then
    xcape &
fi

# Kill notify osd if running
if [ "$(pgrep notify-osd)" ] ; then
    killall notify-osd
fi

# Run Dunst instead
if [ -z "$(pgrep dunst)" ] ; then
    dunst &
fi

# Run Xscreensaver
if [ -z "$(pgrep xscreensaver)" ] ; then
    xscreensaver -no-splash &
fi
