export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# EXPORTS
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export FZF_DEFAULT_COMMAND='rg --files --hidden --no-ignore-vcs -g "!{node_modules,.git,.idea,target,dist,out-tsc}"'
export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export VISUAL=nvim
export EDITOR="$VISUAL"
export NPM_PACKAGES="${HOME}/.npm-packages"
export TERM=xterm-256color
export GRAALVM_HOME=$HOME/Tools/graalvm/graalvm-ce-java17-21.3.0

# This might be **critical** for out of terminal proxy
set proxy
export http_proxy=http://127.0.0.1:7890 
export https_proxy=http://127.0.0.1:7890 

# export ZSH=$HOME/.oh-my-zsh
# source $ZSH/oh-my-zsh.sh
# source ~/.env


function mp4towebp() {
    ffmpeg -i "$1" -vcodec libwebp -filter:v fps=fps=20 -lossless 0 -loop 0 -preset ${2:-default} -an -compression_level 6 -vsync 0 "${1/mp4/webp}"
}


# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# source ~/.npm_completion

# The next line updates PATH for the Google Cloud SDK.
# if [ -f '~/google-cloud-sdk/path.bash.inc' ]; then . '~/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
#
# if [ -f '~/google-cloud-sdk/completion.bash.inc' ]; then . '~/google-cloud-sdk/completion.bash.inc'; fi
# . "$HOME/.cargo/env"
export LUA_PATH="$HOME/.config/lua/5.1/?.lua"

