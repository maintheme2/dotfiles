#!/bin/bash

USER_DIR=/home/maintheme
DOTS_DIR=$USER_DIR/dotfiles

foo () {
  rm -rf $USER_DIR/.config/$1
  ln -s $DOTS_DIR/configs/$1 $USER_DIR/.config
}

foo "rofi"
foo "kitty"
foo "fish"
foo "helix"
foo "berry"
foo "neofetch"
foo "sddm"

if [ -d $USER_DIR/.config/Code/User/ ]; then
  ln -sf $DOTS_DIR/configs/vscode/settings.json $USER_DIR/.config/Code/User/
fi

ln -sf $DOTS_DIR/x11/user-dirs.dirs $USER_DIR/.config/
ln -sf $DOTS_DIR/x11/.xinitrc $USER_DIR/
ln -sf $DOTS_DIR/x11/libinput-gestures.conf $USER_DIR/.config

cp -f $DOTS_DIR/x11/30-touchpad.conf /etc/X11/xorg.conf.d/
cp -f $DOTS_DIR/x11/00-keyboard.conf /etc/X11/xorg.conf.d/
cp -f $DOTS_DIR/x11/vconsole.conf /etc/
