#!/usr/bin/env zsh

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/bin/:/usr/sbin/:sbin:/usr/local/bin:$PATH

# Add VSCode terminal shortcut
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"

# Modify ls directory color to red (tied to iterm ansi color setting)
LS_COLORS=$LS_COLORS:'di=1;31'
export LS_COLORS

eval "$(direnv hook zsh)"

# Go
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export GO111MODULE="on"

# Vim
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Other
export KUBE_CONFIG_PATH=~/.kube/config