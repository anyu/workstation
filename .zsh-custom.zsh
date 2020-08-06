# You can put files here to add functionality separated per file, which
# will be ignored by git.
# Files on the custom/ directory will be automatically loaded by the init
# script, in alphabetical order.

# Place in ${ZSH_CUSTOM} directory

alias g='git'
alias gpr='git pull --rebase'
alias myip='ipconfig getifaddr en0'
alias vim='nvim'
alias cat='bat'
alias ls='exa'
alias omz="code ~/.oh-my-zsh"

alias zshrc="code ~/.zshrc"
alias zshenv="code ~/.zshenv"
alias zshcustom="code ${ZSH_CUSTOM}/zsh-custom.zsh"

# custom shell prompt
eval "$(starship init zsh)"