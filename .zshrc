# source ~/.local/share/zsh-snap/znap.zsh
# source ~/.local/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh
# znap source zsh-users/zsh-autosuggestions
# source ~/.local/share/-users/zsh-syntax-highlighting

if [ -f ~/.config/shell/.aliases ]; then
    source ~/.config/shell/.aliases
fi

if [ -f ~/.secrets ]; then
    source ~/.secrets
fi

if [ -f ~/.config/shell/countdown ]; then
    source ~/.config/shell/countdown
fi

HIST_STAMPS="yyyy/mm/dd"

# export MANPATH="/usr/local/man:$MANPATH"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# For a full list of active aliases, run `alias`.

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
# export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
# Path to your oh-my-zsh installation.
# export FZF_DEFAULT_COMMAND='rg --files --hidden --no-ignore-vcs -g "!{node_modules,.git,.idea,target,dist,out-tsc}"'
export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export VISUAL=nvim
export EDITOR="$VISUAL"
export BROWSER="firefox"

# set proxy
set proxy
export http_proxy=http://127.0.0.1:7890
export https_proxy=http://127.0.0.1:7890
export all_proxy=socks5://127.0.0.1:7891

export PATH=$PATH:~/.spicetify
export PATH=$PATH:~/.local/bin
export PATH=$PATH:/usr/bin/

# tmux
export TMUX_CONFIG=~/.config/tmux/.tmux.conf

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# [[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && source ~/.autojump/etc/profile.d/autojump.sh
autoload -U compinit && compinit -u

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# Its pokemon why the hell not?
pokemon-colorscripts -r
# calendar
khal calendar
# TTY
if [ $(tput colors) != "256" ]; then
    exec bash -l
fi

# HISTCONTROL=ignoreboth
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
HISTFILESIZE=10000
setopt interactivecomments
setopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
setopt SHARE_HISTORY
setopt HIST_BEEP

setopt auto_cd
# https://stackoverflow.com/questions/26616003/shopt-command-not-found-in-bashrc-after-shell-updation
# shopt -s histappend
# shopt -s checkwinsize

# The next line updates PATH for the Google Cloud SDK.
# if [ -f '/home/koppa/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/home/koppa/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
# if [ -f '/home/koppa/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/koppa/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# bindkey -s '\e\e' '\C-asudo \C-e'
bindkey -s '\e\e' '^[Isudo ^[A'
bindkey -s '^f' 'fzf --print0 | xargs -0 -o xdg-open \n'
# 'xdg-open "$(fzf)" \n'
bindkey -s "^[l" "ls\n"

eval "$(starship init zsh)"

# nnn
if [ -f /usr/share/nnn/quitcd/quitcd.bash_zsh ]; then
    source /usr/share/nnn/quitcd/quitcd.bash_zsh
fi

export NNN_FIFO=/tmp/nnn.fifo
export NNN_FCOLORS="AAAAE631BBBBCCCCDDDD9999"
export NNN_PLUG='f:finder;o:fzopen;p:preview-tui;d:diffs;t:nmount;v:imgview;j:autojump;'
export NNN_OPTS="deH"
# export NNN_OPTS="H"

# Tmux on startup
# if command -v tmux &>/dev/null && [ -z "$TMUX" ]; then
#     tmux attach -t default || tmux new -s default
# fi

# I'll have lua_path here bcz all I'm using lua is neovim conf :p
# export LUA_PATH="$HOME/.config/lua/5.1/?.lua"
# export RUSTUP_HOME="/var/cache/rustup"
# export CARGO_HOME="/var/cache/rustup"
echo "Cleanse Thy Earthly Vessel"
echo "Prove my that essay is the best way to get authentic and bleeding-edge technology or knowledge"
echo "チョコパンわしの大好物"
