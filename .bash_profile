alias g='git'
alias gpr='git pull --rebase'
alias myip='ipconfig getifaddr en0'
alias vim='nvim'
alias vbp='vim ~/.bash_profile'
alias cat='bat'
alias ls='exa'

[ -f ~/.bashrc ] && source ~/.bashrc

# Display git branch in prompt
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[01;36m\]\W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# Autocomplete git branch names
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# z utility (https://github.com/rupa/z). update based on path to z.sh
. ~/z.sh

# fzf fuzzy finder utility (https://github.com/junegunn/fzf)
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# direnv environment switcher (https://direnv.net/)
eval "$(direnv hook bash)"
