#!/bin/bash


# Find which theme is on and select the correct wallpaper
COLOR="$(dconf read /org/gnome/desktop/interface/color-scheme)"

if [[ "$COLOR" = *"prefer-light"* ]]
then
export WALLPAPER='~/Pictures/Wallpapers/Light.jpg'
export LOGO='~/Pictures/Wallpapers/lockLight.png'
else
export WALLPAPER='~/Pictures/Wallpapers/Dark.png'
export LOGO='~/Pictures/Wallpapers/lockDark.png'
fi

# Generate a compliment
mapfile hebouille < ~/.config/hypr/scripts/hebouille.txt
size=${#hebouille[@]}
index=$(($RANDOM % $size))
export WORDOFTHEDAY=${hebouille[$index]}

pidof hyprlock || hyprlock