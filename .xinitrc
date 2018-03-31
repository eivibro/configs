setxkbmap -layout no -variant dvorak -option caps:escape 
xgamma -gamma 1.1 
xgamma -bgamma 1.3
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# Add this to your .xinitrc or whatever file starts programs on startup.
# -R restores the last colorscheme that was in use.
wal -R -a 86

exec i3
