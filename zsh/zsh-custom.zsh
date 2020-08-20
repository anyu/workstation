# You can put files here to add functionality separated per file, which
# will be ignored by git.
# Files on the custom/ directory will be automatically loaded by the init
# script, in alphabetical order.

# Place in ${ZSH_CUSTOM} directory

alias cat='bat'
alias d='docker'
alias dup='docker-compose up'
alias ddown='docker-compose down'
alias g='git'
alias gpr='git pull --rebase'
alias gap='git add -p'
alias k="kubectl"
alias myip='ipconfig getifaddr en0'
alias omz="code ~/.oh-my-zsh"
alias ls='exa'
alias vim='nvim"

alias zshrc="code ~/.zshrc"
alias zshenv="code ~/.zshenv"
alias zshcustom="code ${ZSH_CUSTOM}/zsh-custom.zsh"
alias starshipt="code ~/.config/starship.toml"

# custom shell prompt
eval "$(starship init zsh)"