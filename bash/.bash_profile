# .bash_profile is best suited to run commands that should run only once, 
# such as customizing the $PATH environment variable.

[ -f ~/.bashrc ] && source ~/.bashrc

# z utility (https://github.com/rupa/z). update based on path to z.sh
. ~/z.sh

# fzf fuzzy finder utility (https://github.com/junegunn/fzf)
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
