#!/bin/bash

brew install --cask powershell
brew install neovim
brew install jandedobbeleer/oh-my-posh/oh-my-posh
brew install fzf

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

pip install neovim

pwsh install.ps1

ln -s $PWD/nvim ~/.config/nvim
ln -s $PWD/powershell/Microsoft.PowerShell_profile.ps1 $(pwsh -c "echo \$PROFILE")
