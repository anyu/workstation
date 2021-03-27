# .bashrc is best suited for commands that should run every time a new shell is launched.
# eg. aliases, custom prompts, etc.

alias cat='bat'
alias d='docker'
alias dup='docker-compose up'
alias ddown='docker-compose down'
alias e='env | grep'
alias g='git'
alias gap='git add -p'
alias gpr='git pull --rebase'
alias goland='/usr/local/bin/goland'
alias idea='/usr/local/bin/intellij'
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

shopt -s histappend # Always append
shopt -s cmdhist # Save multi-line commands in same history entry
HISTFILESIZE=1000000
HISTSIZE=1000000
HISTIGNORE='ls:history:cd:z' # Ignore uninteresting cmds
HISTTIMEFORMAT='%F %T '