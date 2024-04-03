#!/bin/bash

YAD_WIDTH=222  # 222 is minimum possible value
YAD_HEIGHT=160 # 160 is minimum possible value


case "$1" in
    --popup)
        eval "$(xdotool getmouselocation --shell)" 
        yad --calendar --fixed --close-on-unfocus --no-buttons \
            --width="$YAD_WIDTH" --height="$YAD_HEIGHT" \
            --posx="$($X)" --posy="$(Y + 25)" \
            --title="calendar" --borders=0 >/dev/null &
        ;;
    *)
        echo "$(date +"%a, %d %b")";;
esac
