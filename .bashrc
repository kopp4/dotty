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


function mp4towebp() {
    ffmpeg -i "$1" -vcodec libwebp -filter:v fps=fps=20 -lossless 0 -loop 0 -preset ${2:-default} -an -compression_level 6 -vsync 0 "${1/mp4/webp}"
}

