#!/bin/bash

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir -p ~/.config/nvim/
mkdir -p ~/.config/i3/
mkdir -p ~/.config/i3blocks/

cp init.vim ~/.config/nvim/init.vim
cp i3/* ~/.config/i3/*
cp i3blocks/* ~/.config/i3blocks/*
cp .zshrc ~/.zshrc
