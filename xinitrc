#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

xmodmap ~/.xmodmaprc

case $1 in

ratpoison)
  # For urxvt config file.
  xrdb -merge ~/.Xresources
  exec ratpoison
  ;;
fluxbox)
  exec startfluxbox
  ;;
xfce4)
  exec startxfce4
  ;;
kde)
  exec ck-launch-session startkde
  ;;
*)
  exec ratpoison
  ;;
esac
