setxkbmap -layout no -variant dvorak -option caps:escape 
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# Add this to your .xinitrc or whatever file starts programs on startup.
# -R restores the last colorscheme that was in use.
wal -R -a 90

exec i3
