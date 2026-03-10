#!/usr/bin/env bash

# Dotfiles Symlink Script
# This script symlinks files from this directory to the home directory.

DOTFILES_DIR=$(pwd)
HOME_DIR=$HOME

# Function to create a symlink
# Usage: link_file <source_path_relative_to_dotfiles> <target_path_relative_to_home>
link_file() {
    local src="$DOTFILES_DIR/$1"
    local dst="$HOME_DIR/$2"

    # Create target directory if it doesn't exist
    mkdir -p "$(dirname "$dst")"

    if [ -L "$dst" ]; then
        echo "Updating symlink: $dst"
        ln -sf "$src" "$dst"
    elif [ -f "$dst" ] || [ -d "$dst" ]; then
        echo "Backing up existing file/dir: $dst to $dst.bak"
        mv "$dst" "$dst.bak"
        ln -s "$src" "$dst"
    else
        echo "Creating symlink: $dst"
        ln -s "$src" "$dst"
    fi
}

# Add your links here:
# link_file "zsh/.zshrc" ".zshrc"
# link_file "git/.gitconfig" ".gitconfig"

echo "Dotfiles installation complete!"
