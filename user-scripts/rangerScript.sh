#!bin/bash
color=$(xrdb -query | grep '*.color0' | awk '{print $NF}')
trans=$(more /home/broeiv/.xinitrc | grep 'wal -R' | awk '{print $NF}')
combi='['$trans']'$color
urxvt -bg $combi -e ranger 
