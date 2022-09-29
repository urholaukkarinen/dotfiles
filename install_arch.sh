#!/bin/bash

pip install -q neovim

ln -is $PWD/nvim -t ~/.config
ln -is $PWD/i3 -t ~/.config 
ln -is $PWD/polybar -t ~/.config 
ln -is $PWD/rofi -t ~/.config 
ln -is $PWD/picom/picom.conf -t ~/.config

ln -is $PWD/.ideavimrc ~/.ideavimrc 
