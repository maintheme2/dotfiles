if status is-interactive
	alias ls "lsd -1"
	alias hx "helix"
	alias lt "ls --tree"
	alias icat "kitty +kitten icat"
	alias bat "cat /sys/class/power_supply/BAT0/capacity"
	set fish_greeting ""
end

cat ~/.cache/wal/sequences &
# source ~/.cache/wal/colors.fish
neofetch
