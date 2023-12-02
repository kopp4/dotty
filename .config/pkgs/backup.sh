#!/bin/bash

HOSTNAME=$(hostname)

if [ $HOSTNAME = "shar" ]; then
    pacman -Qqem >~/.config/pkgs/pkglist_aur_shar.txt
    pacman -Qqen >~/.config/pkgs/pkglist_shar.txt
elif [ $HOSTNAME = "Ham" ]; then
    pacman -Qqem >~/.config/pkgs/pkglist_aur_Ham.txt
    pacman -Qqen >~/.config/pkgs/pkglist_Ham.txt
else
    pacman -Qqem >~/.config/pkgs/pkglist_aur.txt
    pacman -Qqen >~/.config/pkgs/pkglist.txt
fi
