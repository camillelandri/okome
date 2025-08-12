#!/bin/bash

DARKTHEME='Gruvbox-Retro'
LIGHTTHEME='Sakura-Material'

# Find which theme is on and toggle the other one
export THEME="$(dconf read /org/gnome/desktop/interface/gtk-theme)"
export COLOR="$(dconf read /org/gnome/desktop/interface/color-scheme)"

echo "Switching theme from $THEME, $COLOR"

if [[ "$THEME" = *"$DARKTHEME"* ]]
then
gsettings set org.gnome.desktop.interface gtk-theme "$LIGHTTHEME"
gsettings set org.gnome.desktop.interface color-scheme "prefer-light"
swww img ~/Pictures/Wallpapers/Light.jpg --transition-type=fade --transition-fps=60 --transition-duration 1
else
gsettings set org.gnome.desktop.interface gtk-theme "$DARKTHEME"
gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"
swww img ~/Pictures/Wallpapers/Dark.png --transition-type=fade --transition-fps=60 --transition-duration 1
fi

export THEME="$(dconf read /org/gnome/desktop/interface/gtk-theme)"
export COLOR="$(dconf read /org/gnome/desktop/interface/color-scheme)"

echo "to $THEME, $COLOR..."