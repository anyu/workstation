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
