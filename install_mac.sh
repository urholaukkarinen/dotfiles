#!/bin/bash

if ! command -v brew  &> /dev/null
then
    echo "Homebrew could not be found. Aborting ..."
    exit
fi

if ! command -v pip  &> /dev/null
then
    echo "Pip could not be found. Aborting ..."
    exit
fi

if ! command -v pwsh  &> /dev/null
then
    echo "Powershell could not be found. Aborting ..."
    exit
fi

brew install --cask powershell
brew install neovim
brew install jandedobbeleer/oh-my-posh/oh-my-posh
brew install fzf

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

pip install neovim

pwsh install.ps1

ln -s $PWD/nvim ~/.config/nvim
ln -s $PWD/.ideavimrc ~/.ideavimrc 
mkdir -p $HOME/.config/powershell
ln -s $PWD/powershell/Microsoft.PowerShell_profile.ps1 $(pwsh -c "echo \$PROFILE")
ln -s $PWD/oh-my-posh ~/.config/oh-my-posh
