# dotty
> ddddotfiles of mine
[archwiki](https://wiki.archlinux.org/title/Dotfiles#Tracking_dotfiles_directly_with_Git)



* Installation 
```shell
git clone --depth 1 --recurse-submodules "https://github.com/kopp4/dotty.git" ~/.dotfiles
cp -rfT ~/dotty ~/
cp -rf ~/.git ~/.dotfiles
rm -rf -- ~/dotty ~/.git
```
