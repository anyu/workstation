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
setopt HIST_IGNORE_ALL_DUPS
setopt INC_APPEND_HISTORY # add to history immediately instead of on shell exit

# add NVM to path
 export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion