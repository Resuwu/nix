#!/usr/bin/env bash

swww-daemon &
swww img ~/nix/home-manager/modules/wm/wallpaper.jpg &

nm-applet --indicator &

waybar