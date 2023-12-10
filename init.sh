#!/bin/bash

echo "Kalinin Ilya's linux setup"

echo "Installing nvim(not ready)" 
bash ./nvim_install.sh

echo "Copying .cofig/nvim"
mkdir -p ~/.config/nvim && cp -r ./nvim ~/.config/nvim

echo "Installing Packer"
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim

echo "Setting up bahsrc"
echo "Bashrc aliases"
bash bashrc_cmd.sh
echo "Bahsrc prompt"
bash bashrc_prompt.sh

echo "Sourcing bashrc"
source ~/.bashrc
