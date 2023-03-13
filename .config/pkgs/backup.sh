#!/bin/bash

HOSTNAME=$(hostname)

if [ $HOSTNAME = "shar" ]; then
    pacman -Qqem >pkglist_aur_shar.txt
    pacman -Qqen >pkglist_shar.txt
elif [ $HOSTNAME = "Ham" ]; then
    pacman -Qqem >pkglist_aur_Ham.txt
    pacman -Qqen >pkglist_Ham.txt
else
    pacman -Qqem >pkglist_aur.txt
    pacman -Qqen >pkglist.txt
fi
