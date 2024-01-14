#!/bin/bash
 
# parcellite &
# flameshot &
sxhkd -c $HOME/.config/berry/sxhkdrc &
exec berry
wal -R
