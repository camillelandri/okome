#!/bin/bash

#sync folders 
rsync -ra ~/.config/fastfetch ~/okome/.config/fastfetch
rsync -ra ~/.config/gtk-3.0 ~/okome/.config/gtk-3.0
rsync -ra ~/.config/gtk-4.0 ~/okome/.config/gtk-4.0
rsync -ra ~/.config/hypr ~/okome/.config/hypr
rsync -ra ~/.config/kitty ~/okome/.config/kitty
rsync -ra ~/.config/nwg-look ~/okome/.config/nwg-look
rsync -ra ~/.config/rofi ~/okome/.config/rofi
rsync -ra ~/.config/waybar ~/okome/.config/waybar
rsync -ra ~/.config/wlogout ~/okome/.config/wlogout
rsync -ra ~/.config/wofi ~/okome/.config/wofi

rsync -ra /usr/share/sddm/themes ~/okome/usr/share/sddm/themes
rsync -ra /etc/sddm.conf ~/okome/etc/sddm.conf

git add --all &&  git commit -m 'backup $(date)'
