# .bashrc is best suited for commands that should run every time a new shell is launched.
# eg. aliases, custom prompts, etc.

alias cat='bat'
alias d='docker'
alias dup='docker-compose up'
alias ddown='docker-compose down'
alias g='git'
alias gpr='git pull --rebase'
alias gap='git add -p'
alias i='istioctl'
alias k="kubectl"
alias ls='exa'
alias myip='ipconfig getifaddr en0'
alias vim='nvim'

alias bp="code ~/.bash_rprofile"
alias bashrc="code ~/.bashrc"

# custom shell prompt
eval "$(starship init bash)"

# direnv environment switcher (https://direnv.net/)
eval "$(direnv hook bash)"


