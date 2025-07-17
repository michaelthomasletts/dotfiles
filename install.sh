#!/bin/bash

echo "Linking dotfiles to home directory..."

ln -sf "$PWD/.zshrc" "$HOME/.zshrc"
ln -sf "$PWD/.zprofile" "$HOME/.zprofile"
ln -sf "$PWD/.aliases" "$HOME/.aliases"
ln -sf "$PWD/.gitconfig" "$HOME/.gitconfig"

echo "Done. Now run: source ~/.zshrc"

open "$PWD/terminal-pro-profile.terminal"