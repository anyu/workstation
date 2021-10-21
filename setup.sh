#!/usr/bin/env bash

set -e

main() {
    make_workspace 
    homebrew
    brewfile || true
    git_config

    install_configure_ohmyzsh || true
    configure_starship || true
    install_fzf_bindings || true
    configure_vscode || true
    install_gvm || true
    rustup

    # Reload
    source ~/.zshrc
}

make_workspace() {
    echo -e "Making workspace...\n"
    mkdir "${HOME}/workspace" 2> /dev/null || true
}

homebrew() {
    echo -e "Installing Homebrew...\n"
    set +e
    which brew > /dev/null
    local exit_code="$?"
    set -e

    if [[ "$exit_code" -eq 0 ]]; then
    return 0
    fi

    sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
}

brewfile() {
    echo -e "Reading in Brewfile...\n"
    brew bundle --file="${PWD}/Brewfile"
}

git_config() {
    echo -e "Configuring git...\n"
    git config --global url."git@github.com:".insteadOf https://github.com/
    git config --global user.name "An Yu"
    # git config --global user.email <email>

    git config --global alias.ci commit
    git config --global alias.ciam "commit --amend"
    git config --global alias.co checkout
    git config --global alias.pom "push origin main"
    git config --global alias.st status
    git config --global alias.dc "diff --cached"
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

install_configure_ohmyzsh() {
    echo -e "Installing ohmyzsh and zsh configs...\n"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
    
    if [[ -z "${ZSH_CUSTOM}" ]]; then
        export ZSH_CUSTOM="${HOME}/.oh-my-zsh/custom"
    fi

    pushd "${ZSH_CUSTOM}"/plugins
        git clone https://github.com/agkozak/zsh-z
        git clone https://github.com/zsh-users/zsh-autosuggestions
    popd

    cp zsh/.zshrc ~/
    cp zsh/.zshenv ~/
    cp zsh/zsh-custom.zsh "${ZSH_CUSTOM}"/
}

install_fzf_bindings() {
    echo -e "Installing fzf fuzzy search bindings...\n" 

    # Answer yes to all interactive prompts
    yes | $(brew --prefix)/opt/fzf/install
}

configure_starship() {
    echo -e "Configuring starship...\n"
    cp starship.toml ~/.config/
}

install_gvm() {
    echo -e "Installing gvm...\n"
    bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)

    source "${HOME}/.gvm/scripts/gvm"
}

rustup() {
    echo -e "Installing Rust compiler (rustc) and Rust package manager (cargo)...\n"

    rustup-init
}

configure_vscode() {
    echo "Configuring VS Code...\n"
    VSCODE_USER_SETTINGS="${HOME}/Library/Application Support/Code/User/"
    cp vscode/settings.json "${VSCODE_USER_SETTINGS}"

    code --install-extension golang.Go
    code --install-extension 2gua.rainbow-brackets
    code --install-extension christian-kohler.path-intellisense
    code --install-extension vscode-icons-team.vscode-icons
    code --install-extension arcticicestudio.nord-visual-studio-code
    code --install-extension sidthesloth.html5-boilerplate
    code --install-extension abusaidm.html-snippets
    code --install-extension xabikos.JavaScriptSnippets
}

main "${@}"