#!/bin/bash

#sync folder 
rsync -r ~/.config/fastfetch ~/okome/.config/fastfetch
rsync -r ~/.config/gtk-3.0 ~/okome/.config/gtk-3.0
rsync -r ~/.config/gtk-4.0 ~/okome/.config/gtk-4.0
rsync -r ~/.config/hypr ~/okome/.config/hypr
rsync -r ~/.config/kitty ~/okome/.config/kitty
rsync -r ~/.config/nwg-look ~/okome/.config/nwg-look
rsync -r ~/.config/rofi ~/okome/.config/rofi
rsync -r ~/.config/waybar ~/okome/.config/waybar
rsync -r ~/.config/wlogout ~/okome/.config/wlogout
rsync -r ~/.config/wofi ~/okome/.config/wofi

git add --all &&  git commit -m 'backup $(date)'
