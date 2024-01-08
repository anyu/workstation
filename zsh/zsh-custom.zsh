# You can put files here to add functionality separated per file, which
# will be ignored by git.
# Files on the custom/ directory will be automatically loaded by the init
# script, in alphabetical order.

# Place in ${ZSH_CUSTOM} directory

alias cat='bat'
alias da='direnv allow'
alias d='docker'
alias dup='docker-compose up'
alias ddown='docker-compose down'
alias c='code' # alias to vscode alias
alias e='env | grep'
alias g='git'
alias gap='git add -p'
alias gan='git add -AN .'
alias gpr='git pull --rebase'
alias grv='git remote -v'
alias god='/usr/local/bin/goland'
alias idea='/usr/local/bin/intellij'
alias i='istioctl'
alias k="kubectl"
alias ls='exa'
alias myip='ipconfig getifaddr en0'
alias o='open'
alias omz="code ~/.oh-my-zsh"
alias python="python3"
alias tf='terraform'
alias tree='broot'
alias vim='nvim'

alias zshrc="code ~/.zshrc"
alias zshenv="code ~/.zshenv"
alias zshcustom="code ${ZSH_CUSTOM}/zsh-custom.zsh"
alias starshipt="code ~/.config/starship.toml"

# custom shell prompt
eval "$(starship init zsh)"