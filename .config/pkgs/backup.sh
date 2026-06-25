#!/bin/bash

HOSTNAME=$(hostname)

if [[ "$HOSTNAME" == *"shar"* ]]; then
    pacman -Qqem > ~/.config/pkgs/pkglist_aur_shar.txt
    pacman -Qqen > ~/.config/pkgs/pkglist_shar.txt
elif [[ "$HOSTNAME" == *"Ham"* ]]; then
    pacman -Qqem > ~/.config/pkgs/pkglist_aur_Ham.txt
    pacman -Qqen > ~/.config/pkgs/pkglist_Ham.txt
elif [[ "$HOSTNAME" == *"KoppaGG"* ]]; then
    mkdir -p ~/.config/pkgs
    brew bundle dump --file=~/.config/pkgs/Brewfile_koppaGG --force
else
    pacman -Qqem > ~/.config/pkgs/pkglist_aur.txt
    pacman -Qqen > ~/.config/pkgs/pkglist.txt
fi
