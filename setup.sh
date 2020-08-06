#!/bin/sh

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

    sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
}

function brewfile() {
    brew bundle --file="$PWD/Brewfile"
}

function install_setup_ohmyzsh() {
    sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
    pushd ${ZSH_CUSTOM}/plugins
    git clone https://github.com/zsh-users/zsh-autosuggestions
    popd

    cp zsh/.zshrc ~/
    cp zsh/.zshenv ~/
    cp zsh/zsh-custom.zsh ${ZSH_CUSTOM}/
}

function install_fzf_bindings() {
    $(brew --prefix)/opt/fzf/install
}

function configure_starship() {
    cp starship.toml ~/.config/
}

function install_nvm() {
    sh -c "$(wget https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh -O -)"
    nvm install --lts
}

function install_1pass() {
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null ; brew install caskroom/cask/brew-cask 2> /dev/null
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

function main() {
    make-workspace
    homebrew
    brewfile
    install_setup_ohmyzsh
    configure_starship
    install_fzf_bindings
    install_nvm
    install_1pass
    git-config
}

main
