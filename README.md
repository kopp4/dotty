# dotty
> ddddotfiles of mine
[archwiki](https://wiki.archlinux.org/title/Dotfiles#Tracking_dotfiles_directly_with_Git)


# spicetify
sudo chmod a+wr /opt/spotify
sudo chmod a+wr /opt/spotify/Apps -R

* Installation 
```shell
# Homebrew install
echo "Installing Brew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew analytics off

## Taps
echo "Tapping Brew..."
brew tap FelixKratz/formulae
brew tap koekeishiya/formulae

git clone --depth 1 --recurse-submodules -b mac "https://github.com/kopp4/dotty.git" ~/dotty
cp -rf ~/dotty/ ~/
cp -rf ~/.git ~/.dotfiles
rm -rf -- ~/dotty ~/.git
source ~/.zshrc
dot config status.showUntrackedFiles no
brew bundle --file ~/.config/pkgs/Brewfile
# spicetify
git clone --depth=1 https://github.com/spicetify/spicetify-themes.git
cd spicetify-themes
cp -r * ~/.config/spicetify/Themes
cd "$(dirname "$(spicetify -c)")/Themes/Dribbblish"
spicetify config current_theme Dribbblish color_scheme base
spicetify config inject_css 1 replace_colors 1 overwrite_assets 1 inject_theme_js 1
spicetify apply

# nnn plugins
sh -c "$(curl -Ls https://raw.githubusercontent.com/jarun/nnn/master/plugins/getplugs)"
```

# TODOs
- [ ] Manual changes of nvim and so many DO NOT forget plz
- [ ] move nvim away from /usr/local/share/lua/5.1
- [ ] can I back up my systemctl too ?
- [ ] man gittutorial
- [ ] ssh gittutorial
- [ ] I don't want to make a db of inshi



* Fcitx5 input method
```
# /etc/profile 
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
```
