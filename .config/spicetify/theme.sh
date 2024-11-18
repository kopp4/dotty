#!/usr/bin/env bash

cd "$(dirname "$(spicetify -c)")/Themes/Dribbblish"
spicetify config current_theme Dribbblish color_scheme rosepine
spicetify config inject_css 1 replace_colors 1 overwrite_assets 1 inject_theme_js 1
spicetify apply
