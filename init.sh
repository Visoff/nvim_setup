#!/bin/bash

echo "Kalinin Ilya's linux setup"

echo "Installing nvim(not ready)" 

echo "Copying .cofig/nvim"
mkdir -p ~/.config/nvim && cp -r nvim ~/.config/nvim

echo "Installing Packer"
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim

echo "Copying new bahsrc"
cp .bashrc ~/.bashrc
