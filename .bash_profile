alias g='git'
alias myip='ipconfig getifaddr en0'

# Display git branch in prompt
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# Autocomplete git branch names
# Need to also download git-completion.bash script from git/completion repo
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# z utility (https://github.com/rupa/z). update based on path to z.sh
. ~/z/z.sh

# fzf fuzzy finder utility (https://github.com/junegunn/fzf)
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# direnv environment switcher (https://direnv.net/)
eval "$(direnv hook bash)"
