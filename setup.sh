#!/bin/bash

if [ -z "$GITHUB_USER" ]; then
    GITHUB_USER="edmundkwj"  # Replace with your GitHub username
fi

COLOR_RED='\033[0;31m'
COLOR_YELLOW='\033[0;33m'
COLOR_GREEN='\033[0;32m'
COLOR_NC='\033[0m'

echo "========================"
echo " Dev environment setup"
echo -e " ${COLOR_GREEN}$GITHUB_USER${COLOR_NC}'s dotfiles"
echo "========================"
echo "Target machine: $(uname -a)"
echo ""
echo "This script will:"
echo "  1. Install Homebrew"
echo "  2. Install Chezmoi"
echo "  3. Apply dotfiles from $GITHUB_USER"
echo ""
echo -e "${COLOR_YELLOW}WARNING${COLOR_NC}: This will overwrite your existing dotfiles. Backup before proceeding!"
echo ""

# Prompt for confirmation
while true; do
    read -p "Press return to continue setup, other keys to exit: " -n 1 -s yn
    if [ -z "$yn" ]; then
        echo ""
        break
    else
        echo "Exiting..."
        exit 0
    fi
done

# Install Homebrew
if [ ! "$(command -v brew)" ]; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew already installed."
fi

# Install Chezmoi
if [ ! "$(command -v chezmoi)" ]; then
    echo "Installing Chezmoi..."
    brew install chezmoi
else
    echo "Chezmoi already installed."
fi

# Execute Chezmoi
echo "Initializing Chezmoi and applying dotfiles..."
chezmoi init https://github.com/$GITHUB_USERNAME/dotfiles.git

# Ouput Brewfile
echo "Installing additional packages from Brewfile..."
brew bundle --file=$HOME/.config/brewfile

echo "Dev environment setup complete."
