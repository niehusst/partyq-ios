#!/bin/bash

set -e 

RED="\033[91m"
GREEN="\033[92m"
YELLOW="\033[93m"
BOLD="\033[1m"
RESET="\033[0m"

success () {
    echo -e "${GREEN}${BOLD}$1${RESET}"
}

error () {
    echo -e "${RED}ERROR: $1${RESET}"
}

info () {
    echo -e "${YELLOW}$1${RESET}"
}

fail () {
    echo
    info "The setup script failed!"
    exit 1
}

success "Setting up for development now..."

# make sure basic env stuff is setup
if ! [ -x "$(command -v brew)" ]
then
    error "homebrew isn't install in your PATH. Install homebrew then rerun this script"
    fail
fi

if ! [ -x "$(command -v mint)" ]
then
    info "Installing Mint..."
    brew install mint
else
    info "Mint already installed."
fi

# install packages

info "Installing CLI tools packages via Mint..."
mint bootstrap --mintfile Mintfile --link --overwrite n

info "Installing shared git hooks..."
bash ./scripts/git-hooks/.run-git-hook.sh .install-git-hooks.sh

success "Finished! You should now be able to build the app"
