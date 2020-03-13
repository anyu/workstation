#!/usr/bin/env bash

set -ex

WORKSPACE="$HOME/workspace"

function make-workspace() {
    mkdir "$HOME/workspace" 2> /dev/null || true
}

function homebrew() {
    set +e
    which brew > /dev/null
    local exit_code="$?"
    set -e

    if [[ "$exit_code" -eq 0 ]]; then
      return 0
    fi

    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
}

function brewfile() {
    brew bundle --file="$PWD/Brewfile"
}

function install_nvm() {
    wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
    nvm install --lts
}

function git-config() {
    git config --global url."git@github.com:".insteadOf https://github.com/
    git config --global user.name "An Yu"
    git config --global user.email "ayu3500@gmail.com"

    git config --global alias.ci commit
    git config --global alias.co checkout
    git config --global alias.st status
    git config --global alias.di diff
    git config --global alias.br branch
    git config --global alias.lol "log --graph --decorate --pretty=oneline --abbrev-commit --all --date=local"
    git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"

    npm install -g diff-so-fancy
    # diff-so-fancy colors
    git config --global color.diff-highlight.oldNormal    "red bold"
    git config --global color.diff-highlight.oldHighlight "red bold 52"
    git config --global color.diff-highlight.newNormal    "green bold"
    git config --global color.diff-highlight.newHighlight "green bold 22"

    git config --global color.diff.meta       "11"
    git config --global color.diff.frag       "magenta bold"
    git config --global color.diff.commit     "yellow bold"
    git config --global color.diff.old        "red bold"
    git config --global color.diff.new        "green bold"
    git config --global color.diff.whitespace "red reverse"
}

function setup-z-dir-jumper() {
    wget https://raw.githubusercontent.com/rupa/z/master/z.sh -O ~/z.sh
    chmod +x ~/z.sh
}

function setup-fzf() {
    ln -fs "$PWD/.fzf.bash" "$HOME/"
}

function bash-profile() {
    ln -fs "$PWD/.bash_profile" "$HOME/"
    source "$HOME/.bash_profile"
}

function main() {
    make-workspace
    homebrew
    brewfile
    install_nvm
    git-config
    setup-fzf
    setup-z-dir-jumper
    bash-profile
}

main
