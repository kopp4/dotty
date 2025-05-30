if [ -f ~/.config/shell/.aliases ]; then
    source ~/.config/shell/.aliases
fi

if [ -f ~/.config/shell/countdown ]; then
    source ~/.config/shell/countdown
fi

if [ -f ~/.config/shell/quitcd.bash_sh_zsh ]; then
    source ~/.config/shell/quitcd.bash_sh_zsh
fi

# if [ -f ~/.config/shell/proxy ]; then
#     source ~/.config/shell/proxy
# fi

HIST_STAMPS="yyyy/mm/dd"

# export MANPATH="/usr/local/man:$MANPATH"

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:/opt/nvim-linux-x86_64/bin:$PATH
# export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
# Path to your oh-my-zsh installation.
# export FZF_DEFAULT_COMMAND='rg --files --hidden --no-ignore-vcs -g "!{node_modules,.git,.idea,target,dist,out-tsc}"'
export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export VISUAL=nvim
export EDITOR="$VISUAL"
export BROWSER="firefox"

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

bindkey -s '^f' 'fzf --print0 | xargs -0 -o xdg-open \n'
# 'xdg-open "$(fzf)" \n'
bindkey -s "^[l" "ls\n"

eval "$(starship init zsh)"

export NNN_FIFO=/tmp/nnn.fifo
export NNN_FCOLORS="AAAAE631BBBBCCCCDDDD9999"
export NNN_PLUG='f:finder;o:fzopen;p:preview-tui;d:diffs;t:nmount;v:imgview;j:autojump;'
export NNN_OPTS="deH"
# export NNN_OPTS="H"

# Tmux on startup
if command -v tmux &>/dev/null && [ -z "$TMUX" ]; then
    tmux attach -t default || tmux new -s default
fi

