alias g='git'

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
