export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=""

plugins=(
  fzf
  zsh-z
  zsh-autosuggestions
)

ZSH_DISABLE_COMPFIX=true # ignore dir perm errors
source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Increase terminal history size
export HISTFILESIZE=1000000000
export HISTSIZE=1000000000
export HISTCONTROL=ignoreboth
setopt INC_APPEND_HISTORY # add to history immediately instead of on shell exit

# add NVM to path
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# init pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"