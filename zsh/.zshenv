#!/usr/bin/env zsh

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/bin/:/usr/sbin/:sbin:/usr/local/bin:$PATH

# Add VSCode terminal shortcut
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"

# Modify ls directory color to red (tied to iterm ansi color setting)
LS_COLORS=$LS_COLORS:'di=1;31'
export LS_COLORS