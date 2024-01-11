#!/bin/bash

sudo pacman -Sy neovim

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

rm -rf ~/.config/nvim

mkdir -p ~/.config/nvim

cp ./nvim ~/.config/nvim
